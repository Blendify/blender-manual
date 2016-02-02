
*****************
Distance Key Node
*****************

.. figure:: /images/compositing_nodes_distancekey.png
   :align: right
   :width: 150px

   Distance Key Node

The Distance Key node determines a pixels alpha value based on the 3 dimensional
distance between the image pixel color and the key color in a 3D RGB color space.
This key works well when trying to single out a specific color in a background
(not necessarily green). It is also possible to work with YCbCr color space
(chroma color space) but only the Cb and Cr channels are taken into consideration
for determining the distance between the foreground and background pixels.

You can adjust the Tolerance for what the node considers a match between
the key color and the foreground pixel. The tolerance affects how close a
pixel needs to be to the background pixel to be considered an absolute match.

When the Falloff value is high, pixels that are close to the Key Color are more
transparent than pixels that are not as close to the Key Color
(but still considered close enough to be keyed). When the Falloff value is low,
it does not matter how close the pixel color (Image) is to the Key Color, it is transparent.

There are two inputs to this node, the Image that is to be keyed and the Key Color that is to be keyed.

The outputs of this node are the Image with an alpha channel adjusted for
the keyed selection and a black and white Matte (i.e the alpha mask).
