
**********************
Combine/Separate Nodes
**********************

Separate RGB Node
=================

.. figure:: /images/material-convertor-node-separatergb.jpg

   Separate RGB node.

This node separates an image into its red, green and blue channels.
The colors are then converted to intensity, which returns a greyscale to the output.
For example, if you have an image with pure green,
then the red and blue outputs will be black and the green output will be completely white.
Mixed colors will return mixed values according to their RGB intensity.   


Inputs
------

Image
   Input color value. Includes a color swatch, allowing you to select the color directly on the node.


Outputs
-------

R
   Value of the *red* color channel, separated out by the node.
G
   Value of the *green* color channel, separated out by the node.
B
   Value of the *blue* color channel, separated out by the node.


Combine RGB Node
================

.. figure:: /images/material-convertor-node-combinergb.jpg

   Combine RGB node.


This node combines a color (image) from separated red, green, blue channels.


Inputs
------

R
   Input value of *red* color channel. The value can be provided by another node or set manually.
G
   Input value of *green* color channel. The value can be provided by another node or set manually.
B
   Input value of *blue* color channel. The value can be provided by another node or set manually.


Outputs
-------

Image
   Output value of the color, combined by the node.


Separate HSV Node
=================

.. figure:: /images/material-convertor-node-separatehsv.jpg

   Separate HSV node.


This node separates an image into image maps for the hue, saturation, value channels.
Three values, often considered as more intuitive than the RGB system
(nearly only used on computers)

Use and manipulate the separated channels for different purposes; i.e.
to achieve some compositing/color adjustment result. For example,
you could expand the Value channel (by using the multiply node)
to make all the colors brighter. You could make an image more relaxed by diminishing
(via the divide or map value node) the Saturation channel.
You could isolate a specific range of colors
(by clipping the Hue channel via the Colorramp node) and change their color
(by the Add/Subtract mix node).


Inputs
------

Color
   Input color value. Includes a color swatch, allowing you to select the color directly on the node.


Outputs
-------

H
   Value of the *hue* color channel, separated out by the node (choose a color of the rainbow).
S
   Value of the *saturation* color channel,
   separated out by the node (the *quantity* of hue in the color
   (from desaturate - shade of gray - to saturate - brighter colors)).
V
   Value of the *value* color channel,
   separated out by the node (the *brightness* of the color
   (from 'no light' - black - to 'full light' - 'full' color, or white if Saturation is 0.0)).


Combine HSV Node
================

.. figure:: /images/material-convertor-node-combinehsv.jpg

   Combine HSV node.


This node combines a color from separated hue, saturation, value color channels.


Inputs
------

H
   Input value of *hue* color channel. The value can be provided by another node or set manually.
S
   Input value of *saturation* color channel. The value can be provided by another node or set manually.
V
   Input value of *value* color channel. The value can be provided by another node or set manually.


Outputs
-------

Color
   Output value of the color, combined by the node.

