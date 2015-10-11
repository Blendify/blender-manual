
******************
Luminance Key Node
******************

.. figure:: /images/luminance_node.jpg
   :align: right
   :width: 150px

   Luminance Key node


The *Luminance Key* node determines background objects from foreground objects by
the difference in the luminance (brightness) levels.
For example, this is useful when compositing stock footage of explosions (very bright)
which are normally shot against a solid, dark background.

There is one input to this node, the *Image* that is to be keyed.

Control this node using:

- The *High* value selector determines the lowest values that are considered foreground.
  (which is supposed to be - relatively - light: from this value to 1.0).
- The *Low* value selector determines the hightes values that are considered to be background objects.
  (which is supposed to be - relatively - dark: from 0.0 to this value).

It is possible to have a separation between the two values to allow for a gradient of
transparency between foreground and background objects.

The outputs of this node are the *Image* with an alpha channel adjusted for the
keyed selection and a black and white *Matte* (i.e the alpha mask).


Example
=======

.. figure:: /images/Composting-LumaKey_ex.jpg
   :width: 300px

   Using Luma Key...with a twist


For this example, let's throw you a ringer. Here,
the model was shot against a *white* background. Using the Luminance Key node,
we get a matte out where the background is white, and the model is black;
the opposite of what we want. If we wanted to use the matte,
we have to switch the white and the black.
How to do this? ColorRamp to the rescue - we set the left color White Alpha 1.0,
and the right color to be Black Alpha 0.0. Thus, when the Colorramp gets in black,
it spits out white, and vice versa. The reversed mask is shown;
her white outline is useable as an alpha mask now.

Now to mix, we don't really need the AlphaOver node;
we can just use the mask as our Factor input. In this kinda weird case,
we can use the matte directly; we just switch the input nodes. As you can see,
since the matte is white (1.0) where we don't want to use the model picture,
we feed the background photo to the bottom socket
(recall the mix node uses the top socket where the factor is 0.0,
and the bottom socket where the factor is 1.0). Feeding our original photo into the top socket
means it will be used where the Luminance Key node has spit out Black. Voila,
our model is teleported from Atlanta to aboard a cruise ship docked in Miami.

