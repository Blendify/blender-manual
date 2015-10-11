
***************
RGB Curves Node
***************

.. figure:: /images/Tutorials-NTR-ComRGBCurves.jpg
   :align: right
   :width: 150px

   RGB Curves node


For each color component channel (RGB) or the composite (C),
this node allows you to define a bezier curve that varies the input (x-axis) to produce an output value (y-axis).
Clicking on one of the *C R G B* components displays the curve for that channel.

.. seealso::

   - Read more about using the :ref:`ui-curve_widget`.

Here are some common curves you can use to achieve desired effects:


.. figure:: /images/Compositing-Common_RGB_Node_Uses.jpg

   Identifiers: A) Lighten B) Negative C) Decrease Contrast D) Posterize


Options
=======

Fac
   How much the node should factor in its settings and affect the output.
Black Level
   Defines the input color that is mapped to black. Default is black, which does not change the image.
White Level
   Defines the input color that is mapped to white. Default is white, which does not change the image.

The levels work exactly like the ones in the image viewer.
Input colors are scaled linearly to match black/white levels.

To define the levels, either use LMB on the color patch to bring up the color selection widget
or connect some RGBA input to the sockets.

To only affect the value/contrast (not hue) of the output, set the levels to shades of gray.
This is equivalent to setting a linear curve for C.

If you set any level to a color with a saturation greater than 0,
the output colors will change accordingly, allowing for basic color correction or effects.
This is equivalent to setting linear curves for R, G and B.


Examples
========

Color correction using Curves
-----------------------------

.. figure:: /images/Compo-Color-RGB.jpg
   :width: 320px

   Color correction with curves


In this example, the image has way too much red in it,
so we run it through an RGB node and reduce the Red channel by about half.

We added a middle dot so we could make the line into a sideways exponential curve.
This kind of curve evens out the amount of a color in an image as it reaches saturation. Also,
read on for examples of the Darken and Contrast Enhancement curves.


Color correction using Black/White Levels
-----------------------------------------

.. figure:: /images/Nodes-Curves-example-colorcorrection-levels.jpg
   :width: 320px

   Color correction with Black/White Levels


Manually adjusting the RGB curves for color correction can be difficult.
Another option for color correction is to use the Black and White Levels instead,
which really might be their main purpose.

In this example,
the White Level is set to the color of a bright spot of the sand in the background,
and the Black Level to the color in the center of the fish's eye. To do this efficiently it's
best to bring up an image viewer window showing the original input image. You can then use the
levels' color picker to easily choose the appropriate colors from the input image,
zooming in to pixel level if necessary. The result can be fine-tuned with the R,G,
and B curves like in the previous example.

The curve for C is used to compensate for the increased contrast that is a side-effect of
setting Black and White Levels.


Effects
-------

.. figure:: /images/Nodes-RGBCurve-Ex.jpg
   :width: 320px

   Changing colors


Curves and Black/White Levels can also be used to completely change the colors of an image.

Note that e.g. setting Black Level to red and White Level to blue does not simply substitute
black with red and white with blue as the example image might suggest.
Levels do color scaling, not substitution,
but depending on the settings they can result in the described color substitution.

(What really happens when setting Black Level to pure red and White Level to pure blue
is that the red channel gets inverted, green gets reduced to zero and blue remains unchanged.)

Because of this the results of setting arbitrary Black/White Levels or RGB curves is hard to
predict, but can be fun to play with.
