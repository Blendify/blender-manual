.. _ui-color-ramp-widget:
.. _bpy.types.ColorRamp:

*****************
Color Ramp Widget
*****************

.. figure:: /images/interface_color_ramp.png

   Color-Ramp.

*Color Ramps* enables the user to specify a range of colors based on color-stops.
Color-stops are similar to a mark indicating where exactly the chosen color should be.
The interval from each of the color-stops added to the ramp is a result of the color interpolation and
chosen interpolation method. The available options for Color Ramps are:

Add ``+``
   Clicking on this button will add a stop to your custom weight paint map.
   The stops are added from the last selected stop to the next one, from left to right and
   they will be placed in the middle of both stops.
Delete ``-``
   Deletes the selected color-stop from the list.
Flip ``<->``
   Flips the color band, inverting the values of the custom weight paint range.
Color Mode
   Selection of the :term:`color space` used for interpolation.

   RGB
      Blends color by mixing each color channel and combining.
   HSV/HSL
      Blends colors by first converting to HSV or HSL, mixing, then combining again.
      This has the advantage of maintaining saturation between different hues,
      where RGB would de-saturate, this allows for a richer gradient.
Interpolation Options
   Enables the user to choose the types of calculations for the color interpolation for each color stop.

   B-Spline
      Uses a *B-Spline* Interpolation for the color stops.
   Cardinal
      Uses a *Cardinal* Interpolation for the color stops.
   Linear
      Uses a *Linear* Interpolation for the color stops.
   Ease
      Uses a *Ease* Interpolation for the color stops.
   Constant
      Uses a *Constant* Interpolation for the color stops.
Active Color Stop
   Index of the active color-stop (shown as a dashed line).
   Allows you to change the active color when colors may be too close to easily select with the cursor.
Position
   This slider controls the positioning of the selected color stop in the range.
Color Button
   Opens a color picker for the user to specify color and Alpha for the selected color stop.
   When a color is using Alpha, the Color button is then divided in two, with the left side
   showing the base color and the right side showing the color with the alpha value.


Shortcuts
---------

- :kbd:`LMB` (drag) moves colors.
- :kbd:`Ctrl-LMB` (click) adds a new control point.
