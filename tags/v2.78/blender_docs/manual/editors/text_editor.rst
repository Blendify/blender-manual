
***********
Text Editor
***********

Blender has a *Text Editor* among its editor types,
accessible via the *Editor type* menu, or the shortcut :kbd:`Shift-F11`.


Header
======

The newly opened Text editor is gray and empty, with a very simple header
Fig. :ref:`fig-text-header-plain`

.. _fig-text-header-plain:

.. figure:: /images/editors_text_header1.jpg

   Text header.

.. _fig-text-header-full:

.. figure:: /images/editors_text_header2.jpg

   Text header with a text loaded.

Editor type
   The standard editor selection button.
Menus
   Editors `Menus`_.
Text
   Data-block menu.
   Once a text is selected or newly created, the header changes.
   Fig. :ref:`fig-text-header-full`
Show
   The following three buttons toggle display options.

   Line numbers, word-wrap text, syntax highlighting
Run Script/ Script Node Update
   Executes the text as a Python script :kbd:`Alt-P`.
   See `Script and Templates`_.
Register
   Todo.
Label
   This Label shows, if the text is saved internal or external and
   if there are unsaved changes to an external file.


Menus
------

View
   Bottom of File
      Moves the view and cursor to the end of the text.
   Top of File
      Moves the view and cursor to the start of the text.
Text
   Create Text Block
      Creates a new internal text.
   Open Text Block
      Loads a text, a :doc:`File Browser </editors/file_browser/index>` appears :kbd:`Alt-O`.
   Reload
      Reopens (reloads) the current buffer (all non-saved modifications are lost) :kbd:`Alt-R`.
   Save
      Saves an already open file :kbd:`Alt-S`.
   Save As
      Saves unsaved text as a text file,
      a :doc:`File Browser </editors/file_browser/index>` appears :kbd:`Shift-Ctrl-Alt-S`.
   Make Internal
      Stores the text inside the blend-file.
   Run Script
      Executes the text as a Python script :kbd:`Alt-P`.
      See `Script and Templates`_.
Edit
   Undo
      :kbd:`Ctrl-Z`.
   Redo
      :kbd:`Ctrl-Shift-Z`.
   Cut
      Cuts out the marked text into the text clipboard :kbd:`Ctrl-X`.
   Copy
      Copies the marked text into the text clipboard :kbd:`Ctrl-C`.
   Paste
      Pastes the text from the clipboard at the cursor location in the Text editor :kbd:`Ctrl-V`.
   Duplicate Line
      Duplicates the current line :kbd:`Ctrl-D`.
   Move line(s) up
      Swaps the current line with the above.
   Move line(s) down
      Swaps the current line with the below.
   Select
      Select Line, Select All.
   Jump
      Shows the Jump pop-up, which lets you select a line number where to jump to.
   Find...
      Shows the Find panel in the Properties Region.
   Text Auto Complete
      Shows a selectable list of Python commands and words already used in the text.
   Text To 3D Object
      One Object, One Object per line
Format
   Indent
      Indents the selection :kbd:`Tab`.
   Unindent
      Un-indents the selection :kbd:`Shift-Tab`.
   Comment
      Turns the selected lines into a Python comment.
   Uncomment
      Uncomments the selected lines.
   Convert Whitespace
      To Space, To Tab.
Template
   See `Script and Templates`_.

   Python, OpenShading Language


Script and Templates
--------------------

The most notable keystroke is :kbd:`Alt-P` which makes the content of the buffer being parsed by the internal Python
interpreter built into Blender.
Before going on it is worth noticing that Blender comes with a fully functional Python interpreter built in,
and with a lots of Blender-specific modules,
as described in the :doc:`/advanced/scripting/index` section.

The *Text Editor* has now also some dedicated Python scripts,
which add some useful writing tools, like a class/function/variable browser, completion...
You can access them through the Template menu in the header.


Main View
=========

Typing on the keyboard produces text in the text buffer.
As usual, pressing, dragging and releasing :kbd:`LMB` selects text.


.. tip:: Usages for the Text editor

   The Text editor is handy also when you want to share your blend-files with others.
   The Text editor can be used to write in a ``README`` text explaining the contents of your blend-file.
   Be sure to keep it visible when saving!
