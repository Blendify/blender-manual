
****************
Channel Key Node
****************

.. figure:: /images/compositing_nodes_channelkey.png
   :align: right
   :width: 150px

   Channel Key Node.

The *Channel Key* node determines background objects from foreground objects by the
difference in the selected channel's levels. For example in YUV color space,
this is useful when compositing stock footage of explosions (very bright)
which are normally shot against a solid, dark background.

Inputs
======

Image
   The image that is to be keyed.


Options
=======

Control this node using:

Color Space
   This button selects what color space the channels will represent.
Channel
   This button selects the channel to use to determine the matte.
High
   value selector determines the lowest values that are considered foreground.
   (which is supposed to be - relatively - height values: from this value to 1.0).
Low
   value selector determines the highest values that are considered to be background objects.
   (which is supposed to be - relatively - low values: from 0.0 to this value).

It is possible to have a separation between the two values to allow for a gradient of
transparency between foreground and background objects.


Outputs
=======

Image
   Image with an alpha channel adjusted for the keyed selection.
Matte
   A black and white alpha mask of the key.
