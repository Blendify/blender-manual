.. _bpy.types.CompositorNodeCurveRGB:

.. Editors Note: This page gets copied into :doc:`</render/cycles/nodes/types/color/rgb_curves>`
.. Editors Note: This page gets copied into :doc:`</blender_render/materials/nodes/types/color/rgb_curves>`
.. Editors Note: This page gets copied into :doc:`</blender_render/textures/nodes/types/color/rgb_curves>`

.. --- copy below this line ---

***************
RGB Curves Node
***************

.. figure:: /images/compositing_types_color_rgb-curves_node.png
   :align: right

   RGB Curves Node.

The *RGB Curves Node* allows color corrections for each color channel
and levels adjustments in the compositing context.


Inputs
======

Factor
   Controls the amount of influence the node exerts on the output image.
Image
   Standard image input.
Black Level
   Defines the input color that is (linear) mapped to black.
White Level
   Defines the input color that is (linear) mapped to white.

.. container:: lead

   .. clear

.. tip::

   To define the levels, use the :ref:`eye dropper <ui-eye-dropper>` to select a color sample of a displayed image.


Properties
==========

Channel
   Clicking on one of the channels displays the curve for each.

   C (Combined RGB), R (Red), G (Green), B (Blue), L (Luminance)
Curve
   A Bézier curve that varies the input levels (x-axis) to produce an output level (y-axis).
   For the curve controls see: :ref:`Curve widget <ui-curve-widget>`.


Outputs
=======

Image
   Standard image output.


Examples
========

Here are some common curves you can use to achieve desired effects:

.. figure:: /images/compositing_types_color_rgb-curves_example-common-use.png
   :width: 600px

   From left to right: 1. Lighten 2. Negative 3. Decrease Contrast 4. Posterize.


Color correction using Curves
-----------------------------

.. figure:: /images/compositing_types_color_rgb-curves_example-rgb.jpg
   :width: 600px

   Color correction with curves.

In this example, the image has too much red in it,
so we run it through an RGB node and reduce the Red channel by about half.

We added a middle dot so we could make the line into a sideways exponential curve.
This kind of curve evens out the amount of a color in an image as it reaches saturation. Also,
read on for examples of the Darken and Contrast Enhancement curves.


Color correction using Black/White Levels
-----------------------------------------

.. figure:: /images/compositing_types_color_rgb-curves_black-white-levels.png
   :width: 600px

   Color correction with Black/White Levels.

Manually adjusting the RGB curves for color correction can be difficult.
Another option for color correction is to use the Black and White Levels instead,
which really might be their main purpose.

In this example,
the White Level is set to the color of a bright spot of the sand in the background,
and the Black Level to the color in the center of the fish's eye.
To do this efficiently it is best to bring up the UV/Image editor showing the original input image.
You can then use the levels' color picker to easily choose
the appropriate colors from the input image, zooming into pixel level if necessary.
The result can be fine-tuned with the R, G, and B curves like in the previous example.

The curve for C is used to compensate for the increased contrast that is a side-effect of
setting Black and White Levels.


Effects
-------

.. figure:: /images/compositing_types_color_rgb-curves_ex.jpg
   :width: 600px

   Changing colors.

Curves and Black/White Levels can also be used to completely change the colors of an image.

Note that e.g. setting Black Level to red and White Level to blue does not simply substitute
black with red and white with blue as the example image might suggest.
Levels do color scaling, not substitution,
but depending on the settings they can result in the described color substitution.

(What really happens when setting Black Level to pure red and White Level to pure blue
is that the red channel gets inverted, green gets reduced to zero and blue remains unchanged.)

Because of this, the results of setting arbitrary Black/White Levels or RGB curves is hard to
predict, but can be fun to play with.
