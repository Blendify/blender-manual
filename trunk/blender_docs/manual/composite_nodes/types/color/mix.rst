
********
Mix Node
********

.. figure:: /images/Node-Mix.jpg
   :align: right
   :width: 150px

This node mixes a base image (threaded to the top socket) together with a second image
(bottom socket)
by working on the individual and corresponding pixels in the two images or surfaces.
The way the output image is produced is selected in the drop-down menu. The size
(output resolution) of the image produced by the mix node is the size of the base image.
The alpha and Z channels are mixed as well.

.. seealso::

   :term:`Color Blend Modes` for details on each blending mode.

.. note:: Color Channels

   There are two ways to express the channels that are combined to result in a color: RGB or HSV.
   RGB stands for the Red/Green/Blue pixel format, and HSV stands for the Hue/Saturation/Value pixel format.


Alpha
   Click the *Alpha* button to make the mix node use the Alpha (transparency) values of the second (bottom)
   node. If enabled, the resulting image will have an Alpha channel that reflects both images' channels. Otherwise,
   (when not enabled, light green)
   the output image will mix the colors by considering what effect the Alpha channel has of the base
   (top input socket) image. The Alpha channel of the output image is not affected.
Fac
   The amount of mixing of the bottom socket is selected by the Factor input field (*Fac:*).
   A factor of zero does not use the bottom socket, whereas a value of 1.0 makes full use.
   In Mix mode, ``0.5`` is an even mix between the two, but in Add mode,
   ``0.5`` means that only half of the second socket's influence will be applied.


Examples
========

Below are samples of common mix modes and uses, mixing a color or checker with a mask.


.. figure:: /images/Compositing-Mix-examples.jpg

Some explanation of the mixing methods above might help you use the Mix node effectively:

- *Add* - adding blue to blue keeps it blue, but adding blue to red makes purple.
  White already has a full amount of blue, so it stays white.
  Use this to shift a color of an image. Adding a blue tinge makes the image feel colder.
- *Subtract* : Taking Blue away from white leaves Red and Green,
  which combined make Yellow (and you never thought you'd need a color wheel again, eh?).
  Taking Blue away from Purple leaves Red.
  Use this to de-saturate an image. Taking away yellow makes an image bluer and more depressing.
- *Multiply* : Black (0.00) times anything leaves black.
  Anything times White (1.00) is itself. Use this to mask out garbage, or to colorize a black-and-white image.
- *Hue* : Shows you how much of a color is in an image,
  ignoring all colors except what is selected: makes a monochrome picture (style 'Black & Hue').
- *Mix* : Combines the two images, averaging the two.
- *Lighten* : Like bleach, makes your whites whiter. Use with a mask to lighten up a little.
- *Difference* : Kinda cute in that it takes out a color.
  The color needed to turn Yellow into White is Blue.
  Use this to compare two verrry similar images to see what had been done to one to make it the other;
  sorta like a change log for images.
  You can use this to see a watermark (see `Using Mix to Watermark images`_)
  you have placed in an image for theft detection.
- *Darken*, with the colors set here, is like looking at the world through rose-colored glasses
  (sorry, I just couldn't resist).


Contrast Enhancement using Mix
------------------------------

Here is a small map showing the effects of two other common uses for the RGB Curve:
**Darken** and **Contrast Enhancement**.
You can see the effect each curve has independently,
and the combined effect when they are **mixed** equally.


.. figure:: /images/Compositing-RGB_Map.jpg

   Example node setup showing "Darken", "Enhance Contrast" and "Mix" nodes for composition.


As you can hopefully see, our original magic monkey was overexposed by too much light.
To cure an overexposure, you must both darken the image and enhance the contrast.
Other paint programs usually provide a slider type of control, but Blender,
ah the fantastic Blender, provides a user-definable curve to provide precise control.

In the top RGB curve, *Darken*, only the right side of the curve was lowered; thus,
any X input along the bottom results in a geometrically less Y output. The *Enhance
Contrast* RGB 'S' curve scales the output such that middle values of X change dramatically;
namely, the middle brightness scale is expanded,
and thus whiter whites and blacker blacks are output. To make this curve,
simply click on the curve and a new control point is added.
Drag the point around to bend the curve as you wish.
The Mix node combines these two effects equally, and Suzanne feels much better.
And NOBODY wants a cranky monkey on their hands.


Using Mix to Watermark images
-----------------------------

In the old days, a pattern was pressed into the paper mush as it dried,
creating a mark that identified who made the paper and where it came from.
The mark was barely perceptible except in just the right light.
Probably the first form of subliminal advertising. Nowadays,
people watermark their images to identify them as personal intellectual property,
for subliminal advertising of the author or hosting service,
or simply to track their image's proliferation throughout the web. Blender provides a complete
set of tools for you to both encode your watermark and to tell if an image has your watermark.


Encoding Your Watermark in an Image
-----------------------------------

First, construct your own personal watermark. You can use your name, a word,
or a shape or image not easily replicated.
While neutral gray works best using the encoding method suggested,
you are free to use other colors or patterns. It can be a single pixel or a whole gradient;
it's up to you. In the example below,
we are encoding the watermark in a specific location in the image using the Translate node;
this helps later because we only have to look in a specific location for the mark. We then use
the RGB to BW node to convert the image to numbers that the Map Value node can use to make the
image subliminal. In this case, it reduces the mark to one-tenth of its original intensity.
The Add node adds the corresponding pixels,
make the ones containing the mark ever-so-slightly brighter.


.. figure:: /images/Compositing-Mix-watermark-encode.jpg

   Embedding your mark in an Image using a Mark and Specific Position


Of course, if you *want* people to notice your mark, don't scale it so much,
or make it a contrasting color. There are also many other ways,
using other mix settings and fancier rigs. Feel free to experiment!

.. note:: Additional uses

   You can also use this technique, using settings that result in visible effects,
   in title sequences to make the words appear to be cast on the water's surface,
   or as a special effect to make words appear on the possessed girl's forearm. yuk.


Decoding an Image for your Watermark
------------------------------------

When you see an image that you think might be yours,
use the node map below to compare it to your stock image (pre-watermarked original).
In this map, the Mix node is set to Difference,
and the Map Value node amplifies any difference. The result is routed to a viewer,
and you can see how the original mark stands out, clear as a bell:


.. figure:: /images/Compositing-Mix-watermark-decode.jpg

   Checking an image for your watermark


Various image compression algorithms lose some of the original; the difference shows as noise.
Experiment with different compression settings and marks to see which works best for you by
having the encoding map in one scene, and the decoding map in another.
Use them while changing Blender's image format settings,
reloading the watermarked image after saving, to get an acceptable result.
In the example above, the mark was clearly visible all the way up to JPEG compression of 50%.


Using Dodge and Burn (History Lesson)
-------------------------------------

Use the dodge and burn mix methods in combination with a mask to affect only certain areas of
the image. In the old darkroom days, when, yes,
I actually spent hours in a small stinky room bathed in soft red light,
I used a circle cutout taped to a straw to dodge areas of the photo as the exposure was made,
casting a shadow on the plate and thus limiting the light to a certain area.

To do the opposite, I would burn in an image by holding a mask over the image.
The mask had a hole in it,
letting light through and thus 'burning' in the image onto the paper. The same equivalent can
be used here by mixing an alpha mask image with your image using a dodge mixer to lighten an
area of your photo. Remember that black is zero (no) effect, and white is one (full) effect.
And by the way, ya grew to like the smell of the fixer,
and with a little soft music in the background and the sound of the running water,
it was very relaxing. I kinda miss those dayz.

