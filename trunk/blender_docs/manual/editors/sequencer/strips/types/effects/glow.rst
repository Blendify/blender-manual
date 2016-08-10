
****
Glow
****

.. figure:: /images/editors_sequencer_strips_glow.png
   :width: 300px

   Glow Effect.

.. Todo, update text to match image.

Example of a Glow effect applied to a picture.

:Top left: Base picture (Lofoten Islands, Norway - source: wikipedia.fr);
:Top right: Result of the effect;
:Bottom left: Effect settings;
:Bottom right: Result with the Only boost button activated.


This effect makes parts of an image glow brighter by working on the luminance channel of an
image. The *Glow* is the superposition of the base image and a modified version,
where some areas (brighter than the *Threshold:*) are blurred.
With the *Glow* strip properties, you control this *Threshold:*,
the maximum luminosity that can be added (*Clamp:*),
a *Boost factor:* for it, the size of the blur (*Blur distance:*),
and its *Quality:*. The *Only boost* button allows you to only show/use
the "modified" version of the image, without the base one. To "animate" the glow effect,
mix it with the base image using the Gamma Cross effect,
crossing from the base image to the glowing one.
