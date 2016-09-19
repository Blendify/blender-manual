
************
Introduction
************

.. figure:: /images/editors_file_editor.png

   File Browser.


Usage
=====

The file browser has multiple uses, while its often used for save/load,
it can be kept open for other uses too.

Use cases include:

- Opening and Saving Blend files.
- Import/Export other file formats.
- Picking new locations for existing file-paths (images, video, fonts... etc).
- Browsing inside other blend-files, when using :doc:`Linked Libraries </data_system/linked_libraries>`.

You can also keep the File Browser open, as with any other editor type.
In this case the button to load a file is removed.

The main purpose of this is to be able to drag media files.

- Images into the :ref:`editors-sequencer-index` (to set background or apply as material textures).
- Media files into the :ref:`editors-sequencer-index`.


.. _file-browser-open-sequence:

Opening an Image Sequence
-------------------------

The filename of the images must contain a digit, indicating the frame.
The sequence could be opened by the selection of the images and
by the confirmation with the *Open image* button or :kbd:`Return`.

.. To load image sequence in any of the supported image
   file formats, first click on the first frame and then Accept.
   Then change the Source to Image Sequence, and enter the ending frame number of this sequence.


Header
======

Navigation icon buttons
   Tools for navigation of files.

   Left Arrow
      Move to previous folder.
   Right Arrow
      Move to next folder.
   Up Arrow
      Move up to parent directory.
   Cycle Arrows
      Refresh current folder.

Create Directory
   Prompts you to enter the name of a newly created directory :kbd:`I`
Recursion
   The number of directory levels to show at once.

   - None (only the current directory)
   - One level
   - Two Levels
   - Three levels

Display type
   Controls how files are displayed.

   - Short list
   - Detailed list
   - Thumbnails (show :doc:`previews </editors/file_browser/previews>`)
Display size
   The size of thumbnails or the width of columns.

   Tiny, small, normal, large
Sorting
   Sorts files by on of the following methods:

   - Alphabetically
   - By file type
   - By Date of last edit
   - By file size
Show hidden
   Shows files that start with ``.`` :kbd:`H`.
File filtering
   Filters files by type.

   - Folders
   - blend-files
   - Backup blend-files
   - Images
   - Movie files
   - Scripts
   - Font files
   - Music files
   - Text files

   Search box
      Filter files by name.


File Region
===========

File Path
   Auto Complete :kbd:`Tab` will auto-complete an existing paths.
File Name
   Textbox to edit the file name and extension.
   If the background is red, a file with same name already exist in the folder.
Increment Filename ``+``, ``-``
   Adds/increase or removes/decreases a trailing number to your file name 
   (use to make *versions* of a file).
Execute
   The main button to Open Directory/File or Save (As) :kbd:`Return`.

   - :kbd:`Shift-LMB` -- Open the file externally (selected in :doc:`/preferences/file`).
   - :kbd:`Alt-LMB` -- Open the directory externally (using the systems file manager).
Chancel
   Cancels the Open or Save file selection and closes the File browser :kbd:`Esc`.


Tool Shelf
==========

The left region displays different ways to find files and several options.

System
   The system menu contains a list of drives that are available
   to navigate through to find files. Click on one to jump to that drive.
System Bookmarks
   Bookmarks that are common for a particular operating system.
Bookmarks
   These are folders that you want to be able to access often without 
   having to navigate to them in the file browser. 
   To add a directory to the bookmark menu, navigate to that folder,
   then click the *Add* button.
   To remove a folder from the list, simply click the *X* icon next to it.
Recent
   This is a list of recently accessed folders. You can control how many folders appear in this
   list by going to the *File* tab of the :doc:`User Preferences </preferences/file>`,
   in the box labeled *Recent Files*.

.. (todo) link open/save file options.


Main Region
===========

Navigation
----------

Parent Directory :kbd:`Backspace`, :kbd:`P`
   Takes you up one level of directory.


Arrow Keys
^^^^^^^^^^

With :kbd:`Alt` pressed. ToDo.


Selection
---------

Select
   Both :kbd:`LMB` and :kbd:`RMB` works.
(De)select All :kbd:`A`
   Toggles selecting all files.


Arrow Keys
^^^^^^^^^^

It is also possible to select/deselect files by "walking" through them using the arrow keys.

- Just using an arrow key, the next file in the chosen direction will be selected and all others deselected.
- Holding down :kbd:`Shift` while doing this does not deselect anything so it extends to the selection,
  plus it allows to deselect files by navigating into a block of already selected ones (minimum two files in sequence).
- Holding down :kbd:`Ctrl-Shift` further selects/deselects all files in-between.

If no file is selected, the arrow key navigation selects the first or last file in the directory,
depending on the arrow direction.

If you select a directory and hit enter, you will now go into that directory
(and highlighting 'parent' entry will bring you up one level).


File Management
---------------

Delete Files :kbd:`Delete`, :kbd:`X`
   Delete the currently selected files.
Rename :kbd:`Ctrl-LMB`
   Can be used on a file or directory to rename it.
