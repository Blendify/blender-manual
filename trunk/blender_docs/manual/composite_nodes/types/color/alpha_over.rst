
**************
AlphaOver Node
**************

.. figure:: /images/Tutorials-NTR-AlphaOver.jpg
   :align: right
   :width: 150px

   AlphaOver node


Use this node to layer images on top of one another. This node takes two images as input,
combines them by a factor, and outputs the image.
Connect the Background image to the top input, and the foreground image to the lower input.
Where the foreground image pixels have an alpha greater than 0 (namely, have some visibility),
the background image will be overlaid.

Use the *Factor* slider to 'merge' the two pictures.
A factor less than 1.00 will make the foreground more transparent,
allowing the background to bleed through.


Examples
========

.. figure:: /images/Compositing-AlphaOver-example.jpg
   :width: 300px

   Assembling a composite Image using AlphaOver


In this example, an image of a Toucan is superimposed over a wooden background. Use the
PreMultiply button when the foreground image and background images have a combined Alpha that
is greater than 1.00; otherwise you will see an unwanted halo effect.
The resulting image is a composite of the two source images.


.. figure:: /images/Compositing-AlphaOver-seethru.jpg
   :width: 300px

   Animated See-Through/Sheer SFX using AlphaOver - Frame 11


In this example, we use the Factor control to make a sheer cloth or onion-skin effect.
You can animate this effect, allowing the observer to 'see-through' walls
(or any foreground object) by hooking up a Time node to feed the Factor socket as shown below.
In this example, over the course of 30 frames, the Time node makes the AlphaOver node produce
a picture that starts with the background wood image, and slowly bleeds through the Toucan.
This example shows frame 11 just as the Toucan starts to be revealed.

AlphaOver does not work on the colors of an image,
and will not output any image when one of the sockets is unconnnected.


Strange Halos or Outlines
=========================

To clarify the premultiplied-alpha button: An alpha channel has a value of between 0 and 1.
When you make an image transparent (to composite it over another one),
you are really multiplying the RGB pixel values by the alpha values
(making the image transparent (0) where the alpha is black (0), and opaque (1)
where it is white (1)).

So, to composite image A over image B,
you get the alpha of image A and multiply it by image A,
thus making the image part of A opaque and the rest transparent.
You then inverse the alphas of A and multiply image B by it,
thus making image B transparent where A is opaque and vice versa.
You then add the resultant images and get the final composite.

A pre-multiplied alpha is when the image (RGB)
pixels are already multiplied by the alpha channel,
therefore the above compositing op doesn't work too well,
and you have to hit 'convert pre-mult'. This is only an issue in semi transparent area,
and edges usually. The issue normally occurs in Nodes when you have combined, with alpha,
two images, and then wish to combine that image with yet another image.
The previously combined image was previously multiplied (pre-mult)
and needs to be converted as such (hence, *Convert PreMul*).

If you don't pay attention and multiply twice,
you will get a white or clear halo around your image where they meet,
since your alpha value is being squared or cubed.
It also depends on whether or not you have rendered your image as a pre-mult,
or straight RGBA image.


.. figure:: /images/Compositing-AlphaOver-Layers.jpg

   Layering Images using AlphaOver Premul

