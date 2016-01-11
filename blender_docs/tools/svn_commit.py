#!/usr/bin/env python3
# Apache License, Version 2.0
# Copyright 2015 Anton Felix Lorenzen <anfelor@web.de>
# <pep8 compliant>

'''
SVN Commit: commit the changes to svn with an helpful error message.

Example (-p = Prefix, -s = Suffix):

  svn_commit.py /locale/fr -p 'FR: ' -s 'Happy New Year!'
'''

import os

from file_translation_progress import parse_file


def added_files(path):
    for file_path in svn_status(path):
        yield file_path[8:].rstrip()


def difference(file_path):
    added = -1
    deleted = -1
    for line in svn_diff(file_path):
        if line.startswith('+'):
            added += 1
        if line.startswith('-') and ('-msgstr ""' not in line):
            deleted += 1
    return added, deleted


def file_message(file_path):
    import re
    diff = difference(file_path)
    report = parse_file(file_path)
    path = re.search('(.*)LC_MESSAGES/', file_path).regs
    file_path = file_path[path[0][1]:]
    if diff[0] > diff[1]:  # something was appended
        done = report[1] / report[0] * 100
        return 'Translated %.0f%% of %s' % (done, file_path)
    size = 'Minor' if diff[0] < 20 else 'Major'
    return '%s changes in %s' % (size, file_path)


def svn_status(path):
    return exec_command('svn status ' + path)


def svn_diff(file_path):
    return exec_command('svn diff ' + file_path)


def svn_commit(path, message):
    return exec_command('svn commit %s -m "%s"' % (path, message))


def exec_command(name):
    return os.popen(name).readlines()


def main():
    import argparse

    parser = argparse.ArgumentParser(
        usage=__doc__
        )

    parser.add_argument(
        "-s", "--suffix",
        dest="suffix",
        default="",
        help="A suffix for the commit message",
        required=False,
        )

    parser.add_argument(
        "-p", "--prefix",
        dest="prefix",
        default="",
        help="A prefix for the commit message",
        required=False,
        )

    parser.add_argument(
        "path",
        help="directory containing .svn dirs",
        metavar="PATH"
        )

    args = parser.parse_args()
    if svn_status(args.path) == []:
        print('Nothing to do.')
        return
    message = args.prefix
    for file_path in added_files(args.path):
        message = message + file_message(file_path)
        message = message + '; '
    message = message + args.suffix
    print('Committing with message: ' + message)
    print(''.join(svn_commit(args.path, message)))

if __name__ == "__main__":
    main()
