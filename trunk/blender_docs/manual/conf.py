#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Blender Manual documentation build configuration file, created by
# sphinx-quickstart on Fri Jun 10 12:33:27 2016.
#
# This file is execfile()d with the current directory set to its
# containing dir.
#
# Note that not all possible configuration values are present in this
# autogenerated file.
#
# All configuration values have a default; values that are commented out
# serve to show the default.

import sys
import os

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
sys.path.insert(0, os.path.abspath(os.path.join('..', 'exts')))

# -- General configuration -----------------------------------------------------

# local var only
blender_version = "2.79"

# include at end of every file
rst_epilog = """
.. |BLENDER_VERSION| replace:: %s
""" % blender_version

# If your documentation needs a minimal Sphinx version, state it here.
needs_sphinx = '1.5'

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
extensions = [
    'youtube',
    'vimeo',
    'sphinx.ext.mathjax',
    'sphinx.ext.intersphinx',
]

# Is there a better way to check for PDF building?
if "latex" in sys.argv:
    # To convert gif's when making a PDF.
    extensions.append('sphinx.ext.imgconverter')

if os.environ.get('manual_use_analytics') == "True":
    extensions.append('googleanalytics')
    googleanalytics_enabled = True

intersphinx_mapping = {'blender_api': ('https://docs.blender.org/api/' + blender_version + '/', None)}

# Add any paths that contain templates here, relative to this directory.
templates_path = ['../resources/templates']
mathjax_path = 'https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-MML-AM_CHTML'
googleanalytics_id = 'UA-1418081-1'

# The suffix(es) of source filenames.
source_suffix = '.rst'

# The encoding of source files.
#source_encoding = 'utf-8-sig'

# The master toctree document.
master_doc = 'index'

if os.environ.get('QUICKY_CHAPTERS') is None:
    exclude_patterns = ["contents_quicky.rst"]
    master_doc = 'index'
else:
    # Call quicky_index_gen.from_chapters()
    # and use the QUICKY_CHAPTERS env var if its set

    def exec_file(fn):
        code = compile(open(fn, 'r').read(), fn, 'exec')
        namespace = {"__file__": fn}
        exec(code, namespace, namespace)
        return namespace

    mod_path = os.path.join(os.path.dirname(__file__), "quicky_index_gen.py")
    namespace = exec_file(mod_path)
    del mod_path

    master_doc, exclude_patterns = namespace["from_chapters"]()
    del namespace

print("Using Index:", master_doc)

# General information about the project.
project = 'Blender %s Manual' % blender_version
copyright = ': This page is licensed under a CC-BY-SA 4.0 Int. License'
author = 'Blender Documentation Team'

# The version info for the project you're documenting, acts as replacement for
# |version| and |release|, also used in various other places throughout the
# built documents.
#
# The short X.Y version.
version = blender_version
# The full version, including alpha/beta/rc tags.
release = blender_version

del blender_version

# The language for content autogenerated by Sphinx. Refer to documentation
# for a list of supported languages.
#
# This is also used if you do content translation via gettext catalogs.
# Usually you set "language" from the command line for these cases.
language = 'en'

# There are two options for replacing |today|: either, you set today to some
# non-false value, then it is used:
#today = ''
# Else, today_fmt is used as the format for a strftime call.
#today_fmt = '%B %d, %Y'

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This patterns also effect to html_static_path and html_extra_path
exclude_patterns += ['_build']

# The reST default role (used for this markup: `text`) to use for all
# documents.
#default_role = None

# If true, '()' will be appended to :func: etc. cross-reference text.
#add_function_parentheses = True

# If true, the current module name will be prepended to all description
# unit titles (such as .. function::).
#add_module_names = True

# If true, sectionauthor and moduleauthor directives will be shown in the
# output. They are ignored by default.
#show_authors = False

# The name of the Pygments (syntax highlighting) style to use.
pygments_style = 'sphinx'

# By default, highlight as Python 3.
highlight_language = 'python3'

# A list of ignored prefixes for module index sorting.
#modindex_common_prefix = []

# If true, keep warnings as "system message" paragraphs in the built documents.
#keep_warnings = False

# If true, `todo` and `todoList` produce output, else they produce nothing.
#todo_include_todos = False

# translations
locale_dirs = ['../locale/']   # Path to locale
gettext_compact = False     # optional.

# Quit warnings about missing download file
suppress_warnings = ['download.not_readable']

# -- Options for HTML output ---------------------------------------------------
# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
html_theme = "sphinx_rtd_theme"

# Theme options are theme-specific and customize the look and feel of a theme
# further.  For a list of options available for each theme, see the
# documentation.
html_theme_options = {}

# Add any paths that contain custom themes here, relative to this directory.
html_theme_path = []

if html_theme == "sphinx_rtd_theme":
    import sphinx_rtd_theme
    html_theme_path.append(sphinx_rtd_theme.get_html_theme_path())
    del sphinx_rtd_theme

    # included in the title
    html_theme_options = {
    "display_version": False,
    "canonical_url": "https://docs.blender.org/manual/en/latest/",
    }


# The name for this set of Sphinx documents.
# "<project> v<release> documentation" by default.
html_title = "Blender Manual"

# A shorter title for the navigation bar.  Default is the same as html_title.
#html_short_title = None

# The name of an image file (relative to this directory) to place at the top
# of the sidebar.
#
# Socket logo from: https://www.blender.org/about/logo
html_logo = "../resources/theme/blender-logo.svg"

# The name of an image file (relative to this directory) to use as a favicon of
# the docs.  This file should be a Windows icon file (.ico) being 16x16 or 32x32
# pixels large.
html_favicon = "../resources/theme/favicon.ico"

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = ["../resources/theme"]

def setup(app):
    if html_theme == "sphinx_rtd_theme":
        app.add_stylesheet("css/theme_overrides.css")
        app.add_javascript("js/version_switch.js")

# Add any extra paths that contain custom files (such as robots.txt or
# .htaccess) here, relative to this directory. These files are copied
# directly to the root of the documentation.
html_extra_path = ["../resources/404.html", "../resources/versions.json"]

# If not None, a 'Last updated on:' timestamp is inserted at every page
# bottom, using the given strftime format.
# The empty string is equivalent to '%b %d, %Y'.
#html_last_updated_fmt = None

# If true, SmartyPants will be used to convert quotes and dashes to
# typographically correct entities.
#html_use_smartypants = True

# Custom sidebar templates, maps document names to template names.
#html_sidebars = {}

# Additional templates that should be rendered to pages, maps page names to
# template names.
#html_additional_pages = {}

# If false, no module index is generated.
#html_domain_indices = True

# If false, no index is generated.
#html_use_index = True

# If true, the index is split into individual pages for each letter.
#html_split_index = False

# If true, links to the reST sources are added to the pages.
html_show_sourcelink = True

# If true, "Created using Sphinx" is shown in the HTML footer. Default is True.
html_show_sphinx = False

# If true, "(C) Copyright ..." is shown in the HTML footer. Default is True.
html_show_copyright = True

# If true, an OpenSearch description file will be output, and all pages will
# contain a <link> tag referring to it.  The value of this option must be the
# base URL from which the finished HTML is served.
# Ed. Note: URL has to be adapted, when versioning is set up.
html_use_opensearch = 'https://docs.blender.org/manual/en/dev'

# This is the file name suffix for HTML files (e.g. ".xhtml").
#html_file_suffix = None

# Language to be used for generating the HTML full-text search index.
# Sphinx supports the following languages:
#   'da', 'de', 'en', 'es', 'fi', 'fr', 'h', 'it', 'ja'
#   'nl', 'no', 'pt', 'ro', 'r', 'sv', 'tr', 'zh'
html_search_language = 'en'

# A dictionary with options for the search language support, empty by default.
# 'ja' uses this config value.
# 'zh' user can custom change `jieba` dictionary path.
#html_search_options = {'type': 'default'}

# The name of a javascript file (relative to the configuration directory) that
# implements a search results scorer. If empty, the default will be used.
#html_search_scorer = 'scorer.js'

# Output file base name for HTML help builder.
htmlhelp_basename = 'Blender Reference Manual'

# -- Options for LaTeX output --------------------------------------------------
# see https://github.com/sphinx-doc/sphinx/issues/3289

latex_engine = 'xelatex'

latex_elements = {
# The paper size ('letterpaper' or 'a4paper').
  'papersize': 'a4paper',

# The font size ('10pt', '11pt' or '12pt').
  'pointsize': '10pt',

# Additional stuff for the LaTeX preamble.

  'sphinxsetup': 'hmargin=0.75in, vmargin=1in',

  'classoptions': ',openany,oneside',
#  'babel': '\\usepackage[english]{babel}',
# note that xelatex will use polyglossia by default, but if 'babel' key is redefined like above, it will use babel package.

    'fontpkg': r'''
\setmainfont{DejaVu Serif}
\setsansfont{DejaVu Sans}
\setmonofont{DejaVu Sans Mono}
''',

   'preamble': u'''
\\renewenvironment{wrapfigure}[2]{\\begin{figure}[H]}{\\end{figure}}
\\usepackage{newunicodechar}

\\usepackage{pifont}
\\newunicodechar{✔}{\\ding{52}}
% nota bene Sphinx already replaced ✓ by \checkmark, which uses a math font
% and is provided by amssymb. But it can not be boldened! (easily)
\\newunicodechar{✗}{\\ding{55}}
\\newunicodechar{✛}{\\ding{59}}

\\usepackage{fontawesome}
\\newunicodechar{⏮}{\\faFastBackward}
\\newunicodechar{⏪}{\\faBackward}
\\newunicodechar{▶}{\\faPlay}
\\newunicodechar{⏩}{\\faForward}
\\newunicodechar{⏭}{\\faFastForward}
\\newunicodechar{⏸}{\\faPause}
\\newunicodechar{◀}{\\reflectbox{▶}}
''',

}


# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title,
#  author, documentclass [howto, manual, or own class]).
latex_documents = [
  ('index', 'blender_manual.tex', 'Blender User Manual',
   'Blender Community', 'manual'),
]

# The name of an image file (relative to this directory) to place at the top of
# the title page.
latex_logo = "../resources/theme/blender-logo.svg"

# For "manual" documents, if this is true, then toplevel headings are parts,
# not chapters.
#latex_use_parts = False

# If true, show page references after internal links.
#latex_show_pagerefs = False

# If true, show URL addresses after external links.
latex_show_urls = "no"

# Documents to append as an appendix to all manuals.
#latex_appendices = []

# If false, no module index is generated.
#latex_domain_indices = True


# -- Options for manual page output --------------------------------------------

# One entry per manual page. List of tuples
# (source start file, name, description, authors, manual section).
man_pages = [
    ('index', 'manual_docs', 'Blender Manual Documentation Documentation',
     [''], 1)
]

# If true, show URL addresses after external links.
man_show_urls = False


# -- Options for Texinfo output ------------------------------------------------

# Grouping the document tree into Texinfo files. List of tuples
# (source start file, target name, title, author,
#  dir menu entry, description, category)
texinfo_documents = [
  ('index', 'Blender Reference Manual', 'Blender Manual Documentation',
   'Blender Documentation Team', 'Blender Reference Manual'),
]

# Documents to append as an appendix to all manuals.
#texinfo_appendices = []

# If false, no module index is generated.
#texinfo_domain_indices = True

# How to display URL addresses: 'footnote', 'no', or 'inline'.
#texinfo_show_urls = 'footnote'

# If true, do not generate a @detailmenu in the "Top" node's menu.
#texinfo_no_detailmenu = False


# -- Options for Epub output ----------------------------------------------

# Bibliographic Dublin Core info.
epub_title = 'Blender Reference Manual'
epub_author = 'Blender Documentation Team'
epub_publisher = 'Blender Foundation'
epub_copyright = 'This manual is licensed under a CC-BY-SA 4.0 Int. License.'

# The basename for the epub file. It defaults to the project name.
# epub_basename = project

# The HTML theme for the epub output. Since the default themes are not
# optimized for small screen space, using the same theme for HTML and epub
# output is usually not wise. This defaults to 'epub', a theme designed to save
# visual space.
#
# epub_theme = 'epub'

# The language of the text. It defaults to the language option
# or 'en' if the language is not set.
#
# epub_language = ''

# The scheme of the identifier. Typical schemes are ISBN or URL.
# epub_scheme = ''

# The unique identifier of the text. This can be a ISBN number
# or the project homepage.
#
# epub_identifier = ''

# A unique identification for the text.
#
# epub_uid = ''

# A tuple containing the cover image and cover page html template filenames.
#
# epub_cover = ()

# A sequence of (type, uri, title) tuples for the guide element of content.opf.
#
# epub_guide = ()

# HTML files that should be inserted before the pages created by sphinx.
# The format is a list of tuples containing the path and title.
#
# epub_pre_files = []

# HTML files that should be inserted after the pages created by sphinx.
# The format is a list of tuples containing the path and title.
#
# epub_post_files = []

# A list of files that should not be packed into the epub file.
epub_exclude_files = ['search.html']

# The depth of the table of contents in toc.ncx.
#
epub_tocdepth = 2

# Allow duplicate toc entries.
#
# epub_tocdup = True

# Choose between 'default' and 'includehidden'.
#
# epub_tocscope = 'default'

# Fix unsupported image types using the Pillow.
#
# epub_fix_images = False

# Scale large images.
#
# epub_max_image_width = 0

# How to display URL addresses: 'footnote', 'no', or 'inline'.
#
epub_show_urls = 'no'

# If false, no index is generated.
#
# epub_use_index = True
