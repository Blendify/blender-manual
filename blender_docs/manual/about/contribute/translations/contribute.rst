s]ra.. highlight:: sh

**********
Contribute
**********

On this page French (``fr``) is used for examples. However, it can be replaced with other
`languages codes <https://www.gnu.org/software/gettext/manual/html_node/Usual-Language-Codes.html>`__.
So, be sure to change the ``/fr`` suffixes in this guide to the language you are translating!

To see which languages are currently available, you can browse the repository:
https://developer.blender.org/diffusion/BMT/browse/trunk/blender_docs/locale

.. note::

   First of all, it is assumed that you have the manual already building.
   If you have not done this already go back too
   the :ref:`Getting Started <about-getting-started>` section.


Generate a new set of files for a target language
=================================================

If the language you want to translate has not been started by someone else already and you wish to create a set of new files for the desired language, say 'fr' (French), then you must first use the environment you've created, as guided in :ref:`Getting Started <about-getting-started>`, in particular :doc:`/about/contribute/install/index` and :doc:`/about/contribute/build/index` sections.

This will give you a foundation environment for:

- Creating a new set of translation language from English source
- Perform 'make' command to turn translated texts in 'po' files into html documents for testing locally
- Update changes in English texts which have been added by other contributors

.. note::

   - You might consider translating UI of the software into the target language first before approaching the manual translation, in which case, refer to the `Process/Translate Blender <https://wiki.blender.org/wiki/Process/Translate_Blender>`__

   - When checkout the repository for UI for an existing language, you can use the following example:

      .. code-block:: sh

         mkdir $HOME/blender_translations
         cd $HOME/blender_translations
         svn checkout https://svn.blender.org/svnroot/bf-translations/trunk

      then editing the ``.po`` file of your language in the ``po`` subdirectory. This will isolate you from other past branches.
   - In case the language doesn't already exists, copy the file ``blender.pot`` to a file of your language, such as:

      .. code-block:: sh

         cp po/blender.pot po/fr.po
         mkdir -p locale/fr/LC_MESSAGES

   - Read the following section for the use of file ``change_placeholders.sh`` to replace placeholders with your personal details.

   - Commit the changes you've made above:

      .. code-block:: sh

         svn commit --username <your username> -m "your comment"

   - Remove the current structure

      .. code-block:: sh

         cd ..
         rm -fr trunk

   - Checkout only the ``po`` directory to simplify the part you really are interested in, by:

      .. code-block:: sh

         svn checkout https://svn.blender.org/svnroot/bf-translations/trunk/po

      and starting to use any text editor of your choice, which support PO file format, such as kate/kwrite on Linux, or using something allows you to create the language highlight, such as `Notepad++ <https://notepad-plus-plus.org/>`_ on Windows.


Creating a new set of translation files for a target language
-------------------------------------------------------------
In this section, we will be examining the process to create a new set of files for a target language. Below examples shows the process to create a new set of files for French, language code ``fr``, on Linux platform. Other platforms might vary slightly but should mainly the same.

- Goto ``https://developer.blender.org`` to create an account for yourself and become a developer/translator for the Blender organization.
- Login the account and create a task with ``todo`` type, addressing **Aaron Carlisle (Blendify)** in the **Subscribers** field, requesting for a committer right in order to transfer changes to the central repository of the translation team.
- Open an instance of the terminal application, such as 'gnome-terminal' emulator.
- Change the current working directory to the directory of ``blender_docs``, where the instance of ``Makefile`` resides.
- Perform the following commands at the prompt:

Trying the make process to create html files in English
-------------------------------------------------------

- To ensure the previous instance of ``build`` directory is removed, if any exists

      .. code-block:: sh

         make clean

- To convert all the ``rst`` files into ``pot`` translation files.

      .. code-block:: sh

         make gettext

- To create ``html`` files.

      .. code-block:: sh

         make html

- After this, you can actually view the create html files locally following the prompted instruction, such as:

      .. code-block:: sh

         xdg-open <path to your English manual>/blender_docs/build/html/index.html


Creating the language entry in html menu
----------------------------------------
- Create an entry for the language in the html menu by opening file ``./resources/theme/js/version_switch.js`` (assuming you are at the ``blender_docs`` subdirectory).
- Find the table for the languages in ``var all_langs = {..};``.
- Enter the entry: ``"fr": "Fran&ccedil;ais",``, (``"fr": "François"``). Notice in this table the Unicode character instances in either hex codes ``&#x..;`` (with ``x`` after the prefix ``&#`` ) or decimal ``&#..;`` (with no ``x`` after the prefix ``&#`` ). Take note also the ASCII sort order of entries and place yours in the correct index place. You can come to `Unicode Character Search <https://www.fileformat.info/info/unicode/char/search.htm>`__ to enter the characters and find the appropriate html hex/decimal codes.
- To find out about changes in the local repository

   .. code-block:: sh

      svn status

- Perform

   .. code-block:: sh

      svn commit --username <your username> -m "your comment"

   enter your password.

- Perform

   .. code-block:: sh

      svn update .

   to bring your local repository up to the most recent version of changes, including the one you have just done.

Setting the local configuration file
------------------------------------
- Open a text editor to enter the following texts, change the language code to whatever the language you will be translating:

   .. code-block:: python
      :linenos:

      language = 'fr'
      locale_dirs = ['locale/']
      gettext_compact = True

- Save this file as ``conf.py`` in the ``blender_docs`` directory, where ``Makefile`` resides.
- Tells ``svn`` to ignore this file when performing operations by executing this shell command:

   .. code-block:: sh

      svn propset svn:ignore conf.py .


Generating the set of files for the target language
---------------------------------------------------

- Check out the current translation repository using the command:

   .. code-block:: sh

      svn checkout https://svn.blender.org/svnroot/bf-manual-translations/trunk/blender_docs/locale

   this will download all language sets available in the repository into the ``locale`` directory of your HDD. You can go to the ``locale`` directory to see the hidden subdirectory ``.svn`` within it, together with directories of languages. You'll need to add your own set of files for the language you're trying to translating to.

- Perform

   .. code-block:: sh

      make gettext
      sphinx-intl update -p build/locale -l fr

   from the ``blender_docs`` directory to generate a set of files for ``fr`` language. These files are still in English only, with all ``msgstr`` entries blank.

- Perform

   .. code-block:: sh

      cd locale
      svn add fr
      svn commit --username <your username> -m "Initial commit language set of files for French"

   to submit new set of files to the central repository.

- You don't need all other languages being there, so remove the locale directory for the time being.
   .. code-block:: sh

      rm -fr locale

   We will download this new set of language as guided in the next section.

.. note::

   - It is recommended you make two environment variables for these directories, in the ``.bashrc``

      .. code-block:: sh

         export BLENDER_MAN_EN=$HOME/<directory to make file directory above>/blender_docs
         export BLENDER_MAN_FR=$BLENDER_MAN_EN/locale

      to make it more convenient for changing or scripting batch/shell commands for the process of translation and reviewing results.

   - Newly generated files will contain some placeholders for authors and revision dates etc. If you find the job of replacing them repetitive, make use of the script ``change_placeholders.sh`` in the subdirectory ``~/blender_docs/toos_maintenance``, make a copy of that to your local ``bin`` directory and replace all values that were mentioned in the file with your specific details, then after each change to a file, you would do following commands

      .. code-block:: sh

         $HOME/bin/change_placeholders.sh $BLENDER_MAN_FR
         make -d --trace -w -B -e SPHINXOPTS="-D language='fr'" 2>&1

      to update the file with the your personal details, revision date and time, plus generating the html files for your language, which you can view using your Internet browser.

Check out translation files for an exising language
===================================================

From the directory containing your checkout of the manual run::

   svn checkout https://svn.blender.org/svnroot/bf-manual-translations/trunk/blender_docs/locale/fr locale/fr

This will create a ``locale/fr`` subdirectory.

You should have a directory layout like this::

   blender_docs
      |- locale/
      |  |- fr/
      |  |  |- LC_MESSAGES/
      |- manual/

.. note::

   When running subversion from the command line (such as updating or committing),
   you will need to change directory to ``locale/fr`` first.

   Otherwise you will get a warning: ``'locale' is not under version control``


A PO Editor
-----------

To make edit the PO files you will need to install a PO editor.
We recommended that you use `Poedit <https://poedit.net/>`__
however, any PO editor will do.

.. note::

   For Linux users, you will have to check with
   your distribution's software center for a version of Poedit.
   This editor is only a recommendation. There are others, such as Kate and Kwrite, that
   could offer syntax highlighting and basic tools for text editing, ie. letter case transposes.
   Other platforms can use some text editors supporting the syntax highlighting for PO files,
   or allowing you to create a custom one (such as `Notepad++ <https://notepad-plus-plus.org/>`_
   on Windows).


Building with Translations
==========================

.. note::

   This is optional, translations are automatically built online, e.g:
   https://docs.blender.org/manual/fr/dev/

Now you can build the manual with the translation applied::

   make -e SPHINXOPTS="-D language='fr'"

If you are on MS-Windows and do not have ``make``, run::

   sphinx-build -b html -D language=fr ./manual ./build/html

Now you will have a build of the manual with translations applied.


Editing Translation Files
=========================

Now you can edit the PO translation files, e.g:

Original RST File
   ``manual/getting_started/about_blender/introduction.rst``
Generated PO File
   ``locale/fr/LC_MESSAGES/getting_started/about_blender/introduction.po``

The modified ``.po`` files can be edited and committed back to svn.


Maintenance
===========

.. _translations-fuzzy-strings:

Keeping Track of Fuzzy Strings
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

   Instructions on this page are based on
   `Sphinx Intl documentation <http://www.sphinx-doc.org/en/stable/intl.html>`__


Updating PO Files
-----------------

As the original manual changes, the templates will need updating.
Note, doing this is not required,
as administrator usually update the files for all languages at once.
This allows all languages to be on the same version of the manual.
However, if you need to update the files yourself, it can be done as follows::

   make update_po

The updated templates can then be committed to svn.

.. seealso::

   A guide how to add a new language can be found in the ``release.rst`` file in the repository.
