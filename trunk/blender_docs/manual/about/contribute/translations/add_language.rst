:orphan:

.. highlight:: sh

*****************
Adding a Language
*****************

Generate a New Set of Files for a Target Language
=================================================

If the language you want to translate has not been started by someone else already and
you wish to create a set of new files for the desired language, say 'fr' (French),
then you must first use the environment you have created, as guided in :ref:`Getting Started <about-getting-started>`,
in particular :doc:`/about/contribute/install/index` and :doc:`/about/contribute/build/index` sections.

This will give you a foundation environment for:

- Creating a new set of translation language from English source.
- Perform 'make' command to turn translated texts in 'po' files into html files for testing locally.
- Update changes in English texts which have been added by other contributors.

.. note::

   - You might consider translating UI of the software into the target language first
     before approaching the manual translation, in which case,
     refer to the `Process/Translate Blender <https://wiki.blender.org/wiki/Process/Translate_Blender>`__.

   - When checkout the repository for UI for an existing language, you can use the following example::

        mkdir $HOME/blender_translations
        cd $HOME/blender_translations
        svn checkout https://svn.blender.org/svnroot/bf-translations/trunk

      Then editing the ``.po`` file of your language in the ``po`` subdirectory. This will isolate you from other past branches.
   - In case the language doesn't already exists, copy the file ``blender.pot`` to a file of your language, such as::

        cp po/blender.pot po/fr.po
        mkdir -p locale/fr/LC_MESSAGES

   - Read the following section for the use of file ``change_placeholders.sh`` to replace placeholders with your personal details.

   - Commit the changes you've made above::

        svn commit --username <your username> -m "your comment"

   - Remove the current structure::

        cd ..
        rm -fr trunk

   - Checkout only the ``po`` directory to simplify the part you really are interested in, by::

        svn checkout https://svn.blender.org/svnroot/bf-translations/trunk/po

     And starting to use any text editor of your choice, which support PO file format, such as Kate/Kwrite on Linux,
     or using something allows you to create the language highlight, such as Notepad++ on Windows.


Creating a New Set of Translation Files for a Target Language
-------------------------------------------------------------

In this section, we will be examining the process to create a new set of files for a target language.
Below examples shows the process to create a new set of files for French, language code ``fr``, on Linux platform.
Other platforms might vary slightly but should mainly the same.

#. Goto ``https://developer.blender.org`` to create an account for yourself and
   become a developer/translator for the Blender organization.
#. Login the account and create a task with ``todo`` type, addressing an administrator in the *Subscribers* field,
   requesting for a committer right in order to transfer changes to the central repository of the translation team.
#. Open an instance of the console application, such as Gnome-Terminal emulator.
#. Change the current working directory to the directory of ``blender_docs``, where the instance of ``Makefile`` resides.


Trying the Make Process to Create HTML Files In English
-------------------------------------------------------

#. Ensure the previous instance of ``build`` directory is removed, if any exists::

      make clean

#. Convert all the ``rst`` files into ``pot`` translation files::

      make gettext

#. Create ``html`` files::

      make html

#. After this, you can actually view the create html files locally following the prompted instruction, such as::

      xdg-open <path to your English manual>/blender_docs/build/html/index.html


Creating the Language Entry in the HTML Menu
--------------------------------------------

#. Create an entry for the language in the html menu by opening file ``./resources/theme/js/version_switch.js``
   (assuming you are at the ``blender_docs`` subdirectory).
#. Find the table for the languages in ``var all_langs = {..};``.
#. Enter the entry: ``"fr": "Fran&ccedil;ais",``, (``"fr": "François"``).
   (Notice the Unicode characters).
#. To find out about changes in the local repository::

      svn status

#. Enter your password::

      svn commit --username <your username> -m "your comment"

#. Bring your local repository up to the most recent version of changes, including the one you have just done::

      svn update .


Setting the Local Configuration File
------------------------------------

#. Open a text editor to enter the following texts,
   change the language code to whatever the language you will be translating:

   .. code-block:: python
      :linenos:

      language = 'fr'
      locale_dirs = ['locale/']
      gettext_compact = True

#. Save this file as ``conf.py`` in the ``blender_docs`` directory, where ``Makefile`` resides.
#. Tells ``svn`` to ignore this file when performing operations by executing this shell command::

      svn propset svn:ignore conf.py .


Generating the Set of Files for the Target Language
---------------------------------------------------

#. Check out the current translation repository using the command::

      svn checkout https://svn.blender.org/svnroot/bf-manual-translations/trunk/blender_docs/locale

   This will download all language sets available in the repository into the ``locale`` directory of your drive.
   You can go to the ``locale`` directory to see the hidden subdirectory ``.svn`` within it, together with directories of languages.
   You'll need to add your own set of files for the language you're trying to translating to.

#. From the ``blender_docs`` directory to generate a set of files for ``fr`` language::

      make gettext
      sphinx-intl update -p build/locale -l fr

    These files are still in English only, with all ``msgstr`` entries blank.

#. Submit new set of files to the central repository::

      cd locale
      svn add fr
      svn commit --username <your username> -m "Initial commit language set of files for French"

#. You don't need all other languages being there, so remove the locale directory for the time being::

      rm -fr locale

   We will download this new set of language as guided in the next section.

.. note::

   - It is recommended you make two environment variables for these directories, in the ``.bashrc``::

		  export BLENDER_MAN_EN=$HOME/<directory to make file directory above>/blender_docs
		  export BLENDER_MAN_FR=$BLENDER_MAN_EN/locale

	  To make it more convenient for changing or scripting batch/shell commands
	  for the process of translation and reviewing results.

   - Newly generated files will contain some placeholders for authors and revision dates etc.
     If you find the job of replacing them repetitive, make use of the script ``change_placeholders.sh``
     in the subdirectory ``~/blender_docs/toos_maintenance``, make a copy of that to your local ``bin`` directory and
     replace all values that were mentioned in the file with your specific details,
     then after each change to a file, you would do following commands::

        $HOME/bin/change_placeholders.sh $BLENDER_MAN_FR
        make -d --trace -w -B -e SPHINXOPTS="-D language='fr'" 2>&1

      To update the file with the your personal details, revision date and time,
      plus generating the html files for your language, which you can view using your Internet browser.
