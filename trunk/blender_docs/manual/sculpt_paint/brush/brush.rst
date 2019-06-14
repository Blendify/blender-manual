.. _bpy.types.Brush:
.. _bpy.ops.brush:

*****
Brush
*****

.. figure:: /images/sculpt-paint_brush_data-block-menu.png
   :align: right

   Brush data-block menu.

Brushes
   The :ref:`ui-data-block` to select a preset brush type or a custom brush.
   They are a combination of a "tool", along with stroke, texture, and options.

   Add Brush
      When you add a brush, the new brush is a clone of the current one.

.. note::

   In order to save in a blend-user a custom brush, tick Fake User.

The size of the brush can be changed by the :kbd:`[` and :kbd:`]` shortcuts.

Direction
   The influence direction of the brush. This can be *Add* or *Subtract*.

Autosmooth
   Amount of smoothing to apply to each stroke.

Inverse Autosmooth
   Lighter pressure causes more smoothing to apply.

Height
   Simulated height of brush.


Options
=======

Accumulate
   Accumulate stroke daubs on top of each other.

Radius Unit
   View
      Measure brush size relative to the screen.
   Scene
      Measure brush size relative to the scene.

Sculpt Plane
   Set the orientation of the brush effect.

   - Area Plane
   - View Plane
   - X Plane
   - Y Plane
   - Z Plane

Original Normal
   Keep using the normal of the initial location where the stroke originated.

Front Faces Only
   Brush only affects vertices that face the viewer.

2D Falloff
   Apply brush influence in 2D circle instead of a sphere.


Radial Control
==============

- Set brush size :kbd:`F`
- Set brush strength :kbd:`Shift-F`
- Rotate brush texture :kbd:`Ctrl-F`

You can then either adjust the value interactively or by typing in numbers.
After pressing the hotkey move the mouse to increase/reduce the value
(additionally with precision and/or snapping activated).
Finally confirm (:kbd:`LMB`, :kbd:`Return`) or cancel (:kbd:`RMB`, :kbd:`Esc`).


.. TODO: Move to own page (manual/sculpt_paint/options.rst), add refboxes
