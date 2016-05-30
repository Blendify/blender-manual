
**********************
Combine/Separate Nodes
**********************

All of these nodes do essentially the same thing: they split out an image into
(or recombine an image from) it is composite color channels. Each format supports the Alpha
(transparency) channel.
The standard way of representing color in an image is called a *color space*.
There are several color spaces supported:

RGB
   Red-Green-Blue traditional primary colors also broadcast directly to most computer monitors
HSV
   Three values, often considered as more intuitive than the RGB system (nearly only used on computers):

   Hue
      The *Hue* of the color.
   Saturation
      The *quantity* of hue in the color (from desaturating - a shade of gray - to saturate - brighter colors)
   Value
      The *brightness* of the color (from 'no light' - black - to 'full light' - 'full' color,
      or white if Saturation is 0.0).

YUV
   Luminance-Chrominance standard used in broadcasting analog PAL (European) video.
YCbCr
   Luminance-ChannelBlue-ChannelRed Component video for digital broadcast use,
   whose standards have been updated for HDTV and commonly referred to as the HDMI format for component video.

See also :term:`color space`.


Separate/Combine RGBA Node
==========================

.. figure:: /images/compositing_nodes_separatergba.png
   :width: 150px

   Separate RGBA Node.


This node separates an image into its red, green, blue and alpha channels.
There is a socket for each channel on the right.

.. figure:: /images/compositing_nodes_combinergba.png
   :width: 150px

   Combine RGBA Node.

This node combines separate input images as each color and alpha channel,
producing a composite image.
You use this node combine the channels after working on each color channel separately.


Examples
--------

.. figure:: /images/Compositing-Covert-CombineRGBA.jpg
   :width: 200px

In this first example, we take the Alpha channel and blur it,
and then combine it back with the colors. When placed in a scene,
the edges of it will blend in, instead of having a hard edge.
This is almost like anti-aliasing but in a three-dimensional sense.
Use this noodle when adding CG elements to live action to remove any hard edges.
Animating this effect on a broader scale will make the object appear to "phase" in and out,
as an "out-of-phase" time-traveling sync effect.

.. figure:: /images/Compositing-Covert-CombineRGBA2.jpg
   :width: 200px

In this node set up, we make all the reds become green,
and all the green both Red and Blue, and remove Blue from the image completely. Very cute.
Very fun.


Separate/Combine HSVA Nodes
===========================

.. figure:: /images/compositing_nodes_separatehsva.png
   :width: 150px

   Separate HSVA Node.

This node separates an image into image maps for the hue, saturation, value and alpha channels.

Use and manipulate the separated channels for different purposes; i.e.
to achieve some compositing/color adjustment result. For example,
you could expand the Value channel (by using the Multiply Node)
to make all the colors brighter. You could make an image more relaxed by diminishing
(via the divide or map value node) the Saturation channel.
You could isolate a specific range of colors
(by clipping the Hue channel via the Colorramp node) and change their color
(by the Add/Subtract mix node).

.. figure:: /images/compositing_nodes_combinehsva.png
   :width: 150px

   Separate HSVA Node.

Separate/Combine YUVA Node
==========================

.. figure:: /images/compositing_nodes_separateyuva.png
   :width: 150px

   Separate YUVA Node.

This node converts an RGBA image to YUVA color space,
then splits each channel out to its own output so that they can be manipulated independently.
Note that U and V values range from -0.5 to +0.5.

.. figure:: /images/compositing_nodes_combineyuva.png
   :width: 150px

   Combine YUVA Node.

Combines the channels back into a composite image. If you do not connect any input socket, you
can set a default value for the whole image for that channel using the numeric controls shown.


Separate/Combine YCbCrA Node
============================

.. figure:: /images/compositing_nodes_separateycbcra.png
   :width: 150px

   Separate YCbCrA Node.

This node converts an RGBA image to YCbCrA color space,
then splits each channel out to its own output so that they can be manipulated independently:

- Y: Luminance, 0=black, 1=white
- Cb: Chrominance Blue, 0=Blue, 1=Yellow
- Cr: Chrominance Red, 0=Red, 1=Yellow

.. note::

   If running these channels through a ColorRamp to adjust value,
   use the Cardinal scale for accurate representation.
   Using the Exponential scale on the luminance channel gives high-contrast effect.

.. figure:: /images/compositing_nodes_combineycbcra.png
   :width: 150px

   Combine YCbCrA Node
