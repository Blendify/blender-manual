
*****************
Extended Controls
*****************

This page documents some of the more involved interface controls.


Operator Search Menu
====================

.. figure:: /images/Manual-Interface-Menus-SpacebarMenu25.jpg
   :align: right

   The [Space]-menu


A menu with access to all *Blender* commands is available by pressing
:kbd:`Spacebar`. Simply start typing the name of the command you want to refine the list.
When the list is sufficiently narrowed, :kbd:`LMB` on the desired command or navigate
with :kbd:`Down` and :kbd:`Up`, activate it by pressing :kbd:`Return`.


Color Picker
============

In Blender, you can choose from **4** types of color pickers; the options are:
   *Circle* (Default), *Square (HS + V)* , *Square (SV + H)* and *Square (HV + S)*


For more information about how to select the type of color picker,
please go to the :doc:`System </preferences/system>` preferences page.


   All of the Color picker types have the common *RGB*, *HSV* and *Hex* options to show values.
   Optionally, depending on the operation,
   another slider for Alpha control is added at the bottom of the color picker.


   Blender uses Floating point values to express colors for *RGB* and *HSV* values.
   The *Hex* values are expressed in the same way HTML colors are expressed.


   Note that Blender corrects Gamma by default;
   for more information about how to disable Gamma correction in Blender,
   please go to the :doc:`Color Management and Exposure </render/post_process/cm_and_exposure>` page.


.. figure:: /images/(Doc_26x_Manual_Preferences_System)_(Color_Picker_Circle)_(GBAFN).jpg

   Fig. 2 - Color Picker - Circle


   Circle (Default)
      A full gamut of colors ranging from center to the borders is always shown; center is a mix of the colors.
      Brightness is adjusted with the right bar, from top to bottom.
      For operations that are capable of using Alpha, another slider is added at the bottom of the color picker.
      See Fig. 2 - Color Picker - Circle


.. figure:: /images/(Doc_26x_Manual_Preferences_System)_(Color_Picker_HS_PLUS_V)_(GBAFN).jpg

   Fig. 3 - Color Picker
   Square (HS + V)


   Square (HS + V)
      Hue, Saturation plus Value **→** A full gamut of colors is always shown.
      Brightness is subtracted from the
      base color chosen on the square of the color picker moving the slider to the left.
      For operations that are capable of using Alpha,
      another slider is added at the bottom of the color picker.
      See Fig. 3 - Color Picker - Square (HS + V)


.. figure:: /images/(Doc_26x_Manual_Preferences_System)_(Color_Picker_SV_PLUS_H)_(GBAFN).jpg

   Fig. 4 - Color Picker
   Square (SV + H)


   Square (SV + H)
      Saturation, Value plus Hue **→** A full Gamut of colors is
      always shown at the bar in the middle of the color picker.
      Colors are adjusted using the a range of brightness of the
      base color chosen at the color bar in the middle of the picker.
      For operations that are capable of using Alpha,
      another slider is added at the bottom of the color picker.
      See Fig. 4 - Color Picker - Square (SV + H)


.. figure:: /images/(Doc_26x_Manual_Preferences_System)_(Color_Picker_HV_PLUS_S)_(GBAFN).jpg

   Fig. 5 - Color Picker
   Square (HV + S)


   Square (HV + S)
      Hue, Value and Saturation *→** A full gamut of colors is always shown at the square of the color picker.
      Brightness is added to the base color chosen on the square of the color picker moving the slider to the left.
      For operations that are capable of using Alpha, another slider is added at the bottom of the color picker.
      See Fig. 5 - Color Picker - Square (HV + S)


- Use :kbd:`Wheel` to change overall brightness.
- Color sliders don't have a default value; the last value before any changes is used instead.


Eye Dropper
-----------

The eye dropper allows you to sample from anywhere in the Blender window.

The eyedropper can be use to select different kinds of data.

Color
   This is the most common usage.
Objects / Object-Data
   This is used with object buttons such as parent, constraints or modifiers to
   select an object from the 3D view.
Camera Depth
   Number buttons effecting distance can also use the eye-dropper,
   this is most useful for camera depth of field.

- :kbd:`E` will activate the eye-dropper while hovering over a button.
- :kbd:`LMB` dragging will mix the colors you drag over which can help when sampling noisy imagery.
- :kbd:`Spacebar` resets and starts mixing the colors again.


Color Ramp
==========

.. list-table::

   * - .. figure:: /images/Manual-Part-I-Interface-ColorBand-Before_25.jpg
          :width: 310px
          :figwidth: 310px

          Colorband before

     - .. figure:: /images/Manual-Part-I-Interface-ColorBand-After_25.jpg
          :width: 310px
          :figwidth: 310px

          Colorband after


*Color Ramps* enables the user to specify a range of colors based on color stops.
Color stops are similar to a mark indicating where the exact chosen color should be.
The interval from each of the color stops added to the ramp is a result of the color interpolation and
chosen interpolation method. The available options for Color Ramps are:


Add (Button)
   Clicking on this button will add a stop to your custom weight paint map.
   The stops are added from the last selected stop to the next one, from left to right and
   they will be placed in the middle of both stops.


Delete (Button)
   Deletes the selected color stop from the list.


'F' (Button)
   Flips the color band, inverting the values of the custom weight paint range.


Numeric Field
   Whenever the user adds a color stop to the custom weight paint range, the color stop will receive an index.
   This field shows the indexes added (clicking in the arrows until the counter stops), and allows
   the user to select the color stop from the list. The selected color stop will be shown with a dashed line.


Interpolation Options
   Enables the user to choose from **4** types of calculations for the color interpolation for each color stop.
   Available options are:


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


Position
   This slider controls the positioning of the selected color stop in the range.


Color Bar
   Opens a color Picker for the user to specify color and Alpha for the selected color stop.
   When a color is using Alpha, the Color Bar is then divided in two, with the left side
   showing the base color and the right side showing the color with the alpha value.



.. _curve-widget:

Curve Widget
============

.. figure:: /images/26-Manual-Material-Color-Node-Curves.jpg

   RGB Curves node


The *Curve Widget* is found in several places throughout Blender, such as:

- RGB Curves node
- Vector Curves node
- Paint/Sculpt brush falloff
- Color Management curves
  
The purpose of the *Curve Widget* is to allow the user to modify an input
(such as an image) in an intuitive manner by
smoothly adjusting the values up and down using the curve.

The input values are mapped to the X-axis of the graph, and the Y-axis is mapped to the output values.


Control Points
--------------

.. |delete-button| image:: /images/26-Material-Color-Node-Curves-Delpoints-Buticon.jpg

Like all curves in Blender, the curve of the *Curve Widget* is controlled using *control points*.

By default there are two control points: one at ``0.0, 0.0`` and one at ``1.0, 1.0``,
meaning the input is mapped directly to the output (unchanged).

To **move** a control point, simply click and drag it around.
To **add** a new control point, click anywhere on the curve where there is not already a control point.
To **remove** a control point, select it and click the |delete-button| button at the top right.


Controls
--------

Above the curve graph is a row of controls. These are:


.. figure:: /images/26-Manual-Material-Vector-Node-Curves-Controls.jpg

   Node curve controls



Channel selector
   Allows to select appropriate curve channel.

   .. figure:: /images/26-Manual-Material-Vector-Node-Curves-Axes.jpg

      Curve channel selector

Zoom In
   Zoom into the center of the graph to show more details and provide more accurate control.
   To navigate around the curve while zoomed in, click and drag in an empty part of the graph.

   .. figure:: /images/26-Material-Color-Node-Curves-Zoomout-Buticon.jpg

      Zoom out curve.
Zoom Out
   Zoom out of the graph to show less details and view the graph as a whole.
   You cannot zoom out further than the clipping borders (see *Clipping* below).

   .. figure:: /images/26-Material-Color-Node-Curves-Zoomin-Buticon.jpg

      Zoom in curve.
Tools
   .. figure:: /images/26-Material-Color-Node-Curves-Tools.jpg

      Advanced tools for curve

   Reset View
      Resets view of the curve.
   Vector Handle
      Vector type of curve point's handle.
   Auto Handle
      Automatic type of curve point's handle.
   Extend Horizontal
      Extends the curve horizontal.
   Extend Extrapolated
      Extends the curve extrapolated.
   Reset Curve
      Resets the curve in default (removes all added curve's points).
Clipping
   Enable/disable clipping and set the values to clip to.

   .. figure:: /images/26-Material-Color-Node-Curves-Clipping-Buticon.jpg

      Clipping options display of the curve.
Delete
   Remove the selected control point.

   .. figure:: /images/26-Material-Color-Node-Curves-Delpoints-Buticon.jpg

      Deletes points of the curve.


List View
=========

.. Document list view - vertex groups, UV Layers, they have search filtering, rename, scroll, resize etc.

TODO.

