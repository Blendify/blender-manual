
***********
Text Editor
***********

Blender has a *Text Editor* among its windows types,
accessible via the *Window type* menu, or the shortcut :kbd:`Shift-F11`.

The newly opened Text window is grey and empty, with a very simple toolbar (*Text Toolbar*).


.. figure:: /images/Extensions-Python-Text-editor-Default-Toolbar.jpg

   Text Toolbar.


From left to right there are the standard *Window type* selection button and the
window menus. Then there is the Text ID Block browse button followed by the New button for
creating new Text files. Once you click it, you will find that the Toolbar has changed..
for good!


.. figure:: /images/Extensions-Python-Text-editor-Toolbar-with-file-open.jpg
   :width: 600px

   Text Toolbar with a file open


Now you find a textbox to change name of your text file,
followed by **+** button to create new files. To remove the text block,
click the **X** button.

The following three buttons toggle display of line numbers,
word-wrap text and syntax highlighting respectively.

Typing on the keyboard produces text in the text buffer. As usual,
pressing dragging and releasing :kbd:`LMB` selects text.

The following keyboard commands apply:

- :kbd:`Ctrl-C` - Copies the marked text into the text clipboard.
- :kbd:`Ctrl-X` - Cuts out the marked text into the text clipboard.
- :kbd:`Ctrl-V` - Pastes the text from the clipboard at the cursor location in the Text window.
- :kbd:`Ctrl-D` - Duplicate the current line.
- :kbd:`Tab` - Indent the selection.
- :kbd:`Shift-Tab` - Un-indent the selection.
- :kbd:`Shift-Ctrl-Alt-S` - Saves unsaved text as a text file, a *File Browser* window appears.
- :kbd:`Alt-S` - Saves an already open file.
- :kbd:`Alt-O` - Loads a text, a *File Browser* window appears.
- :kbd:`Alt-P` - Executes the text as a Python script.
- :kbd:`Ctrl-Z` - Undo.
- :kbd:`Ctrl-Shift-Z` - Redo.
- :kbd:`Alt-R` - Reopen (reloads) the current buffer (all non-saved modifications are lost).

To delete a text buffer just press the *X* button next to the buffer's name,
just as you do for materials, etc.

The most notable keystroke is :kbd:`Alt-P` which makes the content of the buffer being parsed by the internal Python
interpreter built into Blender. The next page will present an example of Python scripting.
Before going on it is worth noticing that Blender comes with a fully functional Python interpreter built in,
and with a lots of Blender-specific modules,
as described in the :doc:`API references </advanced/scripting/python/references>`.

The *Text Editor* has now also some dedicated Python scripts,
which add some useful writing tools, like a class/function/variable browser, completion... You
can access them through the *Text* --> *Text Plugins* menu entry.


Other usages for the Text window
================================

The text window is handy also when you want to share your ``.blend`` files with others.
A *Text* window can be used to write in a ``README`` text explaining the contents of your blend file.
Be sure to keep it visible when saving!


Demonstration
=============

.. youtube:: OzGZ_ssrmsQ

