
*************
Displace Node
*************

Ever look down the road on a hot summer day? See how the image is distorted by the hot air?
That's because the light is being bent by the air; the air itself is acting like a lens.
This fancy little node does the same thing;
it moves an input image's pixels based on an input vector mask
(the vector mask mimics the effect of the hot air).

This can be useful for a lot of things, like hot air distortion, quick-and-dirty refraction,
compositing live footage behind refracting objects like looking through bent glass or glass
blocks, and more! Remember what HAL saw in 2001:Space Odyssey;
that distorted wide-angle lens? Yup,
this node can take a flat image and apply a mask to produce that image.

The amount of displacement in the X and Y directions is determined by

- The value of the mask's channels:
- The scaling of the mask's channels

The (red) channel 1's value determines displacement along the positive or negative X axis. The
(green) channel 2's value determines displacement along the positive or negative Y axis.

If both the channels' values are equal (i.e. a greyscale image),
the input image will be displaced equally in both X and Y directions,
and also according to the X scale and Y scale buttons. These scale button act as multipliers
to increase or decrease the strength of the displacement along their respective axes.
They need to be set to non-zero values for the node to have any effect.

Because of this, you can use the displace node in two ways, with a greyscale mask
(easy to paint, or take from a procedural texture), or with a vector channel or RGB image,
such as a normal pass, which will displace the pixels based on the normal direction.

Example
=======

In this example, she's singing about dreams of the future. So, to represent this,
we use a moving clouds texture (shot just by rendering the cloud texture on a moving plane)
as the displacement map. Now, the colors in a black and white image go from zero (black)
to one (white), which,
if fed directly without scaling would only shift the pixels one position. So,
we scale their effect in the X and Y direction.

Upon reviewing it, sometimes stretching in both the X and Y direction made her face look fat,
and we all can guess her reaction to looking fat on camera. SO,
we scale it only half as much in the X so her face looks longer and thinner. Now,
a single image does not do justice to the animation effect as the cloud moves,
and this simple noodle does not reflect using blur and overlays to enhance (and complicate)
the effect, but this is the core.

Photos courtesy of Becca, no rights reserved. See also some movies of this node in action,
made by the wizard programmer himself, by following this
`external link <http://lists.blender.org/pipermail/bf-blender-cvs/2006-December/008773.html>`__


.. figure:: /images/Compositing-Nodes-Displace_example.jpg
   :width: 300px

   Music Video Distortion Example Using Displace

