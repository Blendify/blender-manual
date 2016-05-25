
..    TODO/Review: {{review|text= elaborate, exampls?}} .


***********
Input Nodes
***********

Input nodes provide input data for other nodes.


Time
====

.. figure:: /images/texture-nodes-time.jpg
   :width: 200px

   Time node.


The time node uses a frame range to output a value between 0 and 1.
By default the node output a linear transition from 0 to 1 from frame 1 to 250.
The shape of the curve can be manipulated to vary the output over time in different ways.


:kbd:`Plus`: Zoom in.
:kbd:`Minus`: Zoom out

.. rubric:: Tools

Reset View
   Resets curve view
Vector Handle
   Breaks tangent at curve handle, making a angle.
Auto Handle
   Default smooth interpolation of curve segments
Extend Horizontal
   Causes the curve to stay horizontal before the first point and after the last point.


.. figure:: /images/texture-nodes-time-extendHorizontal.jpg
   :width: 150px

   Extend Horizontal


   Extend Extrapolated
      Causes the curve to extrapolate before the first point and after the last point,
      based on the shape of the curve.


.. figure:: /images/texture-nodes-time-extendExtrapolate.jpg
   :width: 150px

   Extend Extrapolate


   Reset Curve
      Resets shape of curve to original linear shape.

Clipping Options:
   Use Clipping
      Forces curve points to stay between specified values.
   Min X/Y and Max X/Y
      Set the minimum and maximum bounds of the curve points.

:kbd:`X`:Delete curve points. The first and last points cannot be deleted.
*X and Y* The coordinates of the selected edit point.
*Sta*:Specify the start frame to use.
*End*:Specify the end frame to use.


Coordinates
===========

.. figure:: /images/texture-nodes-coordinate2.jpg

   Coordinates node


The Coordinates node outputs the geometry local coordinates,
relative to its bounding box as RGB colors:

- Red channel corresponds to X value.
- Green channel corresponds to Y value.
- Green channel corresponds to Z value.


Texture Node
============

.. figure:: /images/texture-nodes-texture.jpg

   Texture node


The texture node can be used to load a another node based or non-node based texture.

Color 1 and Color 2
   These can be used to remap a greyscale texture using two colors.


Image Node
==========

.. figure:: /images/texture-nodes-image.jpg

   Image node


The image node can be used to load an external image.

Browse for image
   Select an image that already exists in the scene.
Data-block name
   Set the name of the image data-block.
:kbd:`F`
   Save this image data-block, even if it has no users.
Open image
   Select image to use from file browser.
Unlink data-block
   Remove the image data-block from the node.
