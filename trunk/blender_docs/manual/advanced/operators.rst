
*********
Operators
*********

Debug Menu
==========

.. admonition:: Reference
   :class: refbox

   :Mode:      All Modes
   :Menu:      None
   :Hotkey:    :kbd:`Ctrl-Alt-D`

The options brings up a menu to set Blender into a certain debug mode.

There are several possible values, for example the most useful, a value of ``256``
enables a debug panel in Cycles render settings that can be used to enable/disable
special kernels and other special debugging features.

.. tip::

   Developers can search the code for ``G.debug_value`` to find other possible uses for this operator.

.. note:

   Additional debug options are available by launching Blender in debug mode or setting ``bpy.app.debug = True``.


Redraw Timer
============

.. admonition:: Reference
   :class: refbox

   :Mode:      All Modes
   :Menu:      None
   :Hotkey:    :kbd:`Ctrl-Alt-T`

This operator brings up a menu with a list of tests to benchmark UI drawing along with undo/redo functions.
