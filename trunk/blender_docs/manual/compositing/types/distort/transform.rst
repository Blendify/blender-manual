.. TODO: document interpolation methods (bicubic, bilinear, nearest)

**************
Transform Node
**************

.. figure:: /images/compositing_nodes_transform.png
   :align: right
   :width: 150px

   Transform Node.

This node combines the functionality of three other nodes: :doc:`Scale </compositing/types/distort/scale>`,
:doc:`translate </compositing/types/distort/translate>`,
and :doc:`rotate </compositing/types/distort/rotate>` nodes.

Input
=====

Image
   Standard image input.
X, Y
   Used to move the input image horizontally and vertically.
Angle
   Used to rotate an image around its center.
   Positive values rotate counter-clockwise and negative ones clockwise.
Scale
   Used to resize the image. The scaling is relative, meaning a value of 0.5 gives half the size and a value
   of 2.0 gives twice the size of the original image.


Properties
==========

Filter
   Interpolation Methods.

   Nearest, Bilinear, Bicubic


Output
======

Image
   Standard image output.

