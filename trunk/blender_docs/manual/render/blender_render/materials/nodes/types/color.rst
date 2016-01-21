
***********
Color Nodes
***********

MixRGB
======

.. figure:: /images/material-color-node-mix.jpg

   MixRGB node


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
------

Fac
   The amount of mixing of the bottom socket is selected by the Factor input field (Fac:).
   A factor of zero does not use the bottom socket, whereas a value of ``1.0`` makes full use.
   In Mix mode, ``0.5`` is an even mix between the two, but in Add mode,
   ``0.5`` means that only half of the second socket's influence will be applied.
Color 1
   Input color value. The value can be provided by another node or set manually.
   Includes a color swatch, allowing you to select the color directly on the node.
Color 2
   Input color value. The value can be provided by another node or set manually.
   Includes a color swatch, allowing you to select the color directly on the node.


Outputs
-------

Color
   Value of the color, combined by the node.


Controls
--------

Clamp
   Clamp result of the node to 0...1 range.


RGB Curves
==========

.. figure:: /images/material-color-node-curves.jpg

   RGB Curves node


For each color component channel (RGB) or the composite (C),
this node allows you to define a bezier curve that varies the input (x-axis) to produce an output value (y-axis).
Clicking on one of the *C R G B* components displays the curve for that channel.

.. seealso::

   - Read more about using the :ref:`ui-curve_widget`.
   - :doc:`RGB Curves node in the compositor </compositing/types/color/index>` (includes examples)


Invert
======

.. figure:: /images/material-color-node-invert.jpg

   Invert node


This node simply inverts the input values and colors.


Inputs
------

Fac:
   Factor. The degree of node's influence in node tree. The value can be provided by another node or set manually.
Color
   Input color value. The value can be provided by another node or set manually.
   Includes a color swatch, allowing you to select the color directly on the node.


Outputs
-------

Color
   Value of the color, combined by the node.


Hue Saturation Value
====================

.. figure:: /images/material-color-node-hsv.jpg

   Hue Saturation Value node


Use this node to adjust the Hue, Saturation, and Value of an input.


Inputs
------

Fac
   Factor. The degree of node's influence in node tree. The value can be provided by another node or set manually.
Hue
   Input hue value of color. The value can be provided by another node or set manually.
Saturation
   Input saturation value of color. The value can be provided by another node or set manually.
Value
   Input HSV-Value of color. The value can be provided by another node or set manually.
Fac
   Factor. The degree of node's influence in node tree. The value can be provided by another node or set manually.
Color
   Input color value. The value can be provided by another node or set manually.
   Includes a color swatch, allowing you to select the color directly on the node.


Outputs
-------

Color
   Value of the color, combined by the node.
