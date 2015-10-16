.. _editors-file_browser:

###############
  File Browser
###############


Usage
=====

The file browser has multiple uses, while its often used for save/load,
it can be kept open for other uses too.


Use cases include:

- Opening and Saving Blend files.
- Import/Export other file formats.
- Picking new locations for existing file-paths (images, video's, fonts... etc).
- Browsing inside other ``.blend`` files, when using :doc:`/data_system/linked_libraries`.

You can also keep the file selector open, as with any other window type.
In this case the buttons to load a files is removed.

The main purpose of this is to be able to drag media files.

- Images into the :ref:`editors-sequencer-index` (to set background or apply as material textures).
- Media files into the :ref:`editors-sequencer-index`.


Shortcuts
---------


Path Fields
^^^^^^^^^^^

Increment Filename (:kbd:`Plus`, :kbd:`Minus`)
   Adds or removes a trailing number to your file name.
   *(use to make *versions* of a file)*.
Auto Complete (:kbd:`Tab`)
   When in the directory editor, this will auto-complete existing paths.

----


Navigation
^^^^^^^^^^

Enter Path (:kbd:`Return`)
   Enter the directory.
Parent Directory (:kbd:`Backspace` or :kbd:`P`)
   Takes you up one directory.

----


View
^^^^

Hidden Files (:kbd:`H`)
   Toggle displaying hidden files.

----


Selection
^^^^^^^^^

(De)select All (:kbd:`A`)
   Toggles selecting all files.

----


File Management
^^^^^^^^^^^^^^^

Delete Files (:kbd:`Delete` or :kbd:`X`)
   Delete the currently selected files.
Rename (:kbd:`Ctrl-LMB`)
   Can be used on a file or directory to rename it.
Create Directory (:kbd:`I`)
   Prompts you to enter the name of a newly created directory.


Interface
=========


Toolbar
-------


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


Header
------

.. Editors Note:
   This has been taken from older docs,
   but is really just 'enumerating lists' which should be avoided.
   ::
   Some of these lists could be summerized.


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

  .. hint::

     Along with all supported image & video formats,
     thumbnails for fonts and ``.blend`` are displayed too.

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


