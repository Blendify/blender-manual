.. _bpy.types.UserPreferencesFilePaths:
.. _prefs-file-paths:

**********
File Paths
**********

The *File* tab in *Preferences* allows you to configure auto-save preferences
and set default file paths for blend-files, rendered images, and more.

Locations for various external files can be set for the following options:

.. figure:: /images/preferences_file_tab.png

   Preferences File Paths tab.


Data
====

Fonts
   Default location when searching for font files.
Textures
   Default location when searching for image textures.
Scripts
   An additional location to search for Python scripts. See `Scripts Path`_ below.
Sounds
   Default location when searching for sound files.
Temporary Files
   The location where temporary files are stored.


Scripts Path
------------

By default Blender looks in several directories (platform dependent) for scripts.
By setting a user script path in the preferences an additional directory is used.
This can be used to store your own scripts and add-ons independently of the current Blender version.

You will need to create specific subfolders in this path which match the structure of the ``scripts``
folder found in Blender's installation directory.

The following subdirectories will be used when present:

``startup/``
   Modules in this folder will be imported on startup.
``addons/``
   Add-ons located here will be listed in the add-ons preferences.
``modules/``
   Modules in this folder can be imported by other scripts.
``presets/``
   Presets in this folder will be added to existing presets.

.. note::

   Blender will need to be restarted for all changes to the users scripts to take effect.

.. warning::

   Be sure that you have the right privileges for running the executable accessing the path defined.
   On Windows for instance, if the option "Run this program as an administrator" is enabled for the executable,
   it will lead to a failure to open the editor due to a limitation within the OS User Account Control.
   Running a program with elevated privileges is potentially dangerous!


Render
======

Render Output
   Where rendered images/videos are saved.
Render Cache
   The location where cached render images are stored.


Applications
============

Image Editor
   The path to an external program to use for image editing.
Animation Player
   The path to an external program to use for playback of rendered animations.

.. note:: If these folders do not exist, they will *not* be created automatically.


Development
===========

Only Visible when *Developer Extras* is enabled.

I18n Branches
   The path to the ``/branches`` directory of your local svn-translation copy, to allow translating from the UI.
