
**************
Transform Node
**************

.. figure:: /images/composite_node_distort_transform.jpg
   :align: right
   :width: 150px

   Transform node


This node combines the functionality of three other nodes: :doc:`Scale </composite_nodes/types/distort/scale>`,
:doc:`translate </composite_nodes/types/distort/translate>`,
and :doc:`rotate </composite_nodes/types/distort/rotate>` nodes.

X, Y
   Used to move the input image horizontally and vertically.
Angle
   Used to rotate an image around its center.
   Positive values rotate counter-clockwise and negative ones clockwise.
Scale
   Used to resize the image. The scaling is relative, meaning a value of 0.5 gives half the size and a value
   of 2.0 gives twice the size of the original image.

.. TODO: document interpolation methods (bicubic, bilinear, nearest)
