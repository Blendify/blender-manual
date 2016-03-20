
**********
Add Effect
**********

.. figure:: /images/VSE-Lighting-Example.gif

   Can you hear the thunder?


The Add effect adds two colors together. Red and Cyan (Green and Blue) make White.
Red and Blue make "Magenta" (i.e. Purple!). Red and Green make Yellow.

The Add Effect adds the colors of two strips together,
Use this effect with a base image strip, and a modifier strip.
The modifier strip is either a solid color or a black-and-whte mask,
or another image entirely.
The example to the right shows what happens when you add gray to an image,
and animate the effect over time. The image gets bright because we are adding gray (R:.5,
G:.5, B:.5) to say, a blue color (R.1, G:.1, B:.5) resulting in (R:.6, G:.6, B:1.0)
which retains the original hue (relationship between the colors) but is much brighter
(has a higher value). When applied to the whole image like this,
the whole image seems to flash.

You can use this effect to increase the brightness of an image, or if you use a BW mask,
selectively increase the brightness of certain areas of the image. The Mix node, in Add mode,
does exactly the same thing as the Add sfx strip here,
and is controlled the same way by feeding the Factor input.
