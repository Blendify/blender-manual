
****************
File Preferences
****************

The *File Preferences* tab allows you to configure auto-save preferences and set default file paths for
.blend files, rendered images, and more.


.. figure:: /images/user_prefs-file_tab.png
   :width: 650px


.. _prefs-file_paths:

File Paths
==========

Locations for various external files can be set for the following options:

Fonts
   Default location when searching for font files.
Textures
   Default location when searching for image textures.
Render Output
   Where rendered images/videos are saved.
Scripts
   An additional location to search for Python scripts. See `Scripts Path`_ below.
Sounds
   Default location when searching for sound files.
Temp
   The location where temporary files are stored.
Render Cache
   The location where cached render images are stored.
I18n Branches
   The path to the ``/branches`` directory of your local svn-translation copy, to allow translating from the UI.
Image Editor
   The path to an external program to use for image editing.
Animation Player
   The path to an external program to use for playback of rendered animations.


.. note:: If these folders do not exist, they will *not* be created automatically.


Scripts Path
------------

By default Blender looks in several directories (OS dependant) for scripts.
By setting a user script path in the preferences an additional directory is looked in. This
can be used to store certain scripts/templates/presets independently of the currently used
Blender Version.

Inside the specified folder specific folders have to be created to tell Blender what to look
for where. This folder structure has to mirror the structure of the scripts folder found in
the installation directory of Blender:

- scripts
- add-ons
- modules
- presets
- camera
- cloth
- interface_theme
- operator
- render
- ...
- startup
- templates
  Not all of the folders have to be present.


Auto Execution
==============

Python scripts (including driver expressions) are not executed by default for security reasons.

Auto Run Python Scripts
   You may choose to ignore these security issues and allow scripts to be executed automatically.
Excluded Paths
   Blend files in these folders will *not* automatically run Python scripts.
   This can be used to define where blend files from untrusted sources are kept.

.. seealso:: :doc:`/advanced/scripting/python/security`


.. _prefs-save_load:

Save & Load
===========

Relative Paths
   By default, external files use a :doc:`relative path </data_system/files/relative_paths>`.
Compress File
   Compress ``.blend`` file when saving.
Load UI
   Default setting is to load the Window layout
   (the :doc:`Screens </interface/screens>`) of the saved file.
   This can be changed individually when loading a file from the
   *Open Blender File* panel of the *File Browser* window.


.. figure:: /images/Interface-Configuration-File-filefilter-25.jpg

   File extension filter


Filter File Extensions
   By activating this, file dialog windows will only show appropriate files
   (i.e. ``.blend`` files when loading a complete *Blender* setting).
   The selection of file types may be changed in the file dialog window.
Hide Dot File/Data-blocks
   Hide file which start with ``.`` on file browsers (in Linux and Apple systems, ``.`` files are hidden).
Hide Recent Locations
   Hides the *Recent* panel of the *File Browser* window which displays recently accessed folders.
Show Thumbnails
   Displays a thumbnail of images and movies when using the *File Browser*.


Auto Save
=========

Save Versions
   Number of versions created for the same file (for backup).
Recent Files
   Number of files displayed in :menuselection:`File --> Open Recent`.
Save Preview Images
   Previews of images and materials in the *File Browser* window are created on demand.
   To save these previews into your ``.blend`` file,
   enable this option (at the cost of increasing the size of your ``.blend`` file).
Auto Save Temporary File
   Enable Auto Save (create a temporary file).
Timer
   Time to wait between automatic saves.

:doc:`Read more about Auto Save options </troubleshooting/recover>`

