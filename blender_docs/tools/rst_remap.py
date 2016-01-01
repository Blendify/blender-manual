#!/usr/bin/env python3
# Apache License, Version 2.0
# <pep8 compliant>

"""
General purpose tool for remapping directory structure of RestructuredText documents.

This tool allows you to snapshot the structure, move files and directories about,
then finish the operation and all :doc:`... </path/to/file>` roles will be updated automatically.

Usage:

 1) rst_remap.py start
 2) # Reorganise the document structure, rename files.
 3) rst_remap.py finish

note: you can't change the contents of the files you're remapping.
"""


# -----------------------------------------------------------------------------
# Generic Func's

def uuid_from_file(fn, block_size=1 << 20):
    """
    Returns an arbitrary sized unique ASCII string based on the file contents.
    (exact hashing method may change).
    """
    with open(fn, 'rb') as f:
        # first get the size
        import os
        f.seek(0, os.SEEK_END)
        size = f.tell()
        f.seek(0, os.SEEK_SET)
        del os
        # done!

        import hashlib
        sha1 = hashlib.new('sha512')
        while True:
            data = f.read(block_size)
            if not data:
                break
            sha1.update(data)
        # skip the '0x'
        return hex(size)[2:] + sha1.hexdigest()


# -----------------------------------------------------------------------------
# Command Line Interface

import os
import sys


def fatal(msg):
    if __name__ == "__main__":
        sys.stderr.write("fatal: ")
        sys.stderr.write(msg)
        sys.stderr.write("\n")
        sys.exit(1)
    else:
        raise RuntimeError(msg)


# if you want to operate on a subdir, eg: "render"
SUBDIR = ""
CURRENT_DIR = os.path.abspath(os.path.dirname(__file__))
RST_DIR = os.path.normpath(os.path.join(CURRENT_DIR, "..", "manual", SUBDIR))

# name for temp file
RST_MAP_ID = "rst_map.data"


def rst_files(path):
    for dirpath, dirnames, filenames in os.walk(path):
        if dirpath.startswith("."):
            continue

        for filename in filenames:
            ext = os.path.splitext(filename)[1]
            if ext.lower() == ".rst":
                yield os.path.join(dirpath, filename)


def remap_data_create(base_path):

    if os.sep != "/":
        def compat_path(fn):
            return "/" + fn.replace("\\", "/")
    else:
        def compat_path(fn):
            return "/" + fn

    remap_data = {}
    for fn in rst_files(base_path):
        file_hash = uuid_from_file(fn)
        file_rstpath = compat_path(os.path.splitext(os.path.relpath(fn, base_path))[0])
        remap_data[file_hash] = file_rstpath

    return remap_data


def remap_start(base_path):
    filepath_remap = os.path.join(base_path, RST_MAP_ID)

    if os.path.exists(filepath_remap):
        fatal("Remap in progress, run with 'finish' or remove %r" % filepath_remap)

    remap_data_src = remap_data_create(base_path)

    with open(filepath_remap, 'wb') as fh:
        import pickle
        pickle.dump(remap_data_src, fh, pickle.HIGHEST_PROTOCOL)


def remap_finish(base_path):
    filepath_remap = os.path.join(base_path, RST_MAP_ID)

    if not os.path.exists(filepath_remap):
        fatal("Remap not started, run with 'start', (%r not found)" % filepath_remap)

    with open(filepath_remap, 'rb') as fh:
        import pickle
        remap_data_src = pickle.load(fh)

    remap_data_dst = remap_data_create(base_path)

    src_dst_map = {}

    for file_hash, file_rstpath_src in remap_data_src.items():
        file_rstpath_dst = remap_data_dst.get(file_hash)
        if file_rstpath_dst is None:
            # shouldn't happen often.
            print("warning: source '%s.rst' not found!" % file_rstpath_src[1:])
            file_rstpath_dst = file_rstpath_src

        src_dst_map[file_rstpath_src] = file_rstpath_dst
        if file_rstpath_src.endswith("/index") and file_rstpath_src != "/index":
            src_dst_map[file_rstpath_src[:-6]] = file_rstpath_dst[:-6]

    # now remap the doc links
    import rst_helpers

    for fn in rst_files(base_path):
        for d in rst_helpers.role_iter(fn, "doc", angle_brackets=True):
            file_rstpath_src = d[-2].strip()
            if "#" in file_rstpath_src:
                file_rstpath_src, tail = file_rstpath_src.split("#", 1)
            else:
                tail = None

            file_rstpath_dst = src_dst_map.get(file_rstpath_src)
            if file_rstpath_dst is not None:
                if tail is not None:
                    file_rstpath_dst = file_rstpath_dst + "#" + tail
                d[-2] = file_rstpath_dst
            else:
                print("warning: unknown path %r" % file_rstpath_src)

    os.remove(filepath_remap)


def main(argv=sys.argv):
    base_path = RST_DIR

    if "start" in argv:
        remap_start(base_path)
    elif "finish" in argv:
        remap_finish(base_path)
    else:
        print(__doc__)
        print("Pass either 'start' or 'finish' as arguments")


if __name__ == "__main__":
    main()
