
**********
Scale Node
**********

.. figure:: /images/compositing_nodes_distort_scale.png
   :align: right

   Scale Node.


This node scales the size of an image.


Inputs
======

Image
   Standard image input.
X, Y
   Available if Space is relative or absolute. Scale in the axis directions.


Properties
==========

Space
   Coordinate Space to scale relative to.

   Relative
      Percentage values relative to the dimensions of the image input.
   Absolute
      Size of an image by using absolute pixel values.
   Scene Size
      TODO.
   Render Size
      Image dimensions set in the Render panel.

      Stretch, Fit, Crop
         TODO.
      X, Y
         TODO.


Outputs
=======

Image
   Standard image output.


Examples
========

For instance X: 0.5 and Y: 0.5 would produce an image which width and height would be half of what they used to be.

Use this node to match image sizes. Most nodes produce an image that is the same size as the
image input into their top image socket. To uniformly combine two images of different size,
the second image has to be scaled up to match the resolution of the first.
