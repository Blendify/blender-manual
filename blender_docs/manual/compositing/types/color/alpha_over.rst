.. TODO: Split "Strange Halo" into properties and glossary

***************
Alpha Over Node
***************

.. figure:: /images/compositing_nodes_alphaover.png
   :align: right
   :width: 150px

   Alpha Over Node.


Use this node to layer images on top of one another.
AlphaOver does not work on the colors of an image.

Inputs
======

Fac
   Controls the amount of influence the node exerts on the output image.
Image
   The background image.
Image
   The foreground image. Where the image pixels has an alpha greater than 0,
   the background image will be overlaid.


Properties
==========

Convert PreMultiply
   `Strange Halos or Outlines`_.
PreMul
   Mix Factor. See :term:`Alpha Channel`.


Outputs
=======

Image
   Standard image output.


Strange Halos or Outlines
=========================

This section clarifies the functionality of premultiplied-alpha button.
An alpha channel has a value of between 0 and 1.
To make an image transparent (to composite it over another one),
the RGB pixel values are multiplied by the alpha values
(making the image transparent (0) where the alpha is black (0),
and opaque (1) where it is white (1)).

To composite image A over image B, the alpha of image A gets multiplied by image A,
thus making the image part of A opaque and the rest transparent.
Then the alpha channel of A is inverted and multiplied by image B,
thus making image B transparent, where A is opaque and vice versa.
To get the final composite the resultant images are added.

A pre-multiplied alpha is, when the image (RGB)
pixels are already multiplied by the alpha channel,
therefore, the above compositing operation does not work too well,
and *convert pre-mult* has to be enabled.
This is only an issue in semi-transparent area and edges usually.
The issue normally occurs in a node setup,
in which two images previously combined with alpha,
then are combined again with yet another image.
The previously combined image was already multiplied (pre-mult)
and needs to be converted as such (hence, *Convert PreMul*).

If multiplied twice artifacts like a white or clear halo occur around
where the image meet, since the alpha value is being squared or cubed.
It also depends on whether or not the image has been rendered as a pre-mult,
or as a straight RGBA image.


Examples
========

.. figure:: /images/compositing-alphaover-example.jpg
   :width: 300px

   Assembling a composite Image using AlphaOver.


In this example, an image of a Cube is superimposed on a cliff background.
Use the PreMultiply button, when the foreground image and background images have
a combined Alpha that is greater than 1.00; otherwise, you will see an unwanted halo effect.
The resulting image is a composite of the two source images.

.. figure:: /images/compositing-alphaover-seethru.jpg
   :width: 300px

   Animated See-Through/Sheer SFX using AlphaOver on Frame 11.


In this example, we use the Factor control to make a sheer cloth or onion-skin effect.
This effect can be animate, allowing the observer to "see-through" walls
(or any foreground object) by hooking up a Time node to feed the Factor socket as shown below.
In this example, over the course of 30 frames, the Time node makes the AlphaOver node produce
a picture that starts with the background cliff image, and slowly bleeds through the cube.
This example shows frame 11 just as the cube starts to be revealed.

