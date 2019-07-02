.. _tool-grease-pencil-draw-draw:

**********
Draw Tool
**********

.. admonition:: Reference
   :class: refbox

   :Mode:      Draw Mode
   :Panel:     :menuselection:`Tool Shelf --> Tools --> Draw Tools --> Draw`

The Draw tool allows you to draw free-hand strokes. Options appear in the *Top Bar* an in the *Active Tool Panel*.

Common Options:
===============

Brush   
   Data-Block selector for the brush.
   
   Draw tool uses *Draw Brushes* types.
   For more information and settings see :doc:`Draw Brush </grease_pencil/modes/draw/brushes/draw_brush>`

Material
   Data-Block selector for the material.
   
   For more information and settings see :doc:`Materials </grease_pencil/materials/introduction>`

   Pin Material (pin icon)
      Pin the material to the brush.

      The final appearance of the strokes is a combination of a brush and a material used, 
      stick the material to the brush gives more control and avoid lack of coordination between the two.

Radius
   The radius of the brush in pixels.

   :kbd:`F` allows you to change the brush size interactively by dragging the mouse/pen.
   Typing a number then enter while using :kbd:`F` allows you to enter the size numerically.

      Use Pressure (pressure sensitivity icon)
         Uses stylus pressure to control how strong the effect is.

Strenght
   Control the stroke transparency (alpha). 
   From totally transparent (0.0) to fully opaque (1.0).

   You can change the brush strength interactively by pressing :kbd:`Shift-F`
   in the 3D View and then moving the mouse/pen and then :kbd:`LMB`.
   You can enter the size numerically also while in :kbd:`Shift-F` sizing.

      Use Pressure (pressure sensitivity icon)
         Uses stylus pressure to control how strong the effect is.

Usage
=====

Click and hold :kbd:`LMB` or use the pen tip to make freehand drawing on the viewport.
While drawing you can press some modifier keys to change the drawing behaviour:

:kbd:`Alt` Constrains the drawing of the strokes to horizontal or vertical straight lines.

:kbd:`Shift` toggle the use of :ref:`Stabilizer <grease-pencil-draw-brushes-stabilizer>` on the brush to make smoother lines.

:kbd:`Ctrl` change temporary to the active erase tool.
see :doc:`Erase Brush </grease_pencil/modes/draw/brushes/erase_brush>` for more information.
