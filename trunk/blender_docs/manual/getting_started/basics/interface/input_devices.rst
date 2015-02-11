
*************
Input Devices
*************

Blender supports various types of input devices:

- Keyboard (recommended: keyboard with numeric keypad, english layout works best)
- Mouse (recommended: 3 button mouse with scroll wheel)
- NDOF Devices (Space Navigator, etc.)
- Graphic Tablets

Usage of Mouse Buttons
======================

In Blender the :kbd:`RMB` (Right Mouse Button) is generally used for Selection
and the :kbd:`LMB` (Left Mouse Button) initiates or confirms actions. 

Exceptions from the rule
------------------------

Unfortunately there are a few corner cases where action and selection 
might intertwine. And some parts in Blender even violate the principle 
such that now :kbd:`LMB` selects and :kbd:`RMB` takes action (example: the Outliner).

The mouse usage summarized:

.. list-table::
   :widths: 15 85

   * - :kbd:`RMB`
     - To select an item
   * - :kbd:`SHIFT` :kbd:`RMB`
     - To add more items
   * - :kbd:`LMB`
     - to perform an action on the selection 

Video: `Learn more about Blender's Mouse Button usage <http://vimeo.com/76335056>`_


Mouse Button Emulation
======================

If you do not have a 3 button mouse, you'll need to emulate it by checking the option
in the :doc:`User Preferences </preferences/input#mouseuser>` (unchecked by default).

The following table shows the combinations used:


.. list-table::
   :header-rows: 1

   * - 3-button Mouse
     - 2-button Mouse
     - Apple Mouse
   * - :kbd:`LMB`
     - :kbd:`LMB`
     - :kbd:`LMB` (mouse button)
   * - :kbd:`MMB`
     - :kbd:`Alt-LMB`
     - :kbd:`Cmd-LMB` (Option/Alt key + mouse button)
   * - :kbd:`RMB`
     - :kbd:`RMB`
     - :kbd:`Cmd-LMB` (Command/Apple key + mouse button)


All the Mouse/Keyboard combinations mentioned in the Manual can be expressed with the
combinations shown in the table. For Example,
:kbd:`Shift-Alt-RMB` becomes :kbd:`Shift-Alt-Cmd-LMB` on a single-button mouse.


NumPad Emulation
================

If you do not have a Numeric Numpad on the side of your keyboard, you may want to Emulate one
(uses the numbers at the top of the keyboard instead,
however removes quick access to layer visibility).

:doc:`Read more about NumPad Emulation on User Preferences page </preferences/input#numpad_emulation>`


Non English Keyboard
====================

If you use a keyboard with a non-english keyboard layout, you still may benefit from switching
your computer to the UK or US layout as long as you work with Blender.
Note that you can also change the Blender default keymap and change the default hotkeys.
However this manual is based on the default keymap.

:doc:`Read more about Blender configuration </preferences/input>`

