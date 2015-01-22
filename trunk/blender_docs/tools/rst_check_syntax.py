#!/usr/bin/env python3

import os
import sys


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


def warn_long_lines(fn, data_src):
    """
    Complain about long lines
    """
    lines = data_src.split("\n")
    limit = 118

    for i, l in enumerate(lines):
        if len(l) > limit:
            # rule out tables
            l_strip = l.strip()

            # ignore tables
            if l_strip.startswith("+") and l_strip.endswith(("+", "|")):
                continue
            # for long links which we can't avoid
            if l_strip.strip(",.- ").endswith("__"):
                continue
            if l_strip.startswith(".. parsed-literal:: "):
                continue
            if l_strip.startswith(".. figure:: "):
                continue

            print("%s:%d: long line %d" % (fn, i + 1, len(l)))

    return None


# define the operations to call
operations = []
operations_checks = {
    "--long": (warn_long_lines, None),
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

