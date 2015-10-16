
*************
Opening Files
*************

.. figure:: /images/File-openwindow.jpg


Usage
=====

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`File --> Open`
   | Hotkey:   :kbd:`Ctrl-O` or :kbd:`F1`


The upper text box displays the current directory path,
and the lower text box contains the selected filename.

.. warning::

   For Linux and Mac-OSX users:

   When existing  you are **not** asked to save unsaved changes to the scene you were previously working on.
   So take care to save your work.

   On MS-Windows there is a :ref:`preferences-save_load` option to warn on exit.


Options
=======

Load UI
   Inside each .blend file, Blender saves the user interface arrangement.
   By default, this saved UI is loaded, overriding any user defaults or current screen layouts that you have.
   If you want to work on the blend file using your own defaults, start a fresh Blender,
   then open the file browser and turn off the *Load UI* button,
   and then open the file.
Trusted Source
   When enabled, Python scripts and drivers that may be included in the file will be run automatically.
   Enable this only if you created the file yourself,
   or you trust that the person who gave it to you did not include any malicious code with it.
   See :doc:`/advanced/scripting/python/security` to configure default trust options.



.. _other-file-open-options:

Other File Open Options
=======================

From the *File* menu, you can also open files with the following tools:

Open Recent
   Lists recently used files. Click on one to load it in.
Recover Last Session
   This will load the ``quit.blend`` file Blender automatically saved just before exiting.
   This option enables you to recover your last work session if, for example, you closed Blender by accident.
Recover Auto Save
   This will allow you to open an automatically saved file to recover it.

.. seealso::

   :ref:`Auto Saves <recover-options-for-files>`

