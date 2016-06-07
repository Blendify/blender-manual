
******
MixRGB
******

.. figure:: /images/material-color-node-mix.jpg

   MixRGB node.


This node mixes a base color or image (threaded to the top socket)
together with a second color or image (bottom socket)
by working on the individual and corresponding pixels in the two images or surfaces.
The way the output image is produced is selected in the drop-down menu. The size
(output resolution) of the image produced by the mix node is the size of the base image.
The alpha and Z channels (for compositing nodes) are mixed as well.


Not one, not two, but count 'em, sixteen mixing choices include:

.. seealso::

   :term:`Color Blend Modes` for details on each blending mode.


Inputs
======

Fac
   The amount of mixing of the bottom socket is selected by the Factor input field (Fac:).
   A factor of zero does not use the bottom socket, whereas a value of 1.0 makes full use.
   In Mix mode, 0.5 is an even mix between the two, but in Add mode,
   0.5 means that only half of the second socket's influence will be applied.
Color 1
   Input color value. The value can be provided by another node or set manually.
   Includes a color swatch, allowing you to select the color directly on the node.
Color 2
   Input color value. The value can be provided by another node or set manually.
   Includes a color swatch, allowing you to select the color directly on the node.


Outputs
=======

Color
   Value of the color, combined by the node.


Controls
========

Clamp
   Clamp result of the node to 0...1 range.

