
*************
Opening Files
*************

.. figure:: /images/File-openwindow.jpg

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`File --> Open`
   | Hotkey:   :kbd:`Ctrl-O` or :kbd:`F1`


To load a Blender file from disk, press :kbd:`Ctrl-O` or :kbd:`F1`.
The *File Browser* window, as shown above, will open.

The upper text box displays the current directory path,
and the lower text box contains the selected filename.

The + and - buttons to the right of the file name allow you to cycle through numbered files
by increasing or decreasing the number at the end of the file name.

Pressing :kbd:`P` or clicking the up-arrow icon above the list of files will move you up to the parent directory.

Click on a folder to go inside of it,
Click on a file then click the *Open Blender File* button or press :kbd:`Return` to open it

Clicking *Cancel* will close the file browser window and return to the program.

.. warning::

   Blender expects that you know what you are doing! When you load a file, you
   are **not** asked to save unsaved changes to the scene you were previously
   working on, completing the file load dialog is regarded as being enough
   confirmation that you didn't do this by accident.


Sidebar
=======

The left sidebar displays different ways to find files and several options.

System
   The system menu contains a list of drives that are available to navigate through to find
   files. Click on one to jump to that drive.
Bookmarks
   These are folders that you want to be able to access often without having to navigate to them
   in the file browser. To add a directory to the bookmark menu, navigate to that folder,
   then click the *Add* button.
   To remove a folder from the list, simply click the *X* icon next to it.
Recent
   This is a list of recently accessed folders. You can control how many folders appear in this
   list by going to the *File* tab of the :doc:`User Preferences </preferences/file>`,
   in the box labeled *Recent Files*.


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


Header
======

The Header contains several tools for navigation of files. The four arrow icons allow you to:

- *Move to previous folder*
- *Move to next folder*
- *Move up to parent directory*
- *Refresh current folder*

Create a new folder inside the current one by clicking the *Create New Directory* button.

The other icons allow you to control what files are visible and how they are displayed. You can:

- *Display files as a short list*
- *Display files as a detailed list*
- *Display files as thumbnails*

You can sort files:

- *Alphabetically*
- *By file type*
- *By Date of last edit*
- *By file size*

Click the funnel icon to toggle which file types are shown:

- *Folders*
- *Blend files*
- *Images*
- *Movie files*
- *Scripts*
- *Font files*
- *Music files*
- *Text files*


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

