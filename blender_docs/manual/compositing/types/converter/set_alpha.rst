
**************
Set Alpha Node
**************

.. figure:: /images/compositing_nodes_setalpha.png
   :align: right
   :width: 150px

   Set Alpha Node

This node adds an alpha channel to a picture. Some image formats, such as JPEG,
do not support an alpha channel. In order to overlay a JPEG image on top of a background,
you must add an alpha channel to it using this node.

The *Image* input socket is optional. If an input image is not supplied,
the base color shown in the swatch will be used. To change the color, :kbd:`LMB` click
the swatch and use the color-picker control to choose or specify a color you want.

The amount of *Alpha* (1.00 being totally opaque and 0.00 being totally transparent)
can be set for the whole picture using the input field. Additionally,
the Alpha factor can be set by feeding its socket.

.. note::

   This is not, and is not intended to be,
   a general-purpose solution to the problem of compositing an image that doesn't contain Alpha information.
   You might wish to use "Chroma Keying" or "Difference Keying" (as discussed elsewhere) if you can.
   This node is most often used (with a suitable input being provided by means of the socket)
   in those troublesome cases when you *can't,* for some reason, use those techniques directly.


Using SetAlpha to Fade to Black
===============================

To transition the audience from one scene or shot to another,
a common technique is to "fade to black". As its name implies,
the scene fades to a black screen. You can also "fade to white' or whatever color you wish,
but black is a good neutral color that is easy on the eyes and intellectually "resets" the
viewer's mind. The node map below shows how to do this using the Set Alpha node.


.. figure:: /images/Compositing-SetAlpha_fadetoblack.jpg

   Fade To Black


In the example above, the alpha channel of the swirl image is ignored.
Instead, a :doc:`time node </compositing/types/input/time>`
introduces a factor from 0.00 to 1.00 over 60 frames, or about 2 seconds,
to the Set Alpha node. Note that the time curve is exponentially-shaped,
so that the overall blackness will fade in slowly and then accelerate toward the end.
The Set Alpha node does not need an input image; instead the flat (shadeless) black color is used.
The Set Alpha Node uses the input factor and color to create a black image that has an alpha
set which goes from 0.00 to 1.00 over 60 frames, or completely transparent to completely opaque.
Think of alpha as a multiplier for how vivid you can see that pixel.
These two images are combined by our trusty AlphaOver node completely (a *Fac* tor of 1.00)
to produce the composite image. The SetAlpha node will thus, depending on the frame being rendered,
produce a black image that has some degree of transparency.
Set up and Animate, and you have an image sequence that fades to black over a 2-second period.


.. note:: No Scene information used

   This example node map does not use the RenderLayer.
   To produce this 2 second animation, no blender scene information was used.
   This is an example of using Blender's powerful compositing abilities
   separate from its modeling and animation capabilities.
   (A Render Layer could be substituted for the Image layer,
   and the "fade-network" effect will still produce the same effect)


Using SetAlpha to Fade In a Title
=================================

To introduce your animation,
you will want to present the title of your animation over a background.
You can have the title fly in, or fade it in. To fade it in,
use the SetAlpha node with the Time node as shown below.


.. figure:: /images/Compositing-SetAlpha_FadeInTitle.jpg

   Using Set Alpha to Fade in a Title


In the above example, a Time curve provides the Alpha value to the input socket.
The current RenderLayer, which has the title in view, provides the image. As before,
the trusty AlphaOver node mixes (using the alpha values)
the background swirl and the alphaed title to produce the composite image.
Notice the *ConvertPre* -Multiply button is NOT enabled; this produces a composite
where the title lets the background image show through where even the background image is
transparent, allowing you to layer images on top of one another.

Using SetAlpha to Colorize a BW Image
=====================================

.. figure:: /images/Compositing-SetAlpha_Colorize.jpg

   Using Set Alpha to Colorize an Image

In the example above, notice how the blue tinge of the render input colors the swirl.
You can use the Set Alpha node's color swatch with this kind of node map to add a consistent color to a BW image.

In the example map to the right,
use the *Alpha* value of the SetAlpha node to give a desired degree of colorization.
Thread the input image and the Set Alpha node into an AlphaOver node to colorize any black and
white image in this manner. Note the *ConvertPre* -Multiply button is enabled,
which tells the AlphaOver node not to multiply the alpha values of the two images together.
