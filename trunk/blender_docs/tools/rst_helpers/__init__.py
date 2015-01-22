#!/usr/bin/env python3

# ##### BEGIN GPL LICENSE BLOCK #####
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation; either version 2
#  of the License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
#
# ##### END GPL LICENSE BLOCK #####

# <pep8 compliant>


def role_iter(fn, role, angle_brackets=False):
    """
    Convenience iterator for roles,
    so you can loop over and manipulate roles without the hassle of involved string manipulation.
    """
    import re
    if angle_brackets:
        dir_re = re.compile(r"(\:" + role + "\:\`)([^\<,\n]*)(\s+\<)([^\,\n>]+)(\>\`)")
    else:
        dir_re = re.compile(r"(\:" + role + "\:\`)([^`,\n]*)(\`)")
    dir_find = ":" + role + ":"

    with open(fn, "r", encoding="utf-8") as f:
        data_src = f.read()

    # keep searching the tail of the list until we're done
    data_dst_ls = [data_src]
    offset = 0
    while True:
        offset = data_dst_ls[-1].find(dir_find, offset)
        if offset == -1:
            break

        g = dir_re.match(data_dst_ls[-1][offset:])
        if g:
            offset_next = offset + g.span()[1]
            ls_orig = list(g.groups())
            ls = ls_orig[:]
            yield ls
            if ls != ls_orig:
                data_dst_ls[-1:] = [data_dst_ls[-1][:offset]] + ls + [data_dst_ls[-1][offset_next:]]
                offset = 0
            else:
                offset = offset_next
        else:
            offset += len(role)

    if len(data_dst_ls) != 1:
        with open(fn, "w", encoding="utf-8") as f:
            f.write("".join(data_dst_ls))

