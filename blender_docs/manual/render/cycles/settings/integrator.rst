
**********
Integrator
**********

The integrator is the rendering algorithm used to compute the lighting.
Cycles currently supports a path tracing integrator with direct light sampling.
It works well for various lighting setups,
but is not as suitable for caustics and some other complex lighting situations.

Rays are traced from the camera into the scene,
bouncing around until they find a light source such as a lamp, an object emitting light,
or the world background. To find lamps and surfaces emitting light,
both indirect light sampling (letting the ray follow the surface BSDF)
and direct light sampling (picking a light source and tracing a ray towards it) are used.


Scene Settings
==============

Sampling
--------

There are two integrator modes that can be used: path tracing and branched path tracing.
The *path tracing integrator* is a pure path tracer;
at each hit it will bounce light in one direction and pick one light to receive lighting from.
This makes each individual sample faster to compute,
but will typically require more samples to clean up the noise.

Render Samples
   Number of paths to trace for each pixel in the final render. As more samples are taken,
   the solution becomes less noisy and more accurate.
Preview Samples
   Number of samples for viewport rendering.

The *branched path tracing integrator* is similar,
but at the first hit it will split the path for different surface components and
will take all lights into account for shading instead of just one.
This makes each sample slower, but will reduce noise,
especially in scenes dominated by direct or one-bounce lighting.
To get the same number of diffuse samples as in the path tracing integrator, note that e.g.
250 path tracing samples = 10 AA samples x 25 diffuse samples.
The Sampling panel shows this total number of samples.

AA Render Samples
   Number of samples to take for each pixel in the final render. More samples will improve antialiasing.
AA Preview Samples
   Number of samples for viewport rendering.

Diffuse Samples
   Number of diffuse bounce samples to take for each AA sample.
Glossy Samples
   Number of glossy bounce samples to take for each AA sample.
Transmission Samples
   Number of transmission bounce samples to take for each AA sample.
AO Samples
   Number of ambient occlusion samples to take for each AA sample.
Mesh Light Samples
   Number of mesh light samples to take for each AA sample.
Subsurface Samples
   Number of subsurface scattering samples to take for each AA sample.
Volume Samples
   Number of volume scattering samples to take for each AA sample.

For both integrators the noise pattern can be controlled.

Seed
   Random number generator seed; each different value gives a different noise pattern.


.. _cycles-bounces:

Bounces
-------

Max Bounces
   Maximum number of light bounces. For best quality, this should be set to the maximum. However, in practice,
   it may be good to set it to lower values for faster rendering.
   Setting it to maximum 0 bounces results in direct lighting only.
Min Bounces
   Minimum number of light bounces for each path,
   after which the integrator uses Russian Roulette to terminate paths that contribute less to the image.
   Setting this higher gives less noise, but may also increase render time considerably. For a low number of bounces,
   it's strongly recommended to set this equal to the maximum number of bounces.

Diffuse Bounces
   Maximum number of diffuse bounces.
Glossy Bounces
   Maximum number of glossy bounces.
Transmission Bounces
   Maximum number of transmission bounces.
Volume Bounces
   Maximum number of volume scattering bounces.


Transparency
------------

Transparency Max
   Maximum number of transparency bounces.
Transparency Min
   Minimum number of transparency bounces, after which Russian Roulette termination is used.
Transparent Shadows
   For direct light sampling,
   use transparency of surfaces in between to produce shadows affected by transparency of those surfaces.


Tricks
------

.. _render-cycles-integrator-no_caustics:

Reflective Caustics
   While in principle path tracing supports rendering of caustics with a sufficient number of samples,
   in practice it may be inefficient to the point that there is just too much noise.
   This option can be unchecked, to disable reflective caustics.
Refractive Caustics
    The same as above, but for refractive caustics.


.. _render-cycles-integrator-filter_glossy:

Filter Glossy
   When using a value higher than 0.0, this will blur glossy reflections after blurry bounces,
   to reduce noise at the cost of accuracy. 1.0 is a good starting value to tweak.

   Some light paths have a low probability of being found while contributing much light to the pixel.
   As a result these light paths will be found in some pixels and not in others, causing fireflies. An example of
   such a difficult path might be a small light that is causing a small specular highlight on a sharp glossy
   material, which we are seeing through a rough glossy material.
   In fact in such a case we practically have a caustic.


   With path tracing it is difficult to find the specular highlight,
   but if we increase the roughness on the material, the highlight gets bigger and softer, and so easier to find.
   Often this blurring will hardly be noticeable, because we are seeing it through a blurry material anyway,
   but there are also cases where this will lead to a loss of detail in lighting.

.. _render-cycles-integrator-clamp_samples:

Clamp Direct
   This option limits the maximum intensity a sample from rays which have not yet bounced can contribute to a pixel.
   Setting this option to 0.0 disables clamping altogether.
   Lower have a greater affect (dimmer samples) on the resulting image than higher values.

   .. note::

      A common issue encountered with path-tracing is the occurrence of *"fireflies"*:
      improbable samples that contribute very high values to pixels.
      This option provides a way to limit that. However, note that as you clamp out such values,
      other bright lights/reflections will be dimmed as well.
   
      Care must be taken when using this setting to find a balance between mitigating fireflies and losing
      intentionally bright parts. It's often useful to clamp indirect bounces separately,
      as they tend to cause more fireflies than direct bounces. See the *Clamp Indirect* setting.

Clamp Indirect
   The same as *Clamp Direct*, but for rays which have bounced multiple times.


See :ref:`Reducing Noise <render-cycles-reducing_noise-clamp_samples>` for examples of the clamp settings in use.


.. _render-cycles-integrator-material_settings:

Material Settings
=================

Multiple Importance Sample
   By default objects with emitting materials use both direct and indirect light sampling methods,
   but in some cases it may lead to less noise overall to disable direct light sampling for some materials.
   This can be done by disabling the *Multiple Importance Sample* option.
   This is especially useful on large objects that emit little light compared to other light sources.


   This option will only have an influence if the material contains an emission node;
   it will be automatically disabled otherwise.


Volume Render Settings
======================

The scene has these settings:

Step Size
   Distance between volume shader samples when rendering the volume.
   Lower values give more accurate and detailed results but also increased render time.
Max Steps
   Maximum number of steps through the volume before giving up,
   to protect from extremely long render times with big objects or small step sizes.

The world and materials have the following setting:

Homogeneous Volume
   Assume volume has the same density everywhere (not using any textures), for faster rendering.
   For example absorption in a glass object would typically not have any textures,
   and by knowing this we can avoid taking small steps to sample the volume shader.
Sampling Method
   Options are "Multiple Importance", "Distance" or "Equiangular".
   If you've got a pretty dense volume that is lit from far away then distance sampling is usually more efficient.
   If you've got a light inside or near the volume then equiangular sampling is better.
   If you have a combination of both, then the multiple importance sampling will be better.
