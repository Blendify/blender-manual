#!/usr/bin/env python3
# Apache License, Version 2.0
# <pep8 compliant>

import os
import sys
import re


# if you want to operate on a subdir, eg: "render"
SUBDIR = ""
CURRENT_DIR = os.path.abspath(os.path.dirname(__file__))
ROOT_DIR = os.path.normpath(os.path.join(CURRENT_DIR, ".."))
RST_DIR = os.path.join(ROOT_DIR, "manual", SUBDIR)
LOCALE_DIR = os.path.join(ROOT_DIR, "locale")

# -----------------------------------------------------------------------------
# Common Utilities


def files_recursive(path, ext_test):
    for dirpath, dirnames, filenames in os.walk(path):
        if dirpath.startswith("."):
            continue

        for filename in filenames:
            ext = os.path.splitext(filename)[1]
            if ext.lower().endswith(ext_test):
                yield os.path.join(dirpath, filename)


def print_headline(title, to_upper, underline_char="="):
    if to_upper:
        title = title.upper()
    if not title.endswith(':'):
        title += ':'

    longest_line = 0
    for line in title.splitlines(keepends=True):
        if len(line) > longest_line:
            longest_line = len(line)

    underline = ""
    for i in range(longest_line):
        underline += underline_char

    print('\n' + title)
    print(underline)

    return None


def main():
    compile_regex()

    for operation, operation_post in operations:

        # single argument operations
        if operation_post is ...:
            operation()
            continue

        for fn in files_recursive(RST_DIR, ext_test=".rst"):
            with open(fn, "r", encoding="utf-8") as f:
                data_src = f.read()
                data_dst = operation(fn, data_src)

            if data_dst is None or (data_src == data_dst):
                continue

            with open(fn, "w", encoding="utf-8") as f:
                data_src = f.write(data_dst)

        if operation_post is not None:
            operation_post()


def compile_regex():

    global IMG_RE

    # .. |SomeID| image:: /images/some_image.png
    # .. image:: /images/some_image.png
    # .. figure:: /images/some_image.png
    #
    # note: no checks for commented text currently.
    # groups: (1) ID, (2) image name, (3) dot + img. extension
    IMG_RE = re.compile(
        """
        \.\.\ +
        (?:\|([a-zA-Z0-9\-_]+)\|\ +)?  # |SomeID|  (optional)
        (?:figure|image)\:\:\ +   # figure/image::
        /images/(.*?)(\.(?:png|gif|jpg|svg)) # image path
        """,
        re.VERBOSE,
    )
    return None


# -----------------------------------------------------------------------------
# Utility "--images"

def warn_images(fn, data_src):
    """
    Complain about unused and missing images
    """
    img_refs = warn_images.img_refs

    for match in re.finditer(IMG_RE, data_src):
        img_refs.append(match.group(2) + match.group(3))

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

    print_headline("List of unused images", True)
    for fn in sorted(img_files_set - img_refs_set):
        print(" svn rm --force manual/images/%s" % fn)

    print_headline("List of missing images", True)
    for fn in sorted(img_refs_set - img_files_set):
        print(fn)

    if len(img_files_set) != len(set([fn.lower() for fn in img_files_set])):
        img_files_set_lower = set()
        print_headline("List of case-colliding images", True)
        for fn in sort(img_files_set):
            fn_lower = fn.lower()
            if fn_lower in img_files_set_lower:
                print(fn)
            img_files_set_lower.add(fn_lower)


# -----------------------------------------------------------------------------
# Utility "--image-names"

def check_image_names(fn, data_src):
    """
    Complain if the image name doesn't matches the file name
    """

    def compare_image_name(file_derive, record):
        """
        image name: image path[file path + file name] + image ID
        """
        # exclude icon library from rule
        if record["image_name"].startswith("icons_"):
            check_image_names.listone["icon"].append(record)
        else:
            path_match = re.match(file_derive, record["image_name"])

            if path_match:
                if file_derive == record["image_name"]:
                    check_image_names.listone["no_id"].append(record)
                else:
                    imgid = re.sub(file_derive + '_', "", record["image_name"])
                    contains_underscore = re.search(r"_", imgid)

                    if contains_underscore:
                        check_image_names.listone["path_us"].append(record)
                    else:
                        check_image_names.listone["ok"].append(record)
            else:
                check_image_names.listone["path"].append(record)
        return None

    def derive_image_name(locpath):
        # derive image path from file path and name
        file_derive = re.sub(r"_", "-", locpath)
        file_derive = re.sub(r"/", "_", file_derive)
        file_derive = re.sub(r"\.rst", "", file_derive)
        return file_derive

    fn = fn.replace("\\", "/")
    locpath = fn[len(RST_DIR):]
    for lineno, line in enumerate(data_src.splitlines()):
        linematch = re.search(IMG_RE, line)
        if linematch:
            record = dict()
            record["filepath"] = locpath
            record["lineno"] = lineno
            record["image_name"] = linematch.group(2)
            record["image_ext"] = linematch.group(3).lower()
            file_derive = derive_image_name(locpath)
            record["file_derive"] = file_derive
            compare_image_name(file_derive, record)

    return None


# primary list to sort the matches in while looping over the files
check_image_names.listone = {
    "icon": [],
    "ok": [],
    "no_id": [],
    "path_us": [],
    "path": [],
}


def check_image_names_post():
    """
    Processes and then output the results of the image name check
    """

    listtwo = {
        "icon": [],
        "ok": [],
        "no_id": [],
        "path_us": [],
        "path": [],
        "multi_ok": [],
        "multi_no": [],
        "multi_path": [],
    }

    def check_multi_used():
        """
        When an image is used on multiple pages checks if the image name matches the file path and name once.
        """
        found = False
        multi = False
        for keyprime, listprime in check_image_names.listone.items():
            for ent in listprime:
                if keyprime == "icon" or keyprime == "ok":
                    listtwo[keyprime].append(ent)
                else:
                    # recursively loop over the list
                    for keyrec, listrec in check_image_names.listone.items():
                        for rec in listrec:
                            if (
                                    ent["image_ext"] == rec["image_ext"] and
                                    ent["image_name"] == rec["image_name"] and
                                    ent["filepath"] != rec["filepath"]
                            ):
                                if keyrec == "ok":
                                    listtwo["multi_ok"].append(ent)
                                    found = True
                                    break
                                if keyprime == "no_id":
                                    listtwo["multi_no"].append(ent)
                                    found = True
                                    break
                                else:
                                    multi = True
                                    # positive could be past this point continue search
                        if found:
                            break
                    if not found:
                        if multi:
                            listtwo["multi_path"].append(ent)
                        else:
                            listtwo[keyprime].append(ent)
                multi = False
                found = False

    check_multi_used()

    messages = {
        "no_id": "without an ID",
        "path_us": "with a wrong path or\nname contains an underscore",
        "path": "with a wrong path",
        "multi_no": "without an ID and\nused on multible pages",
        "multi_path": "with a wrong path and\nused on multible pages"
    }

    for id in messages:
        if len(listtwo[id]) != 0:
            print_headline("List of images " + messages[id], True)
            for ent in listtwo[id]:
                print(ent["filepath"] + ":" + str(ent["lineno"] + 1) + " " + ent["image_name"] + ent["image_ext"])
                print("   Should be: " + ent["file_derive"])
    return None


# -----------------------------------------------------------------------------
# Utility "--locale"

def warn_locale():
    """
    Check for stale PO files.
    """
    files_rst = list(files_recursive(RST_DIR, ext_test=".rst"))
    files_po = list(files_recursive(LOCALE_DIR, ext_test=".po"))

    print_headline("List of unused locale", True)

    if files_po:
        print(" cd locale")
        for f in files_po:
            # strip LOCALE_DIR from start
            f_sub = f[len(LOCALE_DIR) + 1:-2] + "rst"
            # strip 'fr/LC_MESSAGES'
            f_sub = os.sep.join(f_sub.split(os.sep)[2:])
            f_po_as_rst = os.path.join(RST_DIR, f_sub)
            if not os.path.exists(f_po_as_rst):
                print(" svn rm --force %s" % f[len(LOCALE_DIR) + 1:])
        print(" cd ../")


# -----------------------------------------------------------------------------
# Argument Parsing

# define the operations to call
operations = []
operations_checks = {
    "--image": (warn_images, warn_images_post),
    "--image-name": (check_image_names, check_image_names_post),
    "--locale": (warn_locale, ...),  # run once
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
