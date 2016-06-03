
**************
ColorRamp Node
**************


.. figure:: /images/compositing_nodes_colorramp.png
   :align: right

   Color Ramp Node.

The ColorRamp Node is used for mapping values to colors with the use of a gradient.


Input
=====

Fac
   The Factor input is used as an index for the color ramp.


Properties
==========

Color Ramp
   For controls see :ref:`ui-color_ramp_widget`.


Output
======

Image
   Standard image output.
Alpha
   Standard alpha output.


Examples
========

Using ColorRamp to create an Alpha Mask
---------------------------------------

A powerful but often overlooked feature of the ColorRamp is to create an Alpha Mask,
or a mask that is overlaid on top of another image, and, like a mask,
allows some of the background to show through.
The example map below shows how to use the Color Ramp node to do this:


.. figure:: /images/Compositing-ColorRamp_alpha.jpg

   Using the ColorRamp node to create an alpha mask.


In the map above, a black and white swirl image, which is lacking an alpha channel,
is fed into the ColorRamp node as a *Fac* tor. (Technically,
we should have converted the image to a value using the RGB-to-BW node, buy hey,
this works just as well since we are using a BW image as input.)

We have set the ColorRamp node to a purely transparent color on the left end of the spectrum,
and a fully Red color on the right. As seen in the viewer,
the ColorRamp node puts out a mask that is fully transparent where the image is black.
Black is zero, so ColorRamp uses the color at the left end of the spectrum,
which we have set to transparent.
The ColorRamp image is fully red and opaque where the image is white (1.00).

We verify that the output image mask is indeed transparent by overlaying it on top of a
pumpkin image. For fun, we made that AlphaOver output image 0.66 transparent so that we can,
in the future, overlay the image on a flashing white background to simulate a scary scene with
lighting flashes.


Using ColorRamp to Colorize an Image
------------------------------------

The real power of ColorRamp is that multiple colors can be added to the color spectrum.
This example compositing map takes a boring BW image and makes it a flaming swirl!


.. figure:: /images/Compositing-ColorRamp_Colorize.jpg

In this example, we have mapped the shades of gray in the input image to three colors, blue,
yellow, and red, all fully opaque (Alpha of 1.00). Where the image is black,
ColorRamp substitutes blue, the currently selected color. Where it is some shade of gray,
ColorRamp chooses a corresponding color from the spectrum (bluish, yellow, to reddish).
Where the image is fully white, ColorRamp chooses red.
