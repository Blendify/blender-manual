
*********
Color Key
*********

.. figure:: /images/compositing_nodes_colorkey.png
   :align: right
   :width: 150px

   Color Key Node.

The color key node creates a matte based on a specified color of the input image.

Inputs
======

Image
   Standard image input.


Properties
==========

Color
   The sliders represent threshold values.
   Higher values in this node's context mean a wider range of colors from
   the specified will be added to the matte.

   Hue, Saturation, Value


Outputs
=======

Image
   Image with its alpha channel adjusted for the keyed selection.
Matte
   A black and white alpha mask of the key.

