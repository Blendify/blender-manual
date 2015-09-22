
******************
Markup Style Guide
******************

This pages covers the conventions for writing and use of the reStructuredText (RST) markup syntax.


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

.. note::
   *Parts* should only be used for contents or index pages.

.. note::
   each ``.rst`` file should only have one chapter heading (``*``) per file.


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

- ``:kbd:`LMB``` - keyboard and mouse shortcuts.
- ``*Mirror*`` - interface labels.
- ``:menuselection:`3D View --> Add --> Mesh --> Monkey``` - menus.


Code Samples
============

There is support for syntax highlighting if the programming language is provided,
and line numbers can be optionally shown with the ``:linenos:`` option.


.. code-block:: rst

   .. code-block:: python
      :linenos:

      import bpy
      def some_function():
          ...

Images
======

Figures should be used to place images:


.. code-block:: rst

   .. figure:: /images/modifiers_subsurf_example.jpg

      Image Caption


Files
-----

No Caps, No Gaps
   Lower case filenames, underscore between words.
Sort Usefully
   Order naming with specific identifiers at the end.
Format
   Use ``.png`` for images that have solid colors such as screenshots of the Blender interface,
   and ``.jpg`` for images with a lot of color variance, such as sample renders and photographs.

   Do not use animated ``.gif`` files, these are hard to maintain, can be distracting
   and are usually large in file size. If a video is needed, use YouTube or Vimeo (see `Videos`_ below).
Location
   Place the image in the ``manual/images`` folder. Use no other subfolders.
Naming
   Image files should be named: ``chapter_subsection_id.png``, eg:

   - ``render_cycles_lighting_example_01.jpg``
   - ``interface_intro_splash.jpg``
   - ``interface_ui_panel.jpg``

   Do not use special characters or spaces


Usage Guides
------------

- Avoid specifying the resolution of the image or its alignment, so that the theme can handle the images consistently
  and provide the best layout across different screen sizes.
- When documenting a panel or section of the UI,
  it is better to use a single image that shows all of the relevant area
  (rather than multiple images for each icon or button) placed at the top of the section you are writing,
  and then explain the features in the order that they appear in the image.

  .. note::
     It's important that the manual can be maintained long term,
     UI and tool-options change so try to avoid having a lot of images (when they aren't especially necessary).
     Otherwise this becomes too much of a maintenance burden.


Videos
======

Videos from YouTube and Vimeo can be embedded using:

.. code-block:: rst

   .. youtube:: ID

   .. vimeo:: ID

The ``ID`` is found in the video's URL, e.g:

- The ID for ``https://www.youtube.com/watch?v=Ge2Kwy5EGE0`` is ``Ge2Kwy5EGE0``
- The ID for ``http://vimeo.com/15837189`` is ``15837189``


Usage Guides
------------

- Avoid adding videos which rely on voice, as this is difficult to translate.
- Do not embed video tutorials as a means of explaining a feature, the writing itself should explain it adequately
  (though you may include a link to the video at the bottom of the page under the heading ``Tutorials``).


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

To learn more about reStructuredText, see:

`Sphinx RST Primer <http://sphinx-doc.org/rest.html>`__
   Good basic introduction.
`Docutils reStructuredText reference <http://docutils.sourceforge.net/rst.html>`__
   Links to reference and user documentation.

