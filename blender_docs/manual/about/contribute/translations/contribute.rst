.. highlight:: sh

**********
Contribute
**********

.. note::

   At time of writing, we are setting up translations workflow,
   this page shows the initial steps for translators to get started.


On this page French (``fr``) is used for examples,
however, it can be replaced with other
`languages codes <https://www.gnu.org/software/gettext/manual/html_node/Usual-Language-Codes.html>`__.

To see which languages are currently available, you can browse the repository:
https://developer.blender.org/diffusion/BMT/browse/trunk/blender_docs/locale


Installing Dependencies
=======================

For translations, we use Sphinx's internationalization package.
However, this is not included with Sphinx and needs to be installed::

   pip install sphinx-intl


Downloading the Repository
==========================

First of all, it is assumed that you have the manual already building.

From the directory containing your checkout of the manual run the following command.

.. note::

   Be sure to change the ``/fr`` suffixes to the language you are translating!

   You can remove the suffix to check out all languages too, however, this will be a much larger download.

.. code-block:: sh

   svn checkout https://svn.blender.org/svnroot/bf-manual-translations/trunk/blender_docs/locale/fr locale/fr

This will create a ``locale/fr`` subdirectory.

Now you can edit the PO translation files, eg:

Original RST File
   ``manual/getting_started/about_blender/introduction.rst``
Generated PO File
   ``locale/fr/LC_MESSAGES/getting_started/about_blender/introduction.po``

The modified ``.po`` files can be edited and committed back to svn.


Building with Translations
==========================

.. note::

   This is optional, translations are automatically built online, eg:
   https://www.blender.org/manual/fr/

   This is quite involved,
   so it is not be expected that translators should be doing their own builds locally.

----

To creates the ``.mo`` files (needed for building translation)::

   sphinx-intl build

Now you can build the manual with the translation applied::

   make -e SPHINXOPTS="-D language='fr'"

If you are on MS-Windows and do not have ``make``, run::

   sphinx-build -b html -D language='fr' ./manual ./build/html

Now you will have a build of the manual with translations applied.


Updating PO Files
-----------------

As the original manual changes, the templates will need updating.

This can be done as follows::

   make gettext
   sphinx-intl update -p build/locale -l fr

The updated templates can then be committed to svn.

*TODO: document how to handle files being added/removed/moved.*

.. note::

   To streamline updating files,
   we have a convenience Makefile target::

      make update_po

   This runs the update,
   adds any new files and prints the final command to commit the changes.


Maintenance
===========

.. _translations-fuzzy-strings:

Keeping track of fuzzy strings
------------------------------

When the manual is updated, those translations which are outdated will be marked as fuzzy.
To keep track with that, you can use a tool we created for that task.

Download the tools/ folder::

   cd path/to/translationfolder
   svn checkout https://svn.blender.org/svnroot/bf-manual/trunk/blender_docs/tools

You should have a directory layout like this::

   locale/
   |- fr/
   |  |- LC_MESSAGES/
   |- tools/

Now execute::

   python3 tools/report_translation_progress.py locale/fr/LC_MESSAGES/

You should get a list of all the files with information about the number of empty and fuzzy strings.
If you want only a summary, append ``-q`` to the command above. For more options see::

   python3 tools/report_translation_progress.py --help


.. note::

   See the `translation design task <https://developer.blender.org/T43083>`__
   for discussion on the proposed process.

.. seealso::

   - Instructions on this page are based on
     `Sphinx Intl documentation <http://www.sphinx-doc.org/en/stable/intl.html>`__
   - The `translation design task <https://developer.blender.org/T43083>`__
     for discussion on the proposed process.
