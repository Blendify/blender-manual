
Draw Curve
==========

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Create --> Draw Curve`
   | Menu:     :menuselection:`Add --> Draw Curve`
   | Hotkey:   :kbd:`Shift-LMB`

The Curve draw tool allows you to freehand draw curves.


Stroke Options
--------------

These options can be found in :menuselection:`Tool Shelf --> Options --> Curve Stroke`.

Type
   Type of curve to use for drawing.

   Poly
      TODO.
   Bézier
      Tolerance
         Lower values give a result that is closer to the drawing stroke,
         while higher values give more smoothed results.

      Method
         Refit
            Incrementally re-fits the curve (gives best results).
         Split
            Splits the curve until the tolerance is met (gives better drawing performance).

      Detect Corners
         Detects corners and uses non-aligned handles for them. 

         Corner Angle
            Any angles above this are considered corners.

Pressure Radius
   Min
      Minimum radius when the minimum pressure is applied (also the minimum when tapering)
   Max
      Radius to use when the maximum pressure is applied (or when a tablet is not used).

Projection Depth
   Options to control how where/how the curves are drawn.

   Cursor
      Uses the depth under the cursor to draw curves.

   Surface
      Used to draw on top of other objects.

      Offset
         Distance to offset the curve from the surface.
      Absolute Offset
         Applies a fixed offset (does not scale by the curve radius).
      Only First
         Only uses the start of the stroke for the depth.

         Normal/View
            Draws perpendicular to the surface.
         Normal/Surface
            Draws aligned to the surface.
         View
            Draws aligned to the viewport.


Draw Options
------------

These option can be found in the :ref:`Redo Last Panel <ui-redo-last>`.

Error
   Error distance in object units. This can be seen similar to a subdivision rate for the curve.
   Lower values give a result that is closer to the drawing stroke while higher values give more smoothed results.
Fit Method
   Refit
      Incrementally re-fits the curve (gives best results).
   Split
      Splits the curve until the tolerance is met (gives better drawing performance).
Corner Angle
   Any angles above this are considered corners.
Cyclic
   Toggles whether or not the curve is :term:`Cyclic`.
