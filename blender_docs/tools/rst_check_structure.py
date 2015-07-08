#!/usr/bin/env python3

import os
import sys
import re


# if you want to operate on a subdir, eg: "render"
SUBDIR = ""
CURRENT_DIR = os.path.abspath(os.path.dirname(__file__))
RST_DIR = os.path.normpath(os.path.join(CURRENT_DIR, "..", "manual", SUBDIR))


def rst_files(path):
    for dirpath, dirnames, filenames in os.walk(path):
        if dirpath.startswith("."):
            continue

        for filename in filenames:
            ext = os.path.splitext(filename)[1]
            if ext.lower() == ".rst":
                yield os.path.join(dirpath, filename)


def main():
    for operation, operation_post in operations:
        for fn in rst_files(RST_DIR):
            with open(fn, "r", encoding="utf-8") as f:
                data_src = f.read()
                data_dst = operation(fn, data_src)

            if data_dst is None or (data_src == data_dst):
                continue

            with open(fn, "w", encoding="utf-8") as f:
                data_src = f.write(data_dst)

        if operation_post is not None:
            operation_post()


def warn_broken_urls(fn, data_src):
    """
    Complain about broken URLs
    """
    import requests

    lines = data_src.split("\n")
    okcodes = [200, 301, 302]  # OK and redirects

    for i, l in enumerate(lines):
        match = re.search(r"https?\://[A-Za-z0-9-\._~\:/\?#\[\]@!\$\&'\(\)\*\+,;=%]*",l)
        if match:
            url = match.string[match.start():match.end()]
            try:
                resp = requests.head(url)
                if resp.status_code not in okcodes:
                    print("%s:%d: broken url '%s' (code %d)" % (fn, i + 1, url, resp.status_code))
                else: print("'%s' OK" % url)  # COMMENT OUT THIS LINE TO SEE BROKEN LINKS ONLY!!
            except KeyboardInterrupt:
                raise
            except:
                print("%s:%d: broken url '%s' (undefined error)" % (fn, i + 1, url))

    return None


def warn_images(fn, data_src):
    """
    Complain about unused and missing images
    """
    img_refs = warn_images.img_refs

    lines = data_src.split("\n")

    for i, l in enumerate(lines):
        # .. |SomeID| image:: /images/some_image.png
        # .. image:: /images/some_image.png
        # .. figure:: /images/some_image.png
        match = re.search(
                r"\.\.\s+"
                 # |SomeID|  (optional)
                 "(|\|[a-zA-Z0-9\-_]+\|\s+)"
                 # figure/image::
                 "(figure|image)\:\:"
                 # image path
                 "\s+/images/(.*\.(png|gif|jpg|svg))",l)
        if match:
            img_refs.append(match.string[match.start(3) : match.end(3)])

    return None
# useful for image warnings, it holds the name of all referenced images
warn_images.img_refs = []



def warn_images_post():
    """
    Outputs the results of unused/missing images
    """
    imgpath = os.path.normpath(os.path.join(os.path.abspath(os.path.dirname(__file__)), "..", "manual", "images"))
    img_files_set = set([f for f in os.listdir(imgpath)])
    img_refs_set = set(warn_images.img_refs)

    print("\nLIST OF UNUSED IMAGES:")
    print("======================")
    for fn in sorted(img_files_set - img_refs_set):
        print("svn rm --force 'manual/images/%s'" % fn)

    print("\nLIST OF MISSING IMAGES:")
    print("=======================")
    for fn in sorted(img_refs_set - img_files_set):
        print(fn)


# define the operations to call
operations = []
operations_checks = {
    "--url": (warn_broken_urls, None),
    "--image": (warn_images, warn_images_post),
    }


# generic arg parsing
def print_help():
    print("Blender manual checks\n"
            "    Usage: %s { %s }\n" %
            (os.path.basename(__file__),
            " ".join(arg for arg in sorted(operations_checks.keys()))))


for arg in sys.argv[1:]:
    operation = operations_checks.get(arg)
    if operation is None:
        print_help()
        print("Unknown argument %r" % arg)
        sys.exit(1)

    operations.append(operation)


if __name__ == "__main__":
    if operations:
        main()
    else:
        print_help()
        print("No arguments passed")
