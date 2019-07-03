.. _tool-grease-pencil-draw-fill:

*********
Fill Tool
*********

.. admonition:: Reference
   :class: refbox

   :Mode:      Draw Mode
   :Panel:     :menuselection:`Tool Shelf --> Tools --> Draw Tools --> Fill`

The Fill tool is used to automatically fill closed strokes areas.

Common Options
===============

Brush   
   The Data-Block Menu to select a preset brush type or a custom brush.
   
   Draw tool uses *Fill Brushes* types.
   For more information and settings see :doc:`Draw Brush </grease_pencil/modes/draw/brushes/fill_brush>`

Material
   Data-Block selector for the material.
   
   For more information and settings see :doc:`Materials </grease_pencil/materials/introduction>`

   Pin Material (pin icon)
      Pin the material to the brush.

      The final appearance of the strokes is a combination of a brush and a material used, 
      stick the material to the brush gives more control and avoid lack of coordination between the two.

Fill Options
=============

Resolution
   Multiplier for fill resolution. 
   Higher values gives better fill boundary accuracy but slower time for calculations.

Ignore Transparent strokes
   When enabled, fully transparent strokes does not take into account on fill boundary calculations.

   Threshold
      Threshold value to consider a material transparent.

Usage
=====

Click :kbd:`LMB` in a closed stroke area. The tool will automatically 
calculate the boundary and create a new closed stroke filled with the material selected.

If you have a large gap in an area that you want fill, 
you can use *Boundary Strokes*, a temporary help lines for closing open shapes.
To create a Boundary Strokes use :kbd:`ALT-LMB` and draw a line to close the desired area.


Use :kbd:`Ctrl-LMB` to change temporary to the active draw tool.
see :doc:`Draw Tool </grease_pencil/modes/draw/tools/draw>` for more information.


