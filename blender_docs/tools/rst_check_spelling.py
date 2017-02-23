#!/usr/bin/env python3
# Apache License, Version 2.0

"""
Check spelling for all RST files in the repository.

- TODO: more comprehensive docs.
- TODO: some words get extracted that shouldn't.
"""

import os
import sys
import re


# for spelling
import enchant
dict_spelling = enchant.Dict("en_US")


USE_ONCE = True
once_words = set()
bad_words = set()

def check_spelling_body(text):
    ww = text.split()

    for w in text.split():

        if w.startswith(":") and w.endswith(":"):
            continue
        if w.startswith("<") and w.endswith(">"):
            continue

        w = w.strip("{}[](),.!?;\"'1234567890-_*")

        if w.startswith(":") and w.endswith(":"):
            continue
        if w.startswith("<") and w.endswith(">"):
            continue

        # now we've gotten rid of typical roles, strip other chars
        w = w.strip(":`()<>{}")

        # if w:
        w_ = w
        for w in w_.split("/"):
            if not w:
                continue

            w_lower = w.lower()
            if USE_ONCE and w_lower in once_words:
                continue

            if not dict_spelling.check(w):
                bad_words.add(w)
                # print(" %r" % w)

                if USE_ONCE:
                    once_words.add(w_lower)



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
    for fn in rst_files(RST_DIR):
        check_spelling(fn)

    # We could have nicer in-context display,
    # for now just print the words
    words_sorted = list(bad_words)
    words_sorted.sort(key=lambda s: s.lower())
    for w in words_sorted:
        print(w)


# -----------------------------------------------------------------------------
# Register dummy directives

import docutils
from docutils.parsers.rst import directives, roles

def directive_ignore(
        name, arguments, options, content, lineno,
        content_offset, block_text, state, state_machine,
        ):
    """
    Used to explicitly mark as doctest blocks things that otherwise
    wouldn't look like doctest blocks.
    """
    text = '\n'.join(content)
    '''
    if re.match(r'.*\n\s*\n', block_text):
        warning('doctest-ignore on line %d will not be ignored, '
             'because there is\na blank line between ".. doctest-ignore::"'
             ' and the doctest example.' % lineno)
    '''
    return [docutils.nodes.doctest_block(text, text, codeblock=True)]
directive_ignore.content = True

def directive_ignore_recursive(
        name, arguments, options, content, lineno,
        content_offset, block_text, state, state_machine,
        ):
    """
    Ignore everything under this directive (use with care!)
    """
    return []
directive_ignore_recursive.content = True


directives.register_directive('index', directive_ignore)
directives.register_directive('toctree', directive_ignore)
directives.register_directive('youtube', directive_ignore)
directives.register_directive('vimeo', directive_ignore)
directives.register_directive('highlight', directive_ignore)
directives.register_directive('include', directive_ignore)

# workaround some bug? docutils wont load relative includes!

# ones we want to check
directives.register_directive('seealso', directive_ignore)
directives.register_directive('only', directive_ignore)
directives.register_directive('hlist', directive_ignore)
directives.register_directive('glossary', directive_ignore)

# Recursive ignore, take care!
directives.register_directive('code-block', directive_ignore_recursive)

# Dummy roles
class RoleIgnore(docutils.nodes.Inline, docutils.nodes.TextElement): pass
def role_ignore(
        name, rawtext, text, lineno, inliner,
        options={}, content=[],
        ):
    # Recursively parse the contents of the index term, in case it
    # contains a substitiution (like |alpha|).
    nodes, msgs = inliner.parse(text, lineno, memo=inliner, parent=inliner.parent)
    return [RoleIgnore(rawtext, '', *nodes, **options)], []

roles.register_canonical_role('kbd', role_ignore)
roles.register_canonical_role('doc', role_ignore)
roles.register_canonical_role('ref', role_ignore)
roles.register_canonical_role('term', role_ignore)
roles.register_canonical_role('abbr', role_ignore)
roles.register_canonical_role('menuselection', role_ignore)

# -----------------------------------------------------------------------------

import docutils.parsers.rst


def rst_to_doctree(filedata):
    import docutils.parsers.rst
    parser = docutils.parsers.rst.Parser()
    doc = docutils.utils.new_document("test")
    doc.settings.tab_width = 3
    doc.settings.pep_references = False
    doc.settings.rfc_references = False
    doc.settings.syntax_highlight = False

    doc.settings.raw_enabled = True  # TODO, check how this works!
    doc.settings.file_insertion_enabled = True
    doc.settings.character_level_inline_markup = False # TODO, whats sphinx do?
    doc.settings.trim_footnote_reference_space = False # doesn't seem important

    parser.parse(filedata, doc)
    return doc


def check_spelling(filename):
    with open(filename, 'r', encoding='utf-8') as f:
        filedata = f.read()
        doc = rst_to_doctree(filedata)
        # print(doc)

    visitor = RstSpellingVisitor(doc)
    doc.walkabout(visitor)


class RstSpellingVisitor(docutils.nodes.NodeVisitor):
    __slots__ = (
        "document",
        )
    def __init__ (self, doc):
        self.document = doc

    # -----------------------------
    # Visitors (docutils callbacks)

    def visit_author(self, node):
        print("AUTHOR", node[0])

    # TODO
    def visit_section(self, node):
        pass
    def depart_section(self, node):
        pass

    def visit_title(self, node):
        # print("TITLE", node[0], self.section_level)
        pass

    def depart_title(self, node):
        pass
        # print("/TITLE", node[0])

        '''
        body, body_fmt = self.pop_body()
        align = self.node_align(node)
        elem = BElemText(body, body_fmt, align, self.indent, "style_head%d" % self.section_level)
        self.bdoc.add_elem(elem)
        '''

        # import IPython
        # IPython.embed()

    def visit_list_item(self, node):
        '''
        align = self.node_align(node)
        elem = BElemListItem(align, self.indent, "style_body",
                             self.list_types[-1], self.list_count[-1])
        self.bdoc.add_elem(elem) 
        '''
        pass

    def depart_list_item(self, node):
        # self.list_count[-1] += 1
        pass

    def visit_bullet_list(self, node):
        pass
        '''
        self.list_types.append(None)
        self.list_count.append(0)
        '''
    def depart_bullet_list(self, node):
        pass
        '''
        item = self.list_types.pop()
        assert(item == None)
        del self.list_count[-1]
        '''

    def visit_enumerated_list(self, node):
        pass
        '''
        self.list_types.append(node["enumtype"])
        self.list_count.append(0)
        '''
    def depart_enumerated_list(self, node):
        pass
        '''
        item = self.list_types.pop()
        assert(item == node["enumtype"])
        del self.list_count[-1]
        '''

    def visit_paragraph(self, node):
        # TODO
        pass

    def depart_paragraph(self, node):
        text = node.astext()
        # print(text)
        check_spelling_body(text)

    def visit_Text(self, node):
        text = node.astext()
        # print(text)
        check_spelling_body(text)


    def depart_Text(self, node):
        pass

    def visit_strong(self, node):
        self.is_strong = True
    def depart_strong(self, node):
        self.is_strong = False
    def visit_emphasis(self, node):
        self.is_emphasis = True
    def depart_emphasis(self, node):
        self.is_emphasis = False


    def visit_literal_block(self, node):
        pass
    def depart_literal_block(self, node):
        pass

    def visit_code_block(self, node):
        pass
    def depart_code_block(self, node):
        pass

    def visit_date(self, node):
        #date = datetime.date(*(
        #    map(int, unicode(node[0]).split('-'))))
        #metadata['creation_date'] = date
        pass

    #def visit_document(self, node):
    #    print("TEXT:", node.astext())
    #    # metadata['searchable_text'] = node.astext()

    def visit_comment(self, node):
        raise docutils.nodes.SkipNode
    def depart_comment(self, node):
        pass

    def visit_raw(self, node):
        raise docutils.nodes.SkipNode
    def depart_raw(self, node):
        pass

    def unknown_visit(self, node):
        pass
    def unknown_departure(self, node):
        pass


if __name__ == "__main__":
    main()
