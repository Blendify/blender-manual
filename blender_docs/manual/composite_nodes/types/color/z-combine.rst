
**************
Z-Combine Node
**************

.. figure:: /images/Tutorials-NTR-ComZCombine.jpg

   Z Combine node


The Z-Combine node takes two images and two Z-value sets as input. It overlays the images
using the provided Z values to detect which parts of one image are in front of the other.
If both Z values are equal, it uses the top image. It puts out the combined image,
with the combined Z-depth map, allowing you to thread multiple Z-combines together.

Z-Combine chooses whichever Z-value is less when deciding which image pixel to use. Normally,
objects are in front of the camera and have a positive Z value. If one Z-value is negative,
and the other positive, Z-Combine will use the image corresponding to the negative value.
You can think of a negative Z value as being behind the camera.
When choosing between two negative Z-values, Z-Combine will use whichever is more negative.

Alpha values carry over from the input images. Not only is the image pixel chosen,
but also its alpha channel value. So, if a pixel is partially or totally transparent,
the result of the Z-Combine will also be partially transparent;
in which case the background image will show through the foreground (chosen) pixel.
Where there are sharp edges or contrast,
the alpha map will automatically be anti-aliased to smooth out any artifacts.

However, you can obtain this by making an AlphaOver of two Z-Combine, one normal,
the other having inverted (reversed?) Z-values as inputs, obtained using for each of them a
*MapValue* node with a *Size* field set to -1.0:


.. figure:: /images/Manual-Node-ZCombine_ex_alpha.jpg
   :width: 300px

   Alpha and Z-Combine node.


Examples
========

.. figure:: /images/Manual-Compositing-Z-Offset-example.jpg
   :width: 300px

   Choosing closest pixels


In the example to the right, render output from two scenes are mixed using the Z-Offset node,
one from a sphere of size 1.30, and the other a cube of size 1.00.
The sphere and square are located at the same place. The cube is tipped forward,
so the corner in the center is closer to the camera than the sphere surface;
so Z-Offset chooses to use the cube's pixels. But the sphere is slightly larger
(a size of 1.30 versus 1.00), so it does not fit totally 'inside' the cube. At some point,
as the cube's sides recede back away from the camera, the sphere's sides are closer.
When this happens, Z-offset uses the sphere's pixels to form the resulting picture.

This node can be used to combine a foreground with a background matte painting.
Walt Disney pioneered the use of multi-plane mattes, where three or four partial mattes were
painted on glass and placed on the left and right at different Z positions; mininal camera
moves to the right created the illusion of depth as Bambi moved through the forest.


.. note:: Valid Input

   Z Input Sockets do not accept fixed values; they must get a vector set (see Map Value node).
   Image Input Sockets will not accept a color, since it does not have UV coordinates.


.. figure:: /images/Manual-Compositing-Z-Offset-ex_images.jpg
   :width: 300px

   Mix and Match Images


You can use Z-Combine to merge two images as well,
using the Z-values put out by two renderlayers.
Using the Z-values from the sphere and cube scenes above, but threading different images,
yields the example to the right.


.. figure:: /images/Manual-Node-ZCombine_example.jpg
   :width: 300px

   Z-Combine in action


In this noodle
(you may click the little expand-o-matic icon in the bottom right to view it to full size),
we mix a render scene with a flat image. In the side view of the scene,
the purple cube is 10 units away from camera, and the gray ball is 20.
The 3D cursor is about 15 units away from camera. We Z-in the image at a location of 15,
thus inserting it in-between the cube and the ball.
The resulting image appears to have the cube on the table.

.. note:: Invisible Man Effect

   If you choose a foreground image which has a higher Alpha than the background,
   and then mix the Z-combine with a slightly magnified background,
   the outline of the transparent area will distort the background,
   enough to make it look like you are seeing part of the background through an invisible yet Fresnel-lens object.
