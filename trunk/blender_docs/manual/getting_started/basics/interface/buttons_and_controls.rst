
********************
Buttons and Controls
********************

Buttons and other controls can be found in almost every
:doc:`Window </getting_started/basics/interface/window_types>` of the Blender
interface. The different types of controls are described below.


Operation Buttons
=================

.. figure:: /images/Manual-Part-I-ConceptButtons2_25.jpg
   :align: right

   Operation button


These are buttons that perform an operation when clicked with :kbd:`LMB`.
They can be identified by their gray color in the default Blender scheme.

Pressing :kbd:`Ctrl-C` over these buttons copies their python command into the clipboard
which can be used in the python console or in the text editor when writing scripts.


Toggle Buttons
==============

.. figure:: /images/Manual-Part-I-ConceptButtons1_1_25.jpg
   :align: right

   Toggle buttons


Toggle buttons consist of tick boxes.
Clicking this type of button will toggle a state but will not perform any operation. In some
cases the button is attached to a number button to control the influence of the property.


- To change many toggle buttons at once, you can :kbd:`LMB` drag over multiple buttons,
  This works for check-boxes, toggles in the outliner and layer buttons.

  .. note::

     For layer buttons its often useful to hold :kbd:`Shift` at the same time,
     to set or clear many layers at once.

Radio Buttons
=============

.. figure:: /images/Manual-Part-I-ConceptButtons1_25.jpg
   :align: right

   Radio buttons


Radio buttons are used to choose from a small selection of "mutually exclusive" options.


Number Buttons
==============

.. figure:: /images/Manual-Part-I-ConceptButtons3_25.jpg
   :align: right

   Number buttons


Number buttons can be identified by their labels,
which in most cases contains the name and a colon followed by a number.
Number buttons are handled in several ways:


Incremental Steps
   To change the value in steps, click :kbd:`LMB` on the small triangles on the sides of the button.
Dragging
   To change the value in a wider range, hold down :kbd:`LMB` and drag the mouse to the left or right.

Text Input
   Press :kbd:`LMB` or :kbd:`Enter` to edit the value as a text field.

   When entering values by hand, this button works like any other text button.

   - Press :kbd:`Enter` to apply the change.
   - Press :kbd:`Esc` will cancel the value.


Expressions
-----------

You can also enter expressions such as ``3*2`` instead of ``6``. or ``5/10+3``.
Even constants like ``pi`` (3.142) or functions like ``sqrt(2)`` (square root of 2)
may be used.

*These expressions are evaluated by Python; for all available math expressions see:*
`math module reference <http://docs.python.org/py3k/library/math.html>`__


Units
-----

As well as expressions, you can mix units with numbers; for this to work,
units need to be set in the scene settings (Metric or Imperial).

Examples of valid units include:

- ``1cm``
- ``1m 3mm``
- ``1m, 3mm``
- ``2ft``
- ``3ft/0.5km``
- ``2.2mm + 5' / 3" - 2yards``

*Note that the commas are optional.
Also notice how you can mix between metric and imperial even though the display can only show one at a time.*


Menu Buttons
============

.. figure:: /images/Manual-Part-I-ConceptButtons4_25.jpg
   :align: right

   Datablock link buttons


Use the Menu buttons to work with items on dynamically created lists.
Menu buttons are principally used to link DataBlocks to each other.
DataBlocks are items like Meshes, Objects, Materials, Textures, and so on.
Linking a Material to an Object will assign that material to the selected Objects.


.. figure:: /images/Manual-Part-I-ConceptButtons4_1_25.jpg
   :align: right

   Datablock link menu with search


- The first button (with an icon of the DataBlock type) opens a menu that lets you select the DataBlock to
  link by clicking :kbd:`LMB` on the requested item. This list has a search box at the bottom.
- The second button displays the name of the linked DataBlock and lets you edit it after clicking :kbd:`LMB`.
- The "+" button duplicates the current DataBlock and applies it.
- The "X" button clears the link.

Sometimes there is a list of applied DataBlocks
(such as a list of materials used on the object). See *DataBlock link buttons* above.


- To select a datablock, click :kbd:`LMB` on it.
- To add a new section (e.g. material, or particle system),
  click :kbd:`LMB` on the "+" button to the right of the list.
- To remove a section, click :kbd:`LMB` on the "-" to the right of the list.


Another type of a Menu button block will show a static list with a range of options.
For example, the Add Modifier button will produce a menu with all of the available modifiers.


.. figure:: /images/Manual-Part-I-ConceptButtons4_menue_25.jpg
   :align: center

   Modifier options


.. note:: Unlinked objects

   Unlinked data is *not* **lost until you quit Blender**. This is a powerful Undo feature.
   If you delete an object the material assigned to it becomes unlinked, but is still there! You
   just have to re-link it to another object or supply it with a "Fake User" (i.e.
   by clicking that option in the corresponding DataBlock in the datablock-view of the Outliner).

   :doc:`Read more about Fake User » </data_system/data_system>`


Color Selector Controls
=======================

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



Cascade Buttons
===============

Occasionally, some buttons actually reveal additional buttons. For example, the
*Ramps* panel has a *Cascade* button called *Ramp* that reveals
additional buttons dealing with colorbanding.
See *Colorband before* and *Colorband after*.


.. list-table::

   * - .. figure:: /images/Manual-Part-I-Interface-ColorBand-Before_25.jpg
          :width: 310px
          :figwidth: 310px

          Colorband before

     - .. figure:: /images/Manual-Part-I-Interface-ColorBand-After_25.jpg
          :width: 310px
          :figwidth: 310px

          Colorband after


Color Ramps
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


Common Shortcuts
================

There are shortcuts shared between many button types.


While Hovering
   *When the cursor is held over a button*

   Vaue:
   - :kbd:`Ctrl-C` - copy the value of the button.
   - :kbd:`Ctrl-V` - paste the value of the button.
   - :kbd:`Backspace` - set the value to zero.
   - :kbd:`RMB` - open the context menu.
   - :kbd:`Alt-Wheel` - changes the value incremental steps.

     This also works for dropdowns and checkboxes buttons, it will cycle values.

   Animation:
   - :kbd:`I` - insert a keyframe.
   - :kbd:`D` - assign a driver.

While Dragging
   - :kbd:`Ctrl` - while dragging snap the discrete steps.
   - :kbd:`Shift` - gives finer control over the value.

While Editing Text
   - :kbd:`Home` - go to the start.
   - :kbd:`End` - go to the end.
   - :kbd:`Left`, :kbd:`Right` - move the cursor a single character.
   - :kbd:`Ctrl-Left`, :kbd:`Ctrl-Right` - move the cursor an entire word.
   - :kbd:`Backspace`, :kbd:`Delete` - delete characters.
   - :kbd:`Ctrl-Backspace`, :kbd:`Ctrl-Delete` - delete words.
   - Holding :kbd:`Shift` - while moving the cursor selects.

   - :kbd:`Ctrl-C` - copy the selected text.
   - :kbd:`Ctrl-V` - paste test at the cursor location.
   - :kbd:`Ctrl-A` - selects all text.

All Modes
   - :kbd:`Esc`, :kbd:`RMB` - cancels.
   - :kbd:`Enter`, :kbd:`LMB` - confirms.

