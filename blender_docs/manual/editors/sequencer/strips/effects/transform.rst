
*********
Transform
*********

.. figure:: /images/VSE-Transform_ex.gif

Transform is a swiss-army knife of image manipulation. It scales, shifts,
and rotates the images within a strip.
The example to the right shows what can be done with a single image.
To make a smooth transition to the final effect,
enable the *Frame locked* button and define a curve in the Ipo Window
(Sequence mode).


.. figure:: /images/VSE-Transform_prop.jpg

With the *Transform* strip selected,
uses the properties panel to adjust the settings of this effect:

(x,y)Scale (Start,End):
   To adjust the scale (size). *xScale Start* defines the start width,
   *xScale End* the end width, *yScale Start* the start height,
   and *yScale End* the end height.
   The values higher than **1.0** will scale up the picture,
   while values lower than **1.0** will scale it down.
(x,y) (Start,End):
   To adjust the position (shifting).
   *x Start* defines the horizontal start position, *x End*,
   the end one; positive values shift the image to the right, negative values, to the left.
   *y Start* defines the vertical start position, *y End*,
   the end one; positive values shift the picture to the top, negative values, to the bottom.
rot (Start,End):
   The rotation is in degrees (**360** for a full turn) and is counter-clockwise.
   To make an image spin clockwise,
   make the end value lower than the start one (e.g. start it at 360 and go down from there).
