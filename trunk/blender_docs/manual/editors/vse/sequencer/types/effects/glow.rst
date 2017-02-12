
****
Glow
****

This effect makes parts of an image glow brighter by working on
the luminance channel of an image.
The *Glow* is the superposition of the base image and a modified version,
where bright areas are blurred.

To "animate" the glow effect,
mix it with the base image using the Gamma Cross effect,
crossing from the base image to the glowing one.


Options
=======

Threshold
   Areas brighter than the *Threshold* are blurred.
Clamp
   The maximum luminosity that is added.
Boost Factor
   Multiplier of the brightness.
Blur Distance
   The size of the blur.
Quality
   ToDo.
Only boost
   This checkbox allows you to only show/use
   the "modified" version of the image, without the base one.


Example
=======

.. figure:: /images/editors_sequencer_strips_glow.png

   Example of a Glow effect applied to a picture.

