
****************
Common Shortcuts
****************

There are shortcuts shared among many button types.

In Blender the :kbd:`RMB` (Right Mouse Button) is generally used for Selection
and the :kbd:`LMB` (Left Mouse Button) initiates or confirms actions.

.. rubric:: The mouse usage summarized:

.. list-table::
   :widths: 15 85

   * - :kbd:`RMB`
     - To select an item.
   * - :kbd:`Shift-RMB`
     - To add more items to the selection.
   * - :kbd:`LMB`
     - to perform an action on the selection.

Video: `Learn more about Blender's Mouse Button usage <https://vimeo.com/76335056>`__.

.. note::

   There are a few corner cases where :kbd:`LMB` is used for selection.
   For example, the :doc:`File Browser </editors/file_browser/introduction>`.


While Hovering (when the cursor is held over a button).

.. rubric:: Properties:

- :kbd:`Ctrl-C` - copy the value of the button.
- :kbd:`Ctrl-V` - paste the value of the button.
- :kbd:`RMB` - open the context menu.
- :kbd:`Backspace` - clears the value (sets to zero or clears a text field).
- :kbd:`Minus` - negate number values (multiply by -1.0).
- :kbd:`Ctrl-Wheel` - changes the value incremental steps.

  For pop-up option menus buttons, this cycles the value.

.. rubric:: File Browser:

- :kbd:`LMB` - select a new file.
- :kbd:`Shift-LMB` - open the file externally
  (using the system's default editor).
- :kbd:`Alt-LMB` - open the directory externally
  (using the systems file manager).

.. rubric:: Animation:

- :kbd:`I` - insert a keyframe.
- :kbd:`Alt-I` - clear the keyframe.
- :kbd:`Alt-Shift-I` - clear all keyframes (removing all F-Curves).
- :kbd:`D` - assign a driver.
- :kbd:`Alt-D` - clear the driver.
- :kbd:`K` - add a Keying Set.
- :kbd:`Alt-K` - clear the Keying Set.

.. rubric:: Python Scripting:

- :kbd:`Ctrl-C` - over any :ref:`ui-operation-buttons` copies their Python command into the clipboard.

  This can be used in the Python console or in the text editor when writing scripts.
- :kbd:`Ctrl-Shift-C` - over property buttons copies their data-path for this property
  (also available from the right-click menu).

  Useful when writing drivers or scripts.
- :kbd:`Ctrl-Alt-Shift-C` - over property buttons copies their *full* data-path for the Data-Block and property.

  Note that in most cases it is best to access values based on the context, instead of by name.

.. rubric:: While Dragging Numbers

- :kbd:`Ctrl` - while dragging snap the discrete steps.
- :kbd:`Shift` - gives finer control over the value.

.. rubric:: While Editing Text

- :kbd:`Home` - go to the start.
- :kbd:`End` - go to the end.
- :kbd:`Left`, :kbd:`Right` - move the cursor a single character.
- :kbd:`Ctrl-Left`, :kbd:`Ctrl-Right` - move the cursor an entire word.
- :kbd:`Backspace`, :kbd:`Delete` - delete characters.
- :kbd:`Ctrl-Backspace`, :kbd:`Ctrl-Delete` - delete words.
- Holding :kbd:`Shift` - while moving the cursor selects.
- :kbd:`Ctrl-C` - copy the selected text.
- :kbd:`Ctrl-V` - paste text at the cursor location.
- :kbd:`Ctrl-A` - selects all text.

.. rubric:: All Modes

- :kbd:`Esc`, :kbd:`RMB` - cancels.
- :kbd:`Return`, :kbd:`LMB` - confirms.
