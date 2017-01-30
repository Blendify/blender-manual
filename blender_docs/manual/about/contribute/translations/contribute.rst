.. highlight:: sh

**********
Contribute
**********

On this page French (``fr``) is used for examples, however, it can be replaced with other
`languages codes <https://www.gnu.org/software/gettext/manual/html_node/Usual-Language-Codes.html>`__.

To see which languages are currently available, you can browse the repository:
https://developer.blender.org/diffusion/BMT/browse/trunk/blender_docs/locale

.. note::

   First of all, it is assumed that you have the manual already building.
   If you have not done this already go back too the
   :ref:`Getting Started <about-getting-started>` section.


Installing your Language Files
==============================

.. note::

   Be sure to change the ``/fr`` suffixes to the language you are translating!

   You can remove the suffix to check out all languages too, however, this will be a much larger download.

From the directory containing your checkout of the manual run::

   svn checkout https://svn.blender.org/svnroot/bf-manual-translations/trunk/blender_docs/locale/fr locale/fr

This will create a ``locale/fr`` subdirectory.

You should have a directory layout like this::

   blender_docs
      |- locale/
      |  |- fr/
      |  |  |- LC_MESSAGES/
      |- manual/


A PO Editor
===========

To make edit the PO files you will need to install a PO editor.
We recommended that you use `Poedit <https://poedit.net/>`__
however, any PO editor will do.

.. note::

   For Linux users you will have to check with
   your distribution's software center for a version of Poedit.


Building with Translations
==========================

.. note::

   This is optional, translations are automatically built online, eg:
   https://docs.blender.org/manual/fr/dev/

   This is quite involved,
   so it is not be expected that translators should be doing their own builds locally.


To create the ``.mo`` files (needed for building translation)::

   sphinx-intl build

Now you can build the manual with the translation applied::

   make -e SPHINXOPTS="-D language='fr'"

If you are on MS-Windows and do not have ``make``, run::

   sphinx-build -b html -D language='fr' ./manual ./build/html

Now you will have a build of the manual with translations applied.


Editing Translation Files
=========================

Now you can edit the PO translation files, eg:

Original RST File
   ``manual/getting_started/about_blender/introduction.rst``
Generated PO File
   ``locale/fr/LC_MESSAGES/getting_started/about_blender/introduction.po``

The modified ``.po`` files can be edited and committed back to svn.


Maintenance
===========

.. _translations-fuzzy-strings:

Keeping track of fuzzy strings
------------------------------

When the manual is updated, those translations which are outdated will be marked as fuzzy.
To keep track with that, you can use a tool we created for that task.

You can do this by running::

   make report_po_progress


This will only give a quick summary however, you can get more information by running::

   python tools/report_translation_progress.py locale/fr/

You should get a list of all the files with information about the number of empty and fuzzy strings.
For more options see::

   python tools/report_translation_progress.py --help


.. seealso::

   - Instructions on this page are based on
     `Sphinx Intl documentation <http://www.sphinx-doc.org/en/stable/intl.html>`__
   - The `translation design task <https://developer.blender.org/T43083>`__
     for discussion on the process.


Updating PO Files
-----------------

As the original manual changes, the templates will need updating.
Note, doing this is not required,
as administrator usually update the files for all languages at once.
This allows all languages to be on the same version of the manual.
However, if you need to update the files yourself, it can be done as follows::

   make update_po

The updated templates can then be committed to svn.

*TODO: document how to handle files being added/removed/moved.*
