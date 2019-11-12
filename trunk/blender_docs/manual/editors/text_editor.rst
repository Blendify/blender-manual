.. _bpy.types.SpaceTextEditor:
.. _bpy.ops.text:

***********
Text Editor
***********

Blender has a *Text Editor* among its editor types,
accessible via the *Editor type* menu, or the shortcut :kbd:`Shift-F11`.


Header
======

The newly opened Text editor is empty, with a very simple header.
More options become available when a text file is created or opened.

.. _fig-text-header-plain:

.. figure:: /images/editors_text-editor_header.png

   Text header.

.. _fig-text-header-full:

.. figure:: /images/editors_text-editor_header-loaded.png

   Text header with a text loaded.

Editor type
   The standard editor selection button.
Menus
   Editor's menus.
Text
   A :ref:`data-block menu <ui-data-block>` to select a text or to create a new one.
   After that the header will change.
Show
   The following three buttons toggle display options:
   line numbers, word-wrap text and syntax highlighting.

Register
   Registers the current text data-block as a module on loading (the text name must end with ``.py``).
   Read more about the registration of Python modules in
   `API documentation <https://docs.blender.org/api/current/info_overview.html#registration>`__.

.. _editors-text-run-script:

Run Script / Script Node Update
   Executes the text as a Python script :kbd:`Alt-P`. See `Template Menu`_.


View Menu
---------

Sidebar :kbd:`N`
   Show or hide the :ref:`Sidebar <ui-region-sidebar>`.
Line Numbers
   Displays the text file's line numbers on the left of the `Main View`_.
Word Wrap
   Wraps words that are too long to fit into the horizontal space by pushing them to a new "pseudo line".
Syntax Highlighting
   Colors special words, in the `Main View`_, that are used in the Python programming language.
Highlight Line
   Emphasizes the active line by altering the color of the background.
Navigation
   Top :kbd:`Ctrl-Home`
      Moves the view and cursor to the start of the text file.
   Bottom :kbd:`Ctrl-End`
      Moves the view and cursor to the end of the text file.
   Line Begin :kbd:`Home`
      Moves the cursor to the start of the current line.
   Line End :kbd:`End`
      Moves the cursor to the end of the current line.
   Previous Line :kbd:`Up`
      Moves the cursor to the same position in the line above the current line.
   Next Line :kbd:`Down`
      Moves the cursor to the same position in the line below the current line.
   Previous Word :kbd:`Ctrl-Left`
      Moves the cursor to the beginning of the previous word.
      If the cursor is in the middle of a word, the cursor is moved to the beginning of the current word.
   Next Word :kbd:`Ctrl-Right`
      Moves the cursor to the end of the next word.
      If the cursor is in the middle of a word, the cursor is moved to the end of the current word.


Text Menu
---------

New :kbd:`Alt-N`
   Creates a new text Data Block.
Open Text Block :kbd:`Alt-O`.
   Loads an external text file that is selected via the :doc:`File Browser </editors/file_browser>`.
Reload :kbd:`Alt-R`
   Reopens (reloads) the current buffer (all non-saved modifications are lost).
Save :kbd:`Alt-S`
   Saves an already open file.
Save As :kbd:`Shift-Ctrl-Alt-S`.
   Saves text as a new text file,
   a :doc:`File Browser </editors/file_browser>` is opened to select the directory
   to save the file along with giving the file a name / file extension.
Register
   Registers the current text data-block as a module on loading (the text name must end with ``.py``).
   Read more about the registration of Python modules in
   `API documentation <https://docs.blender.org/api/current/info_overview.html#registration>`__.
Live Edit
   Todo.
Run Script :kbd:`Alt-P`
   Executes the text as a Python script, see `Running Scripts`_ for more information.


Edit Menu
---------

Undo/Redo
   See :doc:`/interface/undo_redo`.
Cut :kbd:`Ctrl-X`
   Cuts out the marked text into the text clipboard.
Copy :kbd:`Ctrl-C`
   Copies the marked text into the text clipboard.
Paste :kbd:`Ctrl-V`
   Pastes the text from the clipboard at the cursor location in the Text editor.
Duplicate Line :kbd:`Ctrl-D`
   Duplicates the current line.
Move Line(s) Up :kbd:`Shift-Ctrl-Up`
   Swaps the current/selected line(s) with the above.
Move Line(s) Down :kbd:`Shift-Ctrl-Down`
   Swaps the current/selected line(s) with the below.
Find & Replace :kbd:`Ctrl-F`
   Shows the *Find & Replace* panel in the Sidebar.
Find Next :kbd:`Ctrl-G`
   Finds the next instance of the selected text.
Jump to :kbd:`Ctrl-J`
   Shows a pop-up, which lets you select a line number where to move the cursor to.
Text Auto Complete :kbd:`Ctrl-Spacebar`
   Shows a selectable list of words already used in the text.
Text To 3D Object
   Converts the text file to a :doc:`Text Object </modeling/texts/index>`
   either as *One Object* or *One Object Per Line*.


Select Menu
-----------

All :kbd:`Ctrl-A`
   Selects the entire text file.
Line :kbd:`Shift-Ctrl-A`
   Selects the entire current line.
Word double-click :kbd:`LMB`
   Selects the entire current word.
Top :kbd:`Shift-Ctrl-Home`
   Selects everything above the cursor.
Bottom :kbd:`Shift-Ctrl-End`
   Selects everything below the cursor.
Line Begin :kbd:`Shift-Home`
   Selects everything between the beginning of the current line and the cursor.
Line End :kbd:`Shift-End`
   Selects everything between the cursor and the end of the current line.
Previous Line :kbd:`Shift-Up`
   Selects everything between the cursor and the position of the cursor one line above.
Next Line :kbd:`Shift-Down`
   Selects everything between the cursor and the position of the cursor one line below.
Previous Word :kbd:`Shift-Ctrl-Left`
   Selects everything between the cursor and the beginning of the previous word.
   If the cursor is in the middle of a word, select everything to the beginning of the current word.
Next Word :kbd:`Shift-Ctrl-Right`
   Selects everything between the cursor and the end of the next word.
   If the cursor is in the middle of a word, select everything to the end of the current word.


Format Menu
-----------

Indent :kbd:`Tab`
   Inserts a tab character at the cursor.
Unindent :kbd:`Shift-Tab`.
   Unindents the selection.
Toggle Comments :kbd:`Ctrl-Slash`.
   Toggles whether the selected line(s) are a Python comment.
   If no lines are selected the current line is toggled.
Convert Whitespace
   Converts indentation characters *To Spaces* or *To Tabs*.


Template Menu
-------------

The *Text Editor* has some dedicated Python scripts,
which are useful for writing tools, like a class/function/variable browser, completion...

Python, OpenShading Language


Main View
=========

Typing on the keyboard produces text in the text buffer.

As usual, pressing, dragging and releasing :kbd:`LMB` selects text.
Pressing :kbd:`RMB` opens the context menu.

.. tip:: Usages for the Text editor

   The Text editor is handy also when you want to share your blend-files with others.
   The Text editor can be used to write in a ``README`` text explaining the contents of your blend-file.
   Be sure to keep it visible when saving!


Footer
======

The Text editor footer displays if the text is saved internal or external and
if there are unsaved changes to an external file.
For external files, this region also displays the file path to the text file.


Usage
=====

Running Scripts
---------------

The most notable keystroke is :kbd:`Alt-P` which makes the content of the buffer
being parsed by the internal Python interpreter built into Blender.
Before going on it is worth noticing that Blender comes with a fully functional Python interpreter built-in,
and with a lots of Blender-specific modules,
as described in the :doc:`/advanced/scripting/index` section.
