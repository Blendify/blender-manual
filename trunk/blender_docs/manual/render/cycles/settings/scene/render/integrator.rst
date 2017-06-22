
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


Sampling
========

.. admonition:: Reference
   :class: refbox

   | Panel:    :menuselection:`Properties editor --> Render --> Sampling`

Sample Method
   There are two integrator modes that can be used: *Path Tracing* and *Branched Path Tracing*.
Square Samples
   Square the amount samples.
Seed
   Seed value for integrator to get different noise patterns.

   Animate Seed (clock icon)
      This button which can be found on the right side of the *Seed*
      value can be used to give different seed values. It is a good idea to enable this
      when making animation because in the real world each frame has a different noise pattern.

.. _render-cycles-integrator-clamp-samples:

Clamp Direct
   This option limits the maximum intensity a sample from rays which have not yet bounced can contribute to a pixel.
   It reduces noise at the cost of accuracy. Setting this option to 0.0 disables clamping altogether.
   Lower have a greater affect (dimmer samples) on the resulting image than higher values.

   .. note::

      A common issue encountered with *Path Tracing* is the occurrence of "fireflies":
      improbable samples that contribute very high values to pixels.
      This option provides a way to limit that. However, note that as you clamp out such values,
      other bright lights/reflections will be dimmed as well.

      Care must be taken when using this setting to find a balance between mitigating fireflies and losing
      intentionally bright parts. It is often useful to clamp indirect bounces separately,
      as they tend to cause more fireflies than direct bounces. See the *Clamp Indirect* setting.

Clamp Indirect
   The same as *Clamp Direct*, but for rays which have bounced multiple times.

Light Sampling Threshold
   Probabilistically terminates light samples when the light contribution
   is below this threshold (more noise but faster rendering).
   Zero disables the test and never ignores lights.
   This is useful because in large scenes with many light sources,
   some might only contribute a small amount to the final image, and increase render times.
   Using this setting can decease the render times needed to calculate
   the rays which in the end have very little affect on the image.

Pattern
   Random sampling pattern used by the integrator.

   Sobol
      Uses a Sobol pattern to decide the random sapling pattern used by the integrator.
      See `Sobol sequence <https://en.wikipedia.org/wiki/Sobol_sequence>`__ on Wikipedia for more information.
   Correlated Multi-Jitter
      Uses a Correlated Multi-Jitter pattern to decide the random sapling pattern used by the integrator. See
      `this Pixar paper <http://graphics.pixar.com/library/MultiJitteredSampling/paper.pdf>`__ for more information.

.. _render-cycles-integrator-layer-samples:

Layer Samples
   When render layers have per layer number of samples set, this option specifies how to use them.

   Use
      ToDo
   Bounded
      Bound render layer samples by scene samples.
   Ignore
      Ignore render layer sample settings.


Path Tracing
------------

The *Path Tracing* integrator is a pure path tracer;
at each hit it will bounce light in one direction and pick one light to receive lighting from.
This makes each individual sample faster to compute,
but will typically require more samples to clean up the noise.

Render Samples
   Number of paths to trace for each pixel in the final render. As more samples are taken,
   the solution becomes less noisy and more accurate.
Preview Samples
   Number of samples for viewport rendering.


Branched Path Tracing
---------------------

The non-progressive Branched Path Tracing integrator offers finer control over sampling.
It is similar to *Path Tracing*, but at the first hit it will split the path for
different surface components and will take all lights into account for shading instead of just one.

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

Sample All Direct Lights
   When enabled, Cycles will samples all lights in the scene for direct bounces, instead of randomly picking one.
   Disabling this can improve performance, when using a lot of AA Samples anyway, to clear up the render.
Sample All Indirect Lights
   Similar to direct light, but for indirects lights. This can reduce noise in scenes with many lights.


Light Paths
===========

.. admonition:: Reference
   :class: refbox

   | Panel:    :menuselection:`Properties editor --> Render --> Light Paths`

.. _cycles-bounces:

Bounces
-------

Max Bounces
   Maximum number of light bounces. For best quality, this should be set to the maximum.
   However, in practice, it may be good to set it to lower values for faster rendering.
   Setting it to maximum 0 bounces results in direct lighting only.
Min Bounces
   Minimum number of light bounces for each path,
   after which the integrator uses Russian Roulette to terminate paths that contribute less to the image.
   Setting this higher gives less noise, but may also increase render time considerably. For a low number of bounces,
   it is strongly recommended to set this equal to the maximum number of bounces.

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


Caustics & Filter Glossy
------------------------

.. _render-cycles-integrator-no-caustics:

Reflective Caustics
   While in principle path tracing supports rendering of caustics with a sufficient number of samples,
   in practice it may be inefficient to the point that there is just too much noise.
   This option can be unchecked, to disable reflective caustics.
Refractive Caustics
   The same as above, but for refractive caustics.


.. _render-cycles-integrator-filter-glossy:

Filter Glossy
   When using a value higher than 0.0, this will blur glossy reflections after blurry bounces,
   to reduce noise at the cost of accuracy. 1.0 is a good starting value to tweak.

   Some light paths have a low probability of being found while contributing much light to the pixel.
   As a result these light paths will be found in some pixels and not in others, causing fireflies.
   An example of such a difficult path might be a small light that is causing a small specular highlight
   on a sharp glossy material, which we are seeing through a rough glossy material.
   In fact in such a case we practically have a caustic.


   With path tracing it is difficult to find the specular highlight,
   but if we increase the roughness on the material, the highlight gets bigger and softer, and so easier to find.
   Often this blurring will hardly be noticeable, because we are seeing it through a blurry material anyway,
   but there are also cases where this will lead to a loss of detail in lighting.

.. seealso::

   See :ref:`Reducing Noise <render-cycles-reducing-noise-clamp-samples>`
   for examples of the clamp settings in use.


Geometry
========

.. admonition:: Reference
   :class: refbox

   | Panel:    :menuselection:`Properties editor --> Render --> Geometry`


Volume Sampling
---------------

Step Size
   Distance between volume shader samples when rendering the volume.
   Lower values give more accurate and detailed results but also increased render time.
Max Steps
   Maximum number of steps through the volume before giving up,
   to protect from extremely long render times with big objects or small step sizes.


.. _bpy.types.CyclesRenderSettings.*dicing_rate:
.. _cycles-subdivision-rate:

Subdivision Rate
----------------

These settings are used to control the :ref:`True Displacement <render-cycles-materials-displacement-true>`.

.. note::

   These Options are only available if :ref:`Experimental Feature Set <cycles-experimental-features>` is turned on.


Render
   Size of :term:`micropolygons` in pixels.
Preview
   Size of :term:`micropolygons` in pixels while preview rendering.

.. _bpy.types.CyclesRenderSettings.max_subdivisions:

Max Subdivisions
   Stop subdividing when this level is reached even if the dice rate would produce finer :term:`tessellation`.


.. _cycles-settings-scene-render-geometry:

Hair
----

These are global settings that apply to all instances of hair systems.
The resolution of the strands is controlled by the step values in particle settings.
Each hair system uses the material identified in the particle settings in the same way as Blender Internal.

.. seealso::

   There are also object level hair settings for each particle system which can be found in the
   :doc:`Hair Settings </render/cycles/settings/objects/hair>`.

Use Hair
   Enables rendering of hair particle systems.

Primitive
   Triangles
      Uses a triangle mesh.

      Resolution
         ToDo.
   Line Segments
      Uses a straight curve primitive.
   Curve Segments
      Uses a smooth Cardinal curve primitive. These interpolate a path through the curve keys.
      However, it renders slower than line segments.

      Curve Subdivisions
         The interpolated path is subdivided to give points to connect.
         The parameter subdivisions sets the number of divisions used.

Shape
   Thick
      Cylindrical segments between two points.

      Cull back-faces
         Excludes strands emitted from the mesh back facing the camera.

   Ribbons
      Are flat planes following the strand direction facing the camera.
Min Pixels
   Strands that are further away will be made wider, which is compensated with transparency to keep the look similar.
   This effect is only applied for camera rays. It works best with ribbon primitives.
