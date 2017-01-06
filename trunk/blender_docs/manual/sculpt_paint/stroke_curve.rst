
**************
Stroke & Curve
**************

Stroke
======

.. figure:: /images/sculpt-paint_painting_weight-paint_properties_stroke-panel.png
   :align: right

   Stroke Panel.

Stroke Method :kbd:`E`
   Defines the way brush strokes are applied to the mesh.

   Dots
      Apply paint on each mouse move step.
   Drag Dot
      Creates a single displacement in the brush shape.
      Click then drag on mesh to desired location, then release.
   Space
      Creates brush stroke as a series of dots,
      whose distance (spacing) is determined by the *Spacing* setting.

      Spacing
         Represents the percentage of the brush diameter.
         Limit brush application to the distance specified by spacing.
   Airbrush
      Flow of the brush continues as long as the mouse click is held (spray),
      determined by the *Rate* setting.
      With others methods the brush only modifies the color when the brush changes its location.
      This option is not available for the *Grab* sculpting brush.

      Rate
         Interval between paints for airbrush.
   Anchored
      Creates a single displacement at the brush location.
      Clicking and dragging will resize the brush diameter.
      When *Edge to Edge* the brush location and orientation is determined by a two point circle,
      where the first click is one point, and dragging places the second point, opposite from the first.
   Line
      ToDo.
   Curve
      ToDo.
Jitter
   Jitter the position of the brush while painting.
Smooth stroke :kbd:`Shift-S`
   Brush lags behind mouse and follows a smoother path.

   Radius
      Sets the minimum distance from the last point before stroke continues.
   Factor
      Sets the amount of smoothing.
Input Samples
   Recent mouse locations (input samples) are averaged together to smooth brush strokes.

.. renamed, replaced, obsolete?

Wrap
   Wraps your paint to the other side of the image as your brush moves off the **other** side of the canvas
   (any side, top/bottom, left/right). Very handy for making seamless textures.


Curve
=====

The Curve allows you to control the *Strength* falloff of the brush.
The falloff is mapped from the center of the brush (left part of the curve)
towards its borders (right part of the curve).
Changing the shape of the curve will make the brush softer or harder.
Read more about using the :ref:`ui-curve-widget`.

.. figure:: /images/sculpt-paint_painting_vertex-paint_options_brush-curve.png

   Brush curve example.
