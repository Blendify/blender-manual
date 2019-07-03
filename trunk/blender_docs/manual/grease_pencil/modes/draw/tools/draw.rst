.. _tool-grease-pencil-draw-draw:

**********
Draw Tool
**********

.. admonition:: Reference
   :class: refbox

   :Mode:      Draw Mode
   :Panel:     :menuselection:`Tool Shelf --> Tools --> Draw Tools --> Draw`

The Draw tool allows you to draw free-hand strokes. 

Usage
=====

Selecting Brush and Material
-----------------------------

Select the Brush and Material to use with the tool on the topbar.
The active material can also be changed in the material list.

Brush      
   The :ref:`ui-data-block` to select a preset brush type or a custom brush.
   
   Draw tool uses *Draw Brushes* types.
   For more information and settings see :doc:`Draw Brush </grease_pencil/modes/draw/brushes/draw_brush>`

Material
   Data-Block selector for the material.
   
   For more information and settings see :doc:`Materials </grease_pencil/materials/introduction>`

   Pin Material (pin icon)
      Pin the material to the brush.

      The final appearance of the strokes is a combination of a brush and a material used, 
      stick the material to the brush gives more control and avoid lack of coordination between the two.

Free-hand drawing
------------------

Click and hold :kbd:`LMB` or use the pen tip to make free-hand drawing on the viewport.

.. list-table::

   * - .. figure:: /images/grease-pencil_modes_draw_tools_draw_free-hand-01.png
          :width: 200px

          Free-hand drawing start.      

     - .. figure:: /images/grease-pencil_modes_draw_tools_draw_free-hand-02.png
          :width: 200px

          Adding more free-hand strokes.

     - .. figure:: /images/grease-pencil_modes_draw_tools_draw_free-hand-03.png
          :width: 200px

          Final free-hand drawing.


Brush Size and strength
------------------------

- :kbd:`F` Sets brush size
- :kbd:`Shift-F` Sets brush strength

You can then either adjust the value interactively or by typing in numbers.
After pressing the hotkey move the mouse to increase/reduce the value
(additionally with precision and/or snapping activated).
Finally confirm (:kbd:`LMB`, :kbd:`Return`) or cancel (:kbd:`RMB`, :kbd:`Esc`).

Straight lines
---------------

:kbd:`Alt-LMB` Constrains the drawing of the strokes to horizontal or vertical straight lines.

Stabilizer
-----------

:kbd:`Shift-LMB` toggle the use of :ref:`Stabilizer <grease-pencil-draw-brushes-stabilizer>` on the brush to make smoother lines.

.. list-table::

   * - .. figure:: /images/grease-pencil_modes_draw_tools_draw-stabilizer-01.png
          :width: 200px

          Stroke drawing start using stabilizer.

     - .. figure:: /images/grease-pencil_modes_draw_tools_draw-stabilizer-02.png
          :width: 200px

          Continue drawing with the stabilizer.

     - .. figure:: /images/grease-pencil_modes_draw_tools_draw-stabilizer-03.png
          :width: 200px

          Final stabilized stroke drawing.

Switch tools
------------

:kbd:`Ctrl-LMB` changes temporally to the active erase tool.
see :doc:`Erase Tool </grease_pencil/modes/draw/tools/erase>` for more information.
