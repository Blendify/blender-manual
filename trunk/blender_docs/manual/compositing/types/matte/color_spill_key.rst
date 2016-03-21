
****************
Color Spill Node
****************

.. figure:: /images/compositing_nodes_colorspill.png
   :align: right
   :width: 150px

   Color Spill Node.

The *Color Spill* node reduces one of the RGB channels so that it is not greater
then any of the others.
This is common when compositing images that were shot in front of a green or blue screen.
In some cases, if the foreground object is reflective, it will show the green or blue color;
that color has "spilled" onto the foreground object. If there is light from the side or back,
and the foreground actor is wearing white, it is possible to get "spill" green (or blue)
light from the background onto the foreground objects,
coloring them with a tinge of green or blue. To remove the green (or blue) light,
you use this fancy node.


Inputs
======

Image
   The image that is to be keyed.


Options
=======

Enhance slider
   Allows you to reduce the selected channel's input to the image
   greater than the color spill algorithm normally allows.
   This is useful for exceptionally high amounts of the color spill.


Outputs
=======

The outputs of this node are the image with the corrected channels.
