
***********************
Blender Manual Releases
***********************

.. (TODO) Check information on the release process.


Release Checklist
=================

- Increase the ``conf.py: blender_version`` variable.
- Increase the ``dev`` version in ``resources/versions.json`` and
   add the former version as a past release.
- Update the splash image: ``interface_splash_current.png``.
- Note the revision numbers below.


Past Releases
=============

2.75
----

:Main: rBM634
:Languages: None

2.76
----

:Main: rBM1413
:Languages: rBMT208

2.77
----

:Main: rBM2856
:Languages: rBMT517

2.78
----

:Main: rBM3427
:Languages: rBMT1443

2.79
----

:Main: rBM4466
:Languages: rBMT3170


Adding a Language
=================

This guide describes how to add a new language 
in case the language you want to translate has not been started by someone else already and
you wish to create a set of new files for the desired language.
(It is assumed that you that you have the manual already building.)

Below examples shows the process of creating a new set of translation files for Vietnamese,
with the language code ``vi``, on Linux. On other OSs it might vary slightly but should mainly be the same.

1. Goto ``https://developer.blender.org`` to create an account for yourself and
   become a developer/translator for the Blender organization.
2. Login the account and create a task with ``todo`` type, addressing an administrator in the **Subscribers** field,
   requesting for a committer right in order to transfer changes to the central repository of the translation team.
3. Open an instance of the console application, such as Gnome-Terminal emulator.
4. Change the current working directory to the directory of ``blender_docs``, where the instance of ``Makefile`` resides.
5. Perform the following commands at the prompt:

   Creating the local html files for testing, in English:

   - Perform ``make clean`` -- to ensure the previous instance of ``build`` directory is removed, if any exists
   - Perform ``make gettext`` -- to convert all the ``rst`` files into ``pot`` translation files.
   - Perform ``make html`` -- to create ``html`` files.
   - After this, you can actually view the create html files locally following the prompted instruction,
     such as: ``xdg-open <path to your English manual>/blender_docs/build/html/index.html``

   Creating the language entry in html menu:

   - Create an entry for the language in the html menu by opening file ``./resources/theme/js/version_switch.js``
     (assuming you are at the ``blender_docs`` subdirectory).
   - Find the table for the languages in ``var all_langs = {..};``.
   - Enter the entry: ``"vi": "Ti&#x1EBF;ng Vi&#x1EC7;t"``, (``"vi": "Tiếng Việt"``).
     (Notice the Unicode characters).
   - Perform ``svn status`` to find out about changes in the local repository.
   - Perform ``svn commit --username <your username> -m "your comment"``, enter your password.
   - Perform ``svn update .`` to bring your local repository up to the most recent version of changes,
     including the one you have just done.

   Creating the set of files for the target language of choice, getting them ready for translation works:

   - ``sphinx-intl update -p build/locale -l vi`` -- make a ``locales`` (*plural*) directory and
     created subdirectories for the 'vi' (Vietnamese) language.
     Copy contents of ``pot`` files in ``build/locale`` into the ``locales/vi`` subdirectory and naming them as ``po`` files.


- Create a different root directory for the translation repository, e.g. ``$HOME/translation_files``
- Change the current working directory to this one. e.g. ``cd $HOME/translation_files``
- Check out the current translation repository using the command:

  - ``svn checkout https://svn.blender.org/svnroot/bf-manual-translations/trunk/blender_docs``
  - This will allow us to move the subdirectory ``vi`` created above for the Vietnamese language into
     ``locale`` (*singular*) subdirectory and commit to the translation repository.

- Move the ``vi`` subdirectory in ``locales`` (*plural*) that we created above to this ``locale`` (*singular*) subdirectory,
  using command: ``mv <directory to make file directory above>/blender_docs/locales/vi $HOME/translation_files/locale/``
- Move the current working directory to the translation directory, e.g. ``cd $HOME/translation_files/locale/vi``
- Perform ``svn add --force * --auto-props --parents --depth infinity -q``
  which will add all files under the ``vi`` subdirectory into the local repository.
- Perform ``svn commit --username <your username> -m "your comment"``, enter your password.
- Remove this repository from your drive. You don't need this any more,
  especially with all the languages that is **not** yours, using ``rm $HOME/translation_files/locale``
- Check out a new instance for your language only, using:
  - Assuming you are now in the subdirectory of ``$HOME/translation_files/``
  - ``mkdir locale`` to recreate the ``locale`` subdirectory.
  - ``cd locale`` to change the current working directory into ``locale`` subdirectory.
  - From here, perform: ``svn checkout https://svn.blender.org/svnroot/bf-manual-translations/blender_docs/locale/vi``
  - This will creates subdirectory ``vi`` with all files you've checked in earlier on.
  - Perform ``cd vi`` and ``ls -al``. You should see a hidden subdirectory ``.svn`` under here.
- Soft link the ``locale`` subdirectory (with ``vi`` in it) to the make directory for building html files in ``blender_docs``, e.g:
  - ``ln -sfn $HOME/translation_files/locale <directory to make file directory above>/blender_docs``
  - Perform ``make -d --trace -w -B -e SPHINXOPTS="-D language='vi'" 2>&1`` to make
    the html version for the Vietnamese language.
  - View this using ``xdg-open <path to your english manual>/blender_docs/build/html/index.html``

- Go back to the ``$HOME/translation_files/vi/LC_MESSAGES`` and use a text editor to start translating ``index.po``.
- Go back to ``<directory to make file directory above>/blender_docs`` to perform
  the ``make -d --trace -w -B -e SPHINXOPTS="-D language='vi'" 2>&1`` and refresh the browser to see changes.
- It is recommended you make two environment variables for these directories, in the ``.bashrc``

  - ``export BLENDER_MAN_EN=<directory to make file directory above>/blender_docs``
  - ``export BLENDER_MAN_VI=$HOME/translation_files/vi``

  to make it more convenient for changing or scripting batch/shell commands for
  the process of translation and reviewing results.

- There are placeholders in po-files that you might find the process of changing them manually repetitive,
  in which case, you could find the bash-shell script which can be in ``tools_maintenance/add_language.sh`` helpful.
