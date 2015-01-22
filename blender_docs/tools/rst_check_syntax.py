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


def warn_role_kbd(fn, data_src):
    """
    Report non-conforming uses of the :kbd: role.

    also possible to do replacements here.
    """
    import rst_helpers
    valid_kbd = warn_role_kbd.valid_kbd
    index_prev = 0
    for d in rst_helpers.role_iter(fn, "kbd", angle_brackets=False):
        # if d[1] == "Numpad-+": d[1] = "NumpadPlus"

        k_split = d[1].split("-")
        for i, k in enumerate(k_split):
            #if k == "Space": k = k_split[i] = "Spacebar"

            if k not in valid_kbd:
                # This is a guess! (and its slow!)
                i = data_src[index_prev:].find("".join(d))
                assert(i != -1)
                i += index_prev
                line = data_src[:i].count("\n") + 1

                print("%s:%d: %r" % (fn, line, k))
                index_prev = i
        d[1] = "-".join(k_split)

    return None
warn_role_kbd.valid_kbd = (
    {
    "LMB", "MMB", "RMB",
    "Wheel", "WheelUp", "WheelDown",
    "Ctrl", "Alt", "Shift", "Cmd",
    "Tab", "Esc", "Backspace", "Delete", "Return", "Spacebar",
    "PageUp", "PageDown", "Home", "End",
    "Up", "Down", "Left", "Right",
    "Plus", "Minus",
    "NumpadPlus", "NumpadMinus", "NumpadDelete", "NumpadSlash", "NumpadPeriod",
    } |
    # single characters
    set("[]<>./\\~!?'\"") |
    # excape chars
    {chr(i) for i in range(ord('A'), ord('Z') + 1)} |
    {"%d" % i for i in range(10)} |
    {"F%d" % i for i in range(1, 13)} |
    {"Numpad%d" % i for i in range(10)}
    )



# define the operations to call
operations = []
operations_checks = {
    "--long": (warn_long_lines, None),
    "--kbd": (warn_role_kbd, None),
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

