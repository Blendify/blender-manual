
*******************
Difference Key Node
*******************

.. figure:: /images/difference_node.jpg

   Difference Key node


The difference key node determines how different each channel is from the given key in the
selected color space. If the differences are below a user defined threshold then the pixel is
considered transparent. Difference matting does not rely on a certain background color, but
can have less than optimal results if there is a significant amount of background color in the
foreground object.

There are two inputs to this node.

- The first is an input *Image* that is to be keyed.
- The *Key Color* can be input as an RGB value or selected using the color picker
  by clicking on the *Key Color* box to bring up the color dialog,
  then clicking on the eye dropper tool and selecting a color.

The selectable color spaces are *RGB* (default), *HSV*, *YUV*,
and *YCbCr*.

You can adjust the tolerance of each color in the colorspace individually so that you can have
more red variance or blue variance in what you would allow to be transparent.
I find that about 0.15 (or 15%) is plenty of variance if the background is evenly lit.
Any more unevenness and you risk cutting into the foreground image.

When the *Falloff* value is high, pixels that are close to the *Key Color*
are more transparent than pixels that are not as close to the *Key Color*
(but still considered close enough to be keyed). When the *Falloff* value is low,
it does not matter how close the pixel color (*Image*)
is to the *Key Color*, it is transparent.

The outputs of this node are the *Image* with an alpha channel adjusted for the
keyed selection and a black and white *Matte* (i.e the alpha mask).

Simple Example
==============

.. figure:: /images/Manual-Compositing-Node-DiffKey_ex1.jpg
   :width: 300px

   Using the Difference Key Node


In the example to the right (click to expand),
we have a purple cube with yellow marbeling in front of a very unevenly lit green screen.
We start building our noodle by threading the image to a difference key,
and using the eyedropper, pick a key color very close to the edge of the cube,
around where the halo is at the corner on the left-hand side; a fairly bright green.
We thread two viewers from the output sockets so we can see what (if anything)
the node is doing. We add an AlphaOver node,
threading the Matte to the **TOP** socket and the image to the **BOTTOM** socket.
Very Important, because 0 time blue is not the same as blue times zero.
You always want your mask to go to the top socket of the AlphaOver.
Premultiply is set and a full multiply is on so that we completely remove the green.
In this example,
we thread the output of the alphaover to a SplitViewer node so we can compare our results;
the original is threaded to the bottom input of the SplitViewer,
so that original is on the left, processed is on the right.

We set our variance to .15, and see what we get. What we get (not shown)
is a matte that masks around the cube,
but not on the right and around the edges where the green is darker;
that shade it is too far away from our key color. So,
since it is the green that is varying that we want to remove,
we increase the Green variation to 1.00 (not shown). Whoa! All the Green disappears
(all green within a 100% variation of our green key color is *all* the green),
along with the top of the box! Not good. So,
we start decreasing the green until we settle on 55% (shown).

Chaining Example
================

.. figure:: /images/Manual-Compositing-DiffKey_ex2.jpg
   :width: 300px

   Chaining Difference Key Nodes


We pay out the wazoo for our highly talented (and egotistical I might add) Mr.
Cube to come into the studio and do a few takes. We told him NOT to wear a green tie,
but when we look at our footage, lo and behold, there he is with a green striped tie on.
When we use our simple noodle, the green stripes on his tie go alpha,
and the beach background shows through. So, we call him up and, too late,
he's on his way back to Santa Monica and it wasn't in his contract and it wasn't his fault,
after all, we're supposed to have all this fancy postpro software yada yada and he hangs up.
Geez, these actors.

So, we chain two Difference Key nodes as shown to the right, and problem solved.
What we did was lower the variation percentage on the first to remove some of the green,
then threaded that to a second (lower) difference key,
where we sampled the green more toward the shadow side and outside edge.
By keeping both variations low, none of the green in his tie is affected;
that shade is outside the key's +/- variation tolerances.