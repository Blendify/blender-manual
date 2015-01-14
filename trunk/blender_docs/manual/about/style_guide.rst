
***********
Style Guide
***********

This pages covers the conventions for writing and use of the reStructuredText (RST) markup syntax.

In order to maintain a consistent writing and formatting style within the manual,
please keep this page in mind and only deviate from it when you have a good reason to do so.


Writing Style
=============

- American English (eg: modeling and not modelling, color and not colour).
- *Spell checking is strongly recommended.*
- Use of correct grammar, appropriate wording and simple English.
- Sentences should be kept short and clear, resulting in text that is easy to read, objective and to the point.
- Do not write in first person perspective, about yourself or your own opinions.
- Avoid `weasel words <http://en.wikipedia.org/wiki/Weasel_word>`__ and being unnecessarily vague, eg:

  | *"Reloading the file will probably fix the problem"*
  | *"Most people don't use this option because ..."*
- Avoid technical explanations about the mathematical/algorithmic implementation of a feature
  if there is a simpler way to explain it (e.g. explaining how mesh smoothing algorithms work is unnecessary,
  but the blending types of a mix node do need a mathematical explanation).
- Avoid repetition of large potions of text - simply explain it once, and from then on refer to that explanation.

  In some cases you might also consider defining a `:term:` in the **glossary**.
- Avoid enumerating similar options, such as listing every preset or every frame-rate in a drop-down.

  Their contents may be summarized or simply omitted.

  *Such lists are only showing what is already obvious in the interface
  and end up being a lot of text to read & maintain.*
- Avoid documenting changes in Blender between releases, thats what the release notes are for.
  We only need to document the current state of Blender.
- Unless the unit a value is measured in is obscure and unpredictable, there is no need to mention it.
- Do not simply copy the tool-tips from Blender.

  *People will come to the manual to learn more than is provided by the UI.*
- Including why or how an option might be useful is a good idea.
- If you are unsure about how a feature works, ask someone else or find out who developed it and ask them.

  As a last resort you can add comment (which is not shown in the html page, but useful for other editors): ::

     .. TODO, how does this tool work? ask Joe Blogg's


Conventions
===========

- 3 space indentation.
- Lines should be less than 120 characters long.
- Use italics for button/menu names.


Headings
========

.. code-block:: rst

   ################
    Document Part
   ################

   ****************
   Document Chapter
   ****************

   Document Section
   ================

   Document Subsection
   -------------------

   Document Subsubsection
   ^^^^^^^^^^^^^^^^^^^^^^

   Document Paragraph
   """"""""""""""""""

.. note:: *Parts* should only be used for contents or index pages.

.. note:: each ``.rst`` file should only have one chapter heading (``*``) per file.


Text Styling
============

See the `overview on ReStructured Text <http://sphinx-doc.org/rest.html>`__
for more information on how to style the various elements of the documentation and on how to add lists, tables,
pictures and code blocks.
The `sphinx reference <http://sphinx-doc.org/markup/index.html>`__ provides more insight additional constructs.

The following are useful markups for text styling: ::

   *italic*
   **bold**
   ``literal``


Interface Elements
==================

- ``:kbd:`Lmb``` - keyboard and mouse shortcuts.
- ``*Mirror*`` - interface labels.
- ``:menuselection:`3D View --> Add --> Mesh --> Monkey``` - menus.


Code Samples
============

There is support for syntax highlighting if the programming language is provided,
and line numbers can be optionally shown with the `:linenos:` option.


.. code-block:: rst

   .. code-block:: python
      :linenos:

      import bpy
      def some_function():
          ...

Figures
=======

Figures should be used to place images:


.. code-block:: rst

   .. figure:: /images/modifiers_subsurf_example.jpg

      Image Caption


Useful Constructs
=================

- ``|BLENDER_VERSION|`` - Resolves to the current Blender version.
- ``:abbr:`SSAO (Screen Space Ambient Occlusion)``` - Abbreviations display the full text as a tooltip for the reader.
- ``:term:`Manifold``` - Links to an entry in the :doc:`Glossary </glossary/index>`.

Cross References and Linkage
============================

You can link to another document in the manual with:

.. code-block:: rst

   :doc:`The Title </section/path/to/file>`


To link to a specific section in another document (or the same one), explicit labels are available:

.. code-block:: rst

   .. _sample-label:

   [section or image to reference]

   Some text :ref:`Optional Title <sample-label>`


Linking to a title in the same file.

.. code-block:: rst

   Titles are Targets
   ==================

   Body text.

   Implicit references, like `Titles are Targets`_


Linking to the outside world:

.. code-block:: rst

   `Blender Website <http://www.blender.org>`__


Directory layout
================

Sections should be generally structured as follows:

- ``directory_name/``

  - ``index.rst`` (contains links to internal files)
  - ``introduction.rst``
  - ``section_1.rst``
  - ``section_2.rst``

For example:

- ``rendering/``

  - ``index.rst``
  - ``cycles/``

    - ``index.rst``
    - ``introduction.rst``
    - ``materials/``

      - ``index.rst``
      - ``introduction.rst``
      - ``volumes.rst``

The idea is to enclose all the content of a section inside of a folder. Ideally every section
should have an index.rst (containing the TOC for that section) and an ``introduction.rst``
(introducing) to the contents of the section.


Table of Contents
-----------------

By default a table of contents should show two levels of depth.

.. code-block:: rst

   .. toctree::
      :maxdepth: 2

      introduction.rst
      perspective.rst
      depth_of_field.rst


Further Reading
===============

To learn more about RestructuredText, see:

`Sphinx RST Primer <http://sphinx-doc.org/rest.html>`__
   Good basic introduction.
`Docutils reStructuredText reference <http://docutils.sourceforge.net/rst.html>`__
   Links to reference and user documentation.

