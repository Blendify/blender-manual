#!/usr/bin/env python3
# Apache License, Version 2.0
# Copyright 2015 Anton Felix Lorenzen <anfelor@web.de>
# <pep8 compliant>

'''
Translation Tracker: report the number of complete translations.

Example:

  report_translation_progress.py locale/fr

Summeary only - for all languages:

  report_translation_progress.py --quiet locale/*
'''

import os

def po_files(path):
    for dirpath, dirnames, filenames in os.walk(path):
        if dirpath.startswith("."):
            continue

        for filename in filenames:
            ext = os.path.splitext(filename)[1]
            if ext.lower() == ".po":
                yield os.path.join(dirpath, filename)

def parse_file(po_filepath):
    msgstrs_complete = -1  # First lines contain a "fake" msgstr
    msgstrs_empty = 0
    msgstrs_fuzzy = 0
    for line in open(po_filepath, encoding='utf8'):
        result = parse_line(line)
        if result == 'COMPLETE' or result == 'EMPTY':
            msgstrs_complete += 1
            if result == 'EMPTY':
                msgstrs_empty += 1
                last_line_was_empty_msg_str = True
        else:
            if result == 'CONTINUATION':
                if last_line_was_empty_msg_str:
                    msgstrs_empty -= 1
            else:
                if result == 'FUZZY':
                    msgstrs_fuzzy += 1
            last_line_was_empty_msg_str = False
    return msgstrs_complete, msgstrs_empty, msgstrs_fuzzy

def parse_line(line):
    if line.startswith('msgstr'):
        if line.startswith('msgstr ""'):
            return 'EMPTY'
        return 'COMPLETE'
    if line[0] == '"':
        return 'CONTINUATION'
    if 'fuzzy' in line:
        return 'FUZZY'
    return 'NONE'

def report_progress(path, report, quiet=False):

    report('Translation progress: %s' % path)

    msgstrs_all_complete = 0
    msgstrs_all_empty = 0
    msgstrs_all_fuzzy = 0

    msgstrs_all_fuzzy_files = set()

    last_line_was_empty_msg_str = False

    for po_filepath in po_files(path):

        (msgstrs_file_complete, msgstrs_file_empty, msgstrs_file_fuzzy) = parse_file(po_filepath)

        if msgstrs_file_fuzzy > 0:
            msgstrs_all_fuzzy_files.add(po_filepath)

        if not quiet:
            report('%3d empty, %3d fuzzy of %3d; or [%5.1f %%] in %s' %
                   (msgstrs_file_empty,
                    msgstrs_file_fuzzy,
                    msgstrs_file_complete,
                    0.0 if not msgstrs_file_complete else
                    ((1.0 - (msgstrs_file_empty + msgstrs_file_fuzzy) /
                     msgstrs_file_complete) * 100.0),
                    po_filepath[len(path):]))

        msgstrs_all_complete += msgstrs_file_complete
        msgstrs_all_empty += msgstrs_file_empty
        msgstrs_all_fuzzy += msgstrs_file_fuzzy

    report(
        'Fuzzy:   %d fuzzy strings in:' %
        (msgstrs_all_fuzzy))
    for po_filepath in sorted(msgstrs_all_fuzzy_files):
        report(' ' * 9 + "%s" % po_filepath)

    report('Summary: %d empty of %d; or [%5.1f %%] complete' %
           (msgstrs_all_empty,
            msgstrs_all_complete,
            0.0 if not msgstrs_all_complete else
            ((1.0 - ((msgstrs_all_empty + msgstrs_all_fuzzy ) /
              msgstrs_all_complete)) * 100.0)))

def main():
    import argparse

    parser = argparse.ArgumentParser(
        usage=__doc__
        )

    parser.add_argument(
        "-q", "--quiet",
        dest="quiet",
        default=False,
        action='store_true',
        help="only print the final summary",
        required=False,
        )

    parser.add_argument(
        "paths",
        nargs="+",
        help="directories containing PO files",
        metavar="DIRS"
        )

    args = parser.parse_args()
    for path in args.paths:
        if os.path.isdir(path):
            report_progress(path, report=print, quiet=args.quiet)
        else:
            print('%s isn\'t a directory' % (path))
        print()

if __name__ == "__main__":
    main()
