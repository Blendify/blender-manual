
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
     - To perform an action on the selection.

Video: `Learn more about Blender's Mouse Button usage <https://vimeo.com/76335056>`__.

.. note::

   There are a few corner cases where :kbd:`LMB` is used for selection.
   For example, the :doc:`File Browser </editors/file_browser/introduction>`.


While Hovering (when the cursor is held over a button).

.. rubric:: Properties:

- :kbd:`Ctrl-C` -- Copy the value of the button.
- :kbd:`Ctrl-V` -- Paste the value of the button.
- :kbd:`RMB` -- Open the context menu.
- :kbd:`Backspace` -- Clears the value (sets to zero or clears a text field).
- :kbd:`Minus` -- Negate number values (multiply by -1.0).
- :kbd:`Ctrl-Wheel` -- Changes the value incremental steps.

  For pop-up option menus buttons, this cycles the value.

.. rubric:: File Browser:

- :kbd:`LMB` -- Select a new file.
- :kbd:`Shift-LMB` -- Open the file externally
  (using the system's default editor).
- :kbd:`Alt-LMB` -- Open the directory externally
  (using the systems file manager).

.. rubric:: Animation:

- :kbd:`I` -- Insert a keyframe.
- :kbd:`Alt-I` -- Clear the keyframe.
- :kbd:`Alt-Shift-I` -- Clear all keyframes (removing all F-Curves).
- :kbd:`D` -- Assign a driver.
- :kbd:`Alt-D` -- Clear the driver.
- :kbd:`K` -- Add a Keying Set.
- :kbd:`Alt-K` -- Clear the Keying Set.

.. rubric:: Python Scripting:

- :kbd:`Ctrl-C` -- Over any :ref:`ui-operation-buttons` copies their Python command into the clipboard.

  This can be used in the Python console or in the text editor when writing scripts.
- :kbd:`Ctrl-Shift-C` -- Over property buttons copies their data-path for this property
  (also available from the right-click menu).

  Useful when writing drivers or scripts.
- :kbd:`Ctrl-Alt-Shift-C` -- Over property buttons copies their *full* data-path for the Data-Block and property.

  Note that in most cases it is best to access values based on the context, instead of by name.

.. rubric:: While Dragging Numbers

- :kbd:`Ctrl` -- While dragging snap the discrete steps.
- :kbd:`Shift` -- Gives finer control over the value.

.. rubric:: While Editing Text

- :kbd:`Home` -- Go to the start.
- :kbd:`End` -- Go to the end.
- :kbd:`Left`, :kbd:`Right` -- Move the cursor a single character.
- :kbd:`Ctrl-Left`, :kbd:`Ctrl-Right` -- Move the cursor an entire word.
- :kbd:`Backspace`, :kbd:`Delete` -- Delete characters.
- :kbd:`Ctrl-Backspace`, :kbd:`Ctrl-Delete` -- Delete words.
- Holding :kbd:`Shift` -- While moving the cursor selects.
- :kbd:`Ctrl-C` -- Copy the selected text.
- :kbd:`Ctrl-V` -- Paste text at the cursor location.
- :kbd:`Ctrl-A` -- Selects all text.

.. rubric:: All Modes

- :kbd:`Esc`, :kbd:`RMB` -- Cancels.
- :kbd:`Return`, :kbd:`LMB` -- Confirms.
