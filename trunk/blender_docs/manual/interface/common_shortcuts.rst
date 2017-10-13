
****************
Common Shortcuts
****************

There are shortcuts shared among many button types.


Mouse
=====

In Blender the :kbd:`RMB` (Right Mouse Button) is generally used for Selection
and the :kbd:`LMB` (Left Mouse Button) initiates or confirms actions.

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


Hovering
========

While hovering (when the cursor is held over a button).


Properties
----------

- :kbd:`Ctrl-C` -- Copy the value of the button.
- :kbd:`Ctrl-V` -- Paste the value of the button.
- :kbd:`RMB` -- Open the context menu.
- :kbd:`Backspace` -- Clear the value (sets to zero or clears a text field).
- :kbd:`Minus` -- Negate number values (multiply by -1.0).
- :kbd:`Ctrl-Wheel` -- Change the value incremental steps.

  For pop-up option menus buttons, this cycles the value.
- :kbd:`Enter` -- Activates menus or toggles the value.


Animation
---------

- :kbd:`I` -- Insert a keyframe.
- :kbd:`Alt-I` -- Clear the keyframe.
- :kbd:`Alt-Shift-I` -- Clear all keyframes (removing all F-Curves).
- :kbd:`Ctrl-D` -- Assign a driver.
- :kbd:`Ctrl-Alt-D` -- Clear the driver.
- :kbd:`K` -- Add a Keying Set.
- :kbd:`Alt-K` -- Clear the Keying Set.


Python Scripting
----------------

- :kbd:`Ctrl-C` -- Over any :ref:`ui-operation-buttons` copies their Python command into the clipboard.

  This can be used in the Python console or in the text editor when writing scripts.
- :kbd:`Ctrl-Shift-C` -- Over property buttons copies their data-path for this property
  (also available from the right-click menu).

  Useful when writing drivers or scripts.
- :kbd:`Ctrl-Alt-Shift-C` -- Over property buttons copies their *full* data-path for the Data-Block and property.

  Note that in most cases it is best to access values based on the context, instead of by name.


Dragging
========

- :kbd:`Ctrl` -- While dragging snap the discrete steps.
- :kbd:`Shift` -- Gives precision control over the value.
- :kbd:`Ctrl-Shift` -- Precise snap will move the object with high precision
  along with the snapping constraint.


.. _ui-text-editing:

Text Editing
============

- :kbd:`Home` -- Go to the start.
- :kbd:`End` -- Go to the end.
- :kbd:`Left`, :kbd:`Right` -- Move the cursor a single character.
- :kbd:`Ctrl-Left`, :kbd:`Ctrl-Right` -- Move the cursor an entire word.
- :kbd:`Backspace`, :kbd:`Delete` -- Delete characters.
- :kbd:`Ctrl-Backspace`, :kbd:`Ctrl-Delete` -- Deletes words.
- :kbd:`Shift` -- While holding the key and moving the cursor selects.
- :kbd:`Ctrl-A` -- Select all text.
- :kbd:`Ctrl-C` -- Copy the selected text.
- :kbd:`Ctrl-X` -- Cut the selected text.
- :kbd:`Ctrl-V` -- Paste text at the cursor position.


Confirm and Cancel
==================

- :kbd:`Esc`, :kbd:`RMB` -- Cancels.
- :kbd:`Enter`, :kbd:`LMB` -- Confirms.

.. (todo?) deactivation: Some controls can be disabled, in Blender deactivated controls are still editable.
   That can be due to the current state or context. In that case, they appear in a lighter color.
