
*******************
Difference Key Node
*******************

.. figure:: /images/difference_node.jpg
   :align: right
   :width: 150px

   Difference Key Node

This node produces a matte that isolates foreground content by comparing it with a reference background image.

There are two inputs:

Image 1
   contains foreground content against the background that is to be removed
Image 2
   is the reference background image

Where pixels match the reference background to within the specified **Tolerance**, the matte is made transparent.

Increase **Falloff** to make nearby pixels partially transparent producing a smoother blend along the edges.

Outputs are:

Image
   with its alpha channel adjusted for the keyed selection
Matte
   a monochrome representation of the mask


