
****************
Channel Key Node
****************

.. figure:: /images/2.5_Channel_key_node.jpg
   :width: 150px

   Channel Key node


The *Channel Key* node determines background objects from foreground objects by the
difference in the selected channel's levels. For example in YUV color space,
this is useful when compositing stock footage of explosions (very bright)
which are normally shot against a solid, dark background.

There is one input to this node, the *Image* that is to be keyed.

Control this node using:

Color Space
   buttons selects what color space the channels will represent.
Channel
   buttons selects the channel to use to determine the matte.
High
   value selector determines the lowest values that are considered foreground.
   (which is supposed to be - relatively - height values: from this value to 1.0).
Low
   value selector determines the highest values that are considered to be background objects.
   (which is supposed to be - relatively - low values: from 0.0 to this value).

It is possible to have a separation between the two values to allow for a gradient of
transparency between foreground and background objects.

The outputs of this node are the *Image* with an alpha channel adjusted for the
keyed selection and a black and white *Matte* (i.e the alpha mask).
