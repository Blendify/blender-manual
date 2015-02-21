
****************
File Preferences
****************

The *File Preferences* tab allows you to configure auto-save preferences and set default file paths for
.blend files, rendered images, and more.


.. figure:: /images/Manual-Interface-Configuration-File-UserPreferencesFile.jpg
   :width: 650px


File Paths
==========

When you work on an important project, it is wise to configure it.
Set default paths for the different file types you will be using.

Here is an example of a configuration:


Fonts
   ``//fonts/``
Textures
   ``//textures/``
Texture Plugins
   ``//plugins/texture/``
Sequence Plugins
   ``//plugins/sequence/``
Render Output
   ``//renders/``
Scripts
   ``//scripts/``
Sounds
   ``//sounds/``
Temp
   ``//tmp/``


Note that blender wont create your project structure automatically.
You need to create all directories manually in your file browser.


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


Save & Load
===========

Relative Paths
   By default, external files use a :doc:`relative path </data_system/files/relative_paths>`. 
Compress File
   Compress ``.blend`` file when saving.
Load UI
   Default setting is to load the Window layout
   (the :doc:`Screens </getting_started/basics/interface/screens>`) of the saved file.
   This can be changed individually when loading a file from the
   *Open Blender File* panel of the *File Browser* window.


.. figure:: /images/Manual-Interface-Configuration-File-filefilter-25.jpg

   File extension filter


Filter File Extensions
   By activating this, file dialog windows will only show appropriate files
   (i.e. ``.blend`` files when loading a complete *Blender* setting).
   The selection of file types may be changed in the file dialog window.
Hide Dot File/Datablocks
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

:doc:`Read more about Auto Save options </getting_started/basics/undo_and_redo#save_and_auto_save>`

