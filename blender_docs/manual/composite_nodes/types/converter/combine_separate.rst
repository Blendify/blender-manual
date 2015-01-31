
**********************
Combine/Separate Nodes
**********************

All of these node do essentially the same thing: they split out an image into
(or recombine an image from) its composite color channels. Each format supports the Alpha
(transparency) channel.
The standard way of representing color in an image is called a *color space*.
There are several color spaces supported:

RGB
   Red-Green-Blue traditional primary colors, also broadcast directly to most computer monitors
HSV
   Three values, often considered as more intuitive than the RGB system (nearly only used on computers):

   Hue
      the **Hue** of the color (in some way, choose a 'color' of the rainbow);
   Saturation
      the **quantity** of hue in the color (from desaturate - shade of gray - to saturate - brighter colors)
   Value: the **luminosity** of the color
      (from 'no light' - black - to 'full light' - 'full' color, or white if Saturation is 0.0).

YUV
   Luminance-Chrominance standard used in broadcasting analog PAL (European) video.
YCbCr
   Luminance-ChannelBlue-ChannelRed Component video for digital broadcast use,
   whose standards have been updated for HDTV and commonly referred to as the HDMI format for component video.

See the global wikipedia for more information on color spaces.


Separate/Combine RGBA Node
==========================

.. figure:: /images/Tutorials-NTR-ComSepRGBA.jpg

   Separate RGBA node


This node separates an image into its red, green, blue and alpha channels.
There's a socket for each channel on the right.


.. figure:: /images/Manual-Compositing_Nodes-Combine_RGBA.jpg

   Combine RGBAnode


This node combines separate input images as each color and alpha channel,
producing a composite image.
You use this node combine the channels after working on each color channel separately.


Examples
--------

.. figure:: /images/Manual-Compositing-Covert-CombineRGBA.jpg
   :width: 200px


In this first example, we take the Alpha channel and blur it,
and then combine it back with the colors. When placed in a scene,
the edges of it will blend in, instead of having a hard edge.
This is almost like anti-aliasing, but in a three-dimensional sense.
Use this noodle when adding CG elements to live action to remove any hard edges.
Animating this effect over a broader scale will make the object appear to "phase" in and out,
as a "out-of-phase" time-traveling sync effect.


.. figure:: /images/Manual-Compositing-Covert-CombineRGBA2.jpg
   :width: 200px


In this fun little noodle we make all the reds become green,
and all the green both Red and Blue, and remove Blue from the image completely. Very cute.
Very fun.


Separate/Combine HSVA Nodes
===========================

.. figure:: /images/Tutorials-NTR-ComSepHSVA.jpg

   Separate HSVA node


This node separates an image into image maps for the hue, saturation, value and alpha channels.

Use and manipulate the separated channels for different purposes; i.e.
to achieve some compositing/color adjustment result. For example,
you could expand the Value channel (by using the multiply node)
to make all the colors brighter. You could make an image more relaxed by diminishing
(via the divide or map value node) the Saturation channel.
You could isolate a specific range of colors
(by clipping the Hue channel via the Colorramp node) and change their color
(by the Add/Subtract mix node).


Separate/Combine YUVA Node
==========================

.. figure:: /images/Manual-Compositing_Nodes-Separate_YUVA.jpg

   Separate YUVA node


This node converts an RGBA image to YUVA color space,
then splits each channel out to its own output so that they can be manipulated independently.
Note that U and V values range from -0.5 to +0.5.


.. figure:: /images/Manual-Compositing_Nodes-Combine_YUVA.jpg

   Combine YUVA node


Combines the channels back into a composite image. If you do not connect any input socket, you
can set a default value for the whole image for that channel using the numeric controls shown.


Separate/Combine YCbCrA Node
============================

.. figure:: /images/Manual-Compositing_Nodes-Separate_YCbCrA.jpg

   Separate YCbCrA node


This node converts an RGBA image to YCbCrA color space,
then splits each channel out to its own output so that they can be manipulated independently:

- Y: Luminance, 0=black, 1=white
- Cb: Chrominance Blue, 0=Blue, 1=Yellow
- Cr: Chrominance Red, 0=Red, 1=Yellow

.. note::

   If running these channels through a ColorRamp to adjust value,
   use the Cardinal scale for accurate representation.
   Using the Exponential scale on the luminance channel gives high-contrast effect.


.. figure:: /images/Manual-Compositing_Nodes-Combine_YCbCrA.jpg

   Combine YCbCrA node


So, I kinda think you get the idea,
and I was trying to think of some other creative way to write down the same thing,
but I can't. So, you'll have to figure this node out on your own.

