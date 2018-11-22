
***********
Reflections
***********

If this effect is enabled, all Materials will use the depth buffer and
the previous frame color to create more accurate reflection than reflection probes.

If a *Reflection Plane* is near a reflective surface,
it will be used as the source for tracing rays more efficiently and fix the partial visibility problem [TODO image].
however the reflected color will not contain the following effects:
Subsurface scattering, volumetrics, screen space reflections, screen space refractions.

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Render --> Screen Space Reflections`

Refractions
   Screen space refractions work the same way as screen space reflections and use same parameters.
   But they are not enabled by default on all surfaces.
   Enabling it will have a small performance cost.
   You need to enable them in :menuselection:`Material Properties --> Options`.
   Materials using screen space refractions will not be able to cast screen space reflections.

Half Resolution Trace
   Use half resolution ray tracing. Only cast a ray for every fourth pixels.
   Enabling this option reduces drastically video memory usage and increase performances at the cost of quality.

Trace Precision
   Increase precision of the ray trace but introduce more noise and lower the maximum trace distance.
   Increased precision also increases performance cost.

Thickness
   How thick to consider the pixels of the depth buffer during the tracing.
   Higher values will stretch the reflections and add flickering. Lower values may make the ray miss surfaces.

Edge Fading
   Smoothly fade out the reflected pixels if they are close to a screen edge. The unit is in screen percentage.

Clamp
   Clamp the reflected color intensity to remove noise and fireflies.


Limitations
===========

- Only one glossy BSDF can emit screen space reflections.
- The chosen BSDF is currently arbitrary chosen.
- Only one refraction event is correctly modeled.
- Screen Space Reflections will reflect transparent object
  but without accurate positioning due to the one layer depth buffer.
