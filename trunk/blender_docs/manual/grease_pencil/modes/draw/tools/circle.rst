.. _tool-grease-pencil-draw-circle:

***********
Circle Tool
***********

.. admonition:: Reference
   :class: refbox

   :Mode:      Draw Mode
   :Panel:     :menuselection:`Tool Shelf --> Tools --> Draw Tools --> Circle`

The Circle tool create oval shapes.


Usage
=====


Selecting Brush and Material
----------------------------

On the topbar select the brush and material to use with the tool.

Brush
   The :ref:`ui-data-block` to select a preset brush type or a custom brush.
   Line tool uses *Draw Brushes* types.   

Material
   Data-Block selector for the material.

   Pin Material (pin icon)
      Pin the material to the brush.

      The final appearance of the strokes is a combination of a brush and a material used,
      stick the material to the brush gives more control and avoid lack of coordination between the two.


For more information about brushes and materials see: :doc:`Draw Brush </grease_pencil/modes/draw/brushes/draw_brush>`
and :doc:`Material </grease_pencil/materials/introduction>`

Common Brush options
---------------------

You can configure the brush main settings exposed on the topbar for convenience.
For complete draw brushes configuration and settings see: :doc:`Draw Brush </grease_pencil/modes/draw/brushes/draw_brush>`.

Radius
   The radius of the brush in pixels.

   :kbd:`F` allows you to change the brush size interactively by dragging the mouse/pen.
   Typing a number then enter while using :kbd:`F` allows you to enter the size numerically.

      Use Pressure (pressure sensitivity icon)
         Uses stylus pressure to control how strong the effect is.

Strength
   Control the stroke transparency (alpha).
   From totally transparent (0.0) to fully opaque (1.0).

   You can change the brush strength interactively by pressing :kbd:`Shift-F`
   in the 3D View and then moving the mouse/pen and then :kbd:`LMB`.
   You can enter the size numerically also while in :kbd:`Shift-F` sizing.

      Use Pressure (pressure sensitivity icon)
         Uses stylus pressure to control how strong the effect is.

Thickness Profile
   use a :doc:`curve widget </interface/controls/templates/curve>`. to define the stroke thickness
   from the start (left) to end (right) of the stroke.

   Use Curve
      When enabled, the stroke use a curve profile to control the thickness along the line.

.. list-table::
   Different thickness profile samples.

   * - .. figure:: /images/grease-pencil_modes_draw_tools_circle-thickness-profile-01.png
          :width: 200px

     - .. figure:: /images/grease-pencil_modes_draw_tools_circle-thickness-profile-02.png
          :width: 200px

     - .. figure:: /images/grease-pencil_modes_draw_tools_circle-thickness-profile-03.png
          :width: 200px


Creating circles
-----------------

- Click (:kbd:`LMB` or the pen tip) and drag the start point.
- Release on the desired end point.
- After releasing you can repositioning start and end point by clicking and dragging on the yellow manipulators.
- Press :kbd:`Enter`/:kbd:`MMB` to confirm or :kbd:`Esc`/:kbd:`RMB` to cancel.

While dragging you can use :kbd:`Shift` to make a perfect circle
or use :kbd:`Alt` to create the circle from a center origin.

:kbd:`+` and :kbd:`-` or using the mouse wheel will increase or decrease the amount of points in the final circle.


.. list-table::

   * - .. figure:: /images/grease-pencil_modes_draw_tools_circle-01.png
          :width: 200px

          click and dragging the start point.

     - .. figure:: /images/grease-pencil_modes_draw_tools_circle-02.png
          :width: 200px

          Start and end ponits repositioning with manipulators.

     - .. figure:: /images/grease-pencil_modes_draw_tools_circle-03.png
          :width: 200px

          Confirmed circle.          
