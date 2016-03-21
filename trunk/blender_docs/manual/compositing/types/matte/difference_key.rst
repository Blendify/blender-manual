
*******************
Difference Key Node
*******************

.. figure:: /images/compositing_nodes_differencekey.png
   :align: right
   :width: 150px

   Difference Key Node.

This node produces a matte that isolates foreground content by comparing it with a reference background image.


Inputs
======

There are two inputs:

Image 1
   Contains foreground content against the background that is to be removed.
Image 2
   The reference background image.


Options
=======

Where pixels match the reference background to within the specified **Tolerance**, the matte is made transparent.

Falloff
   Increase to make nearby pixels partially transparent producing a smoother blend along the edges.

Outputs
=======

Outputs are:

Image
   Image with its alpha channel adjusted for the keyed selection.
Matte
   A black and white alpha mask of the key.
