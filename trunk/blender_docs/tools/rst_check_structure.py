#!/usr/bin/env python3

import os
import sys
import re


# if you want to operate on a subdir, eg: "render"
SUBDIR = ""
CURRENT_DIR = os.path.abspath(os.path.dirname(__file__))
RST_DIR = os.path.normpath(os.path.join(CURRENT_DIR, "..", "manual", SUBDIR))

img_refs = []  # useful for image warnings, it holds the name of all referenced images


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
    lines = data_src.split("\n")

    for i, l in enumerate(lines):
        match = re.search(r"\.\. +figure\:\: +/images/(.*\.(png|gif|jpg))",l)
        if match:
            img_refs.append(match.string[match.start(1) : match.end(1)])

    return None


def warn_images_post():
    """
    Outputs the results of unused/missing images
    """
    imgpath = os.path.normpath(os.path.join(os.path.abspath(os.path.dirname(__file__)), "..", "manual", "images"))
    img_files_set = set([f for f in os.listdir(imgpath)])
    img_refs_set = set(img_refs)

    print("\nLIST OF UNUSED IMAGES:")
    print("======================")
    l1 = [fn for fn in img_files_set - img_refs_set]
    l1.sort()
    for fn in l1:
        print(fn)

    print("\nLIST OF MISSING IMAGES:")
    print("=======================")
    l2 = [fn for fn in img_refs_set - img_files_set]
    l2.sort()
    for fn in l2:
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

