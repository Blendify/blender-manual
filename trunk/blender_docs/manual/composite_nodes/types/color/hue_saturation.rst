
*******************
Hue Saturation Node
*******************

.. figure:: /images/Manual-Node-HSV.jpg

As an alternative to RGB editing, color can be thought of as a mix of Hues,
namely a normalized value along the visible spectrum from infra-red to ultraviolet
(the rainbow, remember "Roy G. Biv").
The amount of the color added depends on the saturation of that color;
the higher the saturation, the more of that pigment is added.
Use the saturation slider of this node to "bring out" the colors of a washed-out image.

This node takes an input image and runs the color of the image
(and the light it reflects and radiates) 'up' through a factor (0.0-1.0)
and applies a saturation of color effect of a hue to the image:

Hue:
   The **Hue** slider specifies how much to shift the hue of the image. Hue 0.5 (in the middle)
   does not shift the hue or affect the color of the image. As Hue shifts left,
   the colors shift as more cyan is added; a blue image goes bluer, then greener, then yellow.
   A red image goes violet, then purple, blue, and finally teal. Shifting right (increasing Hue from 0.5 to 1.0)
   introduces reds and greens. A blue image goes purple, plum, red, orange, and then yellow.
   A red image goes golden, olive, green, and cyan.
Sat:
   **Saturation** affect the amount of pigment in the image.
   A saturation of 0 actually *removes* hues from the color, resulting in a black-and-white grayscale image.
   A saturation of 1.0 blends in the hue, and 2.0 doubles the amount of pigment and brings out the colors.
Val:
   **Value** affects the overall amount of the color in the image.
   Increasing values make an image lighter; decreaing values shift an image darker.
Fac:
   **Factor** determines how much this node affects the image.
   A factor of 0 means that the input image is not affected by the Hue and Saturation settings.
   A factor of 1 means they rule, with .5 being a mix.


Hue/Saturation tips
===================

Some things to keep in mind that might help you use this node better:

Hues are vice versa.
   A blue image, with a Hue setting at either end of the spectrum (0 or 1), is output as yellow (recall that white,
   minus blue, equals yellow). A yellow image, with a Hue setting at 0 or 1, is blue.
Hue and Saturation work together.
   So, a Hue of .5 keeps the blues the same shade of blue,
   but the saturation slider can deepen or lighten the intensity of that color.
Gray & White are neutral hues.
   A gray image, where the RGB values are equal, has no hue. Therefore,
   this node can only affect it with the *Val* slider. This applies for all shades of gray,
   from black to white; wherever the values are equal.
Changing the effect over time.
   The Hue and Saturation values are set in the node by the slider,
   but you can feed a Time input into the Factor to bring up (or down) the effect change over time.

.. note:: Tinge

   This HSV node simply shifts hues that are already there.
   To colorize a gray image, or to ADD color to an image,
   use a mix node to add in a static color from an RGB input node with your image.


HSV Example
===========

.. figure:: /images/Manual-Node-HSV_example.jpg

Here, the image taken by a cheap digital camera in poor lighting at night using a flash
(can we do it any worse, eh?) is adjusted by decreasing the Hue
(decreasing reds and revealing more blues and greens), decreasing Saturation
(common in digital cameras, and evens out contrast) and increasing Value
(making it all lighter).
