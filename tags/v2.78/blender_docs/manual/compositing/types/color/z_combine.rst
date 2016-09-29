
**************
Z-Combine Node
**************

.. figure:: /images/compositing_nodes_zcombine.png
   :align: right
   :width: 150px

   Z Combine Node.


The Z-Combine node combines two images based on their Z-depth maps.
It overlays the images using the provided Z values to
detect which parts of one image are in front of the other.


Inputs
======

Image
   The background image.
Z
   Z-depth of the background image.
Image
   The foreground image.
Z
   Z-depth of the foreground image.


Properties
==========

Use Alpha
   The chosen Image pixel alpha channel is also carried over.
   If a pixel is partially or totally transparent,
   the result of the Z-Combine will also be partially transparent;
   in which case the background image will show through the foreground (chosen) pixel.
Anti-Alias Z
   Applies :term:`Anti-Aliasing` to avoid artifacts at sharp edges or areas with a high contrast.


Outputs
=======

Image
   If both Z values are equal, it uses the foreground image.
   Whichever Z-value is less decides which image pixel is used.
   See :term:`Z-buffer`.
Z
   The combined Z-depth, which allows to thread multiple Z-combines together.


Examples
========

.. figure:: /images/node-zcombine_ex_alpha.png
   :width: 300px

   Alpha and Z-Combine node.

This can be obtained by making an Alpha Over of two Z-Combine, one normal,
the other having inverted (reversed?) Z-values as inputs, obtained using for each of them a
*Map Value* node with a *Size* field set to -1.0:

.. figure:: /images/compositing-z-offset-example.jpg
   :width: 300px

   Choosing closest pixels.


In the example to the right, render output from two scenes are mixed using the Z-Offset node,
one from a sphere of size 1.30, and the other a cube of size 1.00.
The sphere and square are located at the same place. The cube is tipped forward,
so the corner in the center is closer to the camera than the sphere surface;
so Z-Offset chooses to use the cube's pixels. But the sphere is slightly larger
(a size of 1.30 versus 1.00), so it does not fit totally inside the cube. At some point,
as the cube's sides recede back away from the camera, the sphere's sides are closer.
When this happens, Z-offset uses the sphere's pixels to form the resulting picture.

This node can be used to combine a foreground with a background matte painting.
Walt Disney pioneered the use of multi-plane mattes, where three or four partial mattes were
painted on glass and placed on the left and right at different Z positions; minimal camera
moves to the right created the illusion of depth as Bambi moved through the forest.


.. note:: Valid Input

   Z Input Sockets do not accept fixed values; they must get a vector set (see Map Value node).
   Image Input Sockets will not accept a color since it does not have UV coordinates.

.. figure:: /images/compositing-z-offset-ex_images.jpg
   :width: 300px

   Mix and Match Images.


The Z-Combine can be used to merge two images as well,
using the Z-values put out by two render layers.
Using the Z-values from the sphere and cube scenes above, but threading different images,
yields the example to the right.

.. figure:: /images/node-zcombine_example.jpg
   :width: 300px

   Z-Combine in action.


In this node setup a render scene is mixed with a flat image. In the side view of the scene,
the purple cube is 10 units away from the camera, and the gray ball is 20.
The 3D cursor is about 15 units away from the camera. The image is Z-in at a location of 15,
thus inserting it in-between the cube and the ball.
The resulting image appears to have the cube on the table.

.. note:: Invisible Man Effect

   If a foreground image with a higher Alpha than the background,
   is then mixed in the Z-combine with a slightly magnified background,
   the outline of the transparent area will distort the background,
   enough to make it look like seeing a part of the background through
   an invisible yet Fresnel-lens object.

