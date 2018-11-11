.. highlight:: sh

**********
Contribute
**********

Starting from scratch
=====================

If the language you want to translate has not been started by someone else already and you wish to create a set of new files for the desired language, say 'vi' (Vietnamese), then you must first use the environment you've created, as guided in :ref:`Getting Started <about-getting-started>`, in particular :doc:`/about/contribute/install/index` and :doc:`/about/contribute/build/index` sections.

This will give you a foundation environment for:

- creating a new set of translation language from English source
- perform 'make' command to turn translated texts in 'po' files into html documents for testing locally
- update changes in English texts which have been added by other contributors

.. note::

   You might consider to translating UI of the software into the target language first
   before approaching the manual translation, in which case, refer to the
   `Process/Translate Blender <https://wiki.blender.org/wiki/Process/Translate_Blender>`__


Creating a new set of translation files for a target language
-------------------------------------------------------------
In this section, we will be examining the process to create a new set of files for a target language. Below examples shows the process to create a new set of files for Vietnamese, language code ``vi``, on Linux platform. Other platforms might vary slightly but should mainly the same.

- Goto ``https://developer.blender.org`` to create an account for yourself and become a developer/translator for the Blender organization.
- Login the account and create a task with ``todo`` type, addressing **Aaron Carlisle (Blendify)** in the **Subscribers** field, requesting for a committer right in order to transfer changes to the central repository of the translation team.
- Open an instance of the terminal application, such as 'gnome-terminal' emulator.
- Change the current working directory to the directory of ``blender_docs``, where the instance of ``Makefile`` resides.
- Perform the following commands at the prompt:

   Creating the local html files for testing, in English

      - Perform ``make clean`` -- to ensure the previous instance of ``build`` directory is removed, if any exists
      - Perform ``make gettext`` -- to convert all the ``rst`` files into ``pot`` translation files.
      - Perform ``make html`` -- to create ``html`` files.
      - After this, you can actually view the create html files locally following the prompted instruction, such as: ``xdg-open <path to your English manual>/blender_docs/build/html/index.html``

   Creating the language entry in html menu

      - Create an entry for the language in the html menu by opening file ``./resources/theme/js/version_switch.js`` (assuming you are at the ``blender_docs`` subdirectory).
      - Find the table for the languages in ``var all_langs = {..};``.
      - Enter the entry: ``"vi": "Ti&#x1EBF;ng Vi&#x1EC7;t"``, (``"vi": "Tiếng Việt"``). Notice the Unicode characters in either hex codes ``&#x..;`` (with ``x`` after the prefix ``&#`` ) or decimal ``&#..;`` (with no ``x`` after the prefix ``&#`` ). Take note also the ASCII sort order of entries and place yours in the correct index place. You can come to `Unicode Character Search <https://www.fileformat.info/info/unicode/char/search.htm>`__ to enter the characters and find the appropriate html hex/decimal codes.
      - Perform ``svn status`` to find out about changes in the local repository
      - Perform ``svn commit --username <your username> -m "your comment"``, enter your password.
      - Perform ``svn update .`` to bring your local repository up to the most recent version of changes, including the one you have just done.

   Creating the set of files for the target language of choice, getting them ready for translation works

      - ``sphinx-intl update -p build/locale -l vi`` -- make a ``locales`` (*plural*) directory and created subdirectories for the 'vi' (Vietnamese) language. Copy contents of ``pot`` files in ``build/locale`` into the ``locales/vi`` subdirectory and naming them as ``po`` files.


- Create a different root directory for the translation repository, eg. ``$HOME/translation_files``
- Change the current working directory to this one. eg. ``cd $HOME/translation_files``
- Check out the current translation repository using the command:

   - ``svn checkout https://svn.blender.org/svnroot/bf-manual-translations/trunk/blender_docs``
   - This will allow us to move the subdirectory ``vi`` created above for the Vietnamese language into ``locale`` (*singular*) subdirectory and commit to the translation repository.

- Move the ``vi`` subdirectory in ``locales`` (*plural*) that we created above to this ``locale`` (*singular*) subdirectory, using command:
   - ``mv <directory to make file directory above>/blender_docs/locales/vi $HOME/translation_files/locale/``
- Move the current working directory to the translation directory, eg. ``cd $HOME/translation_files/locale/vi``
- Perform ``svn add --force * --auto-props --parents --depth infinity -q`` which will add all files under the ``vi`` subdirectory into the local repository.
- Perform ``svn commit --username <your username> -m "your comment"``, enter your password.
- Remove this repository from your hdd. You don't need this any more, especially with all the languages that is **NOT** yours, using ``rm $HOME/translation_files/locale``
- Check out a new instance for your language only, using:
   - Assuming you are now in the subdirectory of ``$HOME/translation_files/``
   - ``mkdir locale`` to recreate the ``locale`` subdirectory.
   - ``cd locale`` to change the current working directory into ``locale`` subdirectory.
   - From here, perform: ``svn checkout https://svn.blender.org/svnroot/bf-manual-translations/blender_docs/locale/vi``
   - This will creates subdirectory ``vi`` with all files you've checked in earlier on.
   - Perform ``cd vi`` and ``ls -al``. You should see a hidden subdirectory ``.svn`` under here.
- Soft link the ``locale`` subdirectory (with ``vi`` in it) to the make directory for building html files in ``blender_docs``, eg:
   - ``ln -sfn $HOME/translation_files/locale <directory to make file directory above>/blender_docs``
   - Perform ``make -d --trace -w -B -e SPHINXOPTS="-D language='vi'" 2>&1`` to make the html version for the Vietnamese language.
   - View this using ``xdg-open <path to your english manual>/blender_docs/build/html/index.html``

- Go back to the ``$HOME/translation_files/vi/LC_MESSAGES`` and use a text editor to start translating ``index.po``.
- Go back to ``<directory to make file directory above>/blender_docs`` to perform the ``make -d --trace -w -B -e SPHINXOPTS="-D language='vi'" 2>&1`` and refresh the browser to see changes.
- It is recommended you make two environment variables for these directories, in the ``.bashrc``

   - ``export BLENDER_MAN_EN=<directory to make file directory above>/blender_docs``
   - ``export BLENDER_MAN_VI=$HOME/translation_files/vi``

   to make it more convenient for changing or scripting batch/shell commands for the process of translation and reviewing results.

- There are placeholders in ".po" files that you might find the process of changing them manually repetitive, in which case, you could find the following portion of bash-shell code helpful:

.. code-block:: sh
   :linenos:

   #!/bin/bash
   YOUR_NAME="Your Name"
   YOUR_EMAIL="your-email@some-server.com"
   YOUR_ID="$YOUR_NAME <$YOUR_EMAIL>"
   YOUR_TRANSLATION_TEAM="your town/city, Country <$YOUR_EMAIL>"
   YOUR_LANGUAGE_CODE="vi"

   date_bin=/usr/bin/date
   time_now=$($date_bin +"%F %H:%M%z")
   po_revision_date_value="PO-Revision-Date: ${time_now}"
   declare -A pattern_list=(
   ["FIRST AUTHOR.*SS>"]="$YOUR_ID"
   ["Last-Translator.*>"]="Last-Translator: $YOUR_ID"
   ["PO-Revision-Date.*[[:digit:]]\{4\}"]="$po_revision_date_value"
   ["PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE"]="$po_revision_date_value"
   ["Language-Team:.*>"]="Language-Team: $YOUR_TRANSLATION_TEAM"
   )

   re_language_code="Language:.*vi"
   language_code="\"Language: vi\\\\n\"\n"
   declare -A pattern_insert=(
   ["\"MIME-Version"]="$language_code\"MIME-Version"
   )

   function findChangedFiles()
   {
      if [ -d ".git" ]; then
         changed_list=$(git status | grep 'modified' | awk '{ print $2 }' | grep ".po")
      elif [ -d ".svn" ]; then
         changed_list=$(svn status | grep 'M' | awk '{ print $2 }' | grep ".po")
      else
         changed_list=""
      fi
   }

   function replaceAllChangedFiles()
   {
      findChangedFiles
      for f in $changed_list; do
         replaceRegularStrings $f
         insertLanguageCode $f
         listFileContent $f
      done
   }

   function replaceRegularStrings()
   {
      changed_file=$1
      for i in "${!pattern_list[@]}"; do
         pattern="$i"
         value="${pattern_list[$i]}"
         #echo "$pattern => $value"
         sed -i "s|${pattern}|${value}|g" $changed_file
      done
   }

   function insertLanguageCode()
   {
      changed_file=$1
      current_line=$(grep $re_language_code $changed_file)
      #echo "current_line=[$current_line]"
      if [ "$current_line" != "" ]; then
         echo "has Language code"
      else
         for i in "${!pattern_insert[@]}"; do
               pattern="$i"
               value="${pattern_insert[$i]}"
               #echo "Replacing: $pattern => $value"
               sed -i "s|${pattern}|${value}|g" $changed_file
         done
      fi
   }

   function listFileContent()
   {
      changed_file=$1
      #cat $changed_file
      echo "Updated file: [$changed_file]"
   }

   cwd=$1
   if [[ ! -z  "$cwd" ]]; then
      echo "Using $cwd"
      cd $cwd
   else
      echo "Using $BLENDER_MAN_EN/locale"
      cd "$BLENDER_MAN_EN/locale"
   fi

   replaceAllChangedFiles


Installing existing language
============================

In this section, French (``fr``) is used for examples. However, it can be replaced with other
`languages codes <https://www.gnu.org/software/gettext/manual/html_node/Usual-Language-Codes.html>`__.
So, be sure to change the ``/fr`` suffixes in this guide to the language you are translating!

To see which languages are currently available, you can browse the repository:
https://developer.blender.org/diffusion/BMT/browse/trunk/blender_docs/locale

.. note::

   First of all, it is assumed that you have the manual already building.
   If you have not done this already go back too
   the :ref:`Getting Started <about-getting-started>` section.


Language Files
--------------

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

   For Linux users you will have to check with
   your distribution's software center for a version of Poedit.
   This editor is only a recommendation. Experience shows the side effects of altering original text could potentially creating harvocs for your 'po' files, especially when updates are required. This is extremely important as the Blender's documentation is in the process of updating for the next release. It is recommended to use ``kate`` or ``kwrite`` instead. Other platforms can use some text editor supporting the syntax highlighting for PO files, or allowing you to create a custom one (such as notepad++ of Windows).




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
