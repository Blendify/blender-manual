
*******************
Hue Saturation Node
*******************

.. figure:: /images/compositing_nodes_hsv.png
   :align: right
   :width: 150px

   Hue Saturation Node.

This node applies a color transformation in the HSV color space. 

Input
=====

Fac
   Controls the amount of influence the node exerts on the output image.
Image
   Standard image input.

Properties
==========

The transformations are relative shifts.

Hue
   The Hue slider specifies how the hue rotation of the image. 
   360° are mapped to (0 to 1). The hue shift of 0 (-180°) and 1 (+180°) have the same result.
   The default of 0.5 leaves the input image unchanged.
Saturation
   Ranges from (0 to 2).
   A saturation of 0 removes hues from the image, resulting in a grayscale image.
   A shift greater 1.0 increases saturation.
   The default of 1.0 leaves the input image unchanged.
Value
   Ranges from (0 to 2).
   Value is the overall brightness of the image.
   De/Increasing values shift an image darker/ lighter.
   The default of 1.0 leaves the input image unchanged.

Output
======

Image
   Standard image output



Hue/Saturation tips
===================

Some things to keep in mind that might help you use this node better:

Hues are vice versa
   A blue image, with a Hue setting at either end of the spectrum (0 or 1), is output as yellow (recall that white,
   minus blue, equals yellow). A yellow image, with a Hue setting at 0 or 1, is blue.
Hue and Saturation work together.
   So, a Hue of .5 keeps the blues the same shade of blue,
   but the saturation slider can deepen or lighten the intensity of that color.
Gray & White are neutral hues
   A gray image, where the RGB values are equal, has no hue. Therefore,
   this node can only affect it with the *Val* slider. This applies to all shades of gray,
   from black to white; wherever the values are equal.
Changing the effect over time
   The Hue and Saturation values are set in the node by the slider,
   but you can feed a Time input into the Factor to bring up (or down) the effect change over time.

.. note:: Tinge

   This HSV node simply shifts hues that are already there.
   To colorize a gray image, or to add a tint to an image,
   use a mix node to add in a static color from an RGB input node with your image.


HSV Example
===========

.. figure:: /images/Node-HSV_example.jpg

Here, the image was taken by a cheap digital camera in poor lighting at night using a flash
(can we do it any worse, eh?) is adjusted by decreasing the Hue
(decreasing reds and revealing more blues and greens), decreasing Saturation
(common in digital cameras, and evens out contrast) and increasing Value
(making it all lighter).
