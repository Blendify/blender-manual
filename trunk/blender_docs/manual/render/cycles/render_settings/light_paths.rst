.. _render-cycles-integrator-light-paths:

***********
Light Paths
***********

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Render --> Light Path`


.. _cycles-bounces:

Max Bounces
-----------

The maximum number of light bounces can be controlled manually.
While ideally this should be infinite,
in practice a smaller number of bounces may be sufficient,
or some light interactions may be intentionally left out for faster convergence.
The number of diffuse reflection,
glossy reflection and transmission bounces can also be controlled individually.

Light paths are terminated probabilistically when specifying a minimum number of light bounces
lower than the maximum. In that case, paths longer than minimum will be randomly stopped when
they are expected to contribute less light to the image.
This will still converge to the same image, but renders faster while possibly being noisier.

Total
   Maximum number of light bounces. For best quality, this should be set to the maximum.
   However, in practice, it may be good to set it to lower values for faster rendering.
   A value of 0 bounces results in direct lighting only.
Diffuse
   Maximum number of diffuse bounces.
Glossy
   Maximum number of glossy bounces.
Transparency
   Maximum number of transparency bounces.

   The maximum number of transparent bounces is controlled separately from other bounces.
   It is also possible to use probabilistic termination of transparent bounces,
   which might help rendering many layers of transparency.
Transmission
   Maximum number of transmission bounces.
Volume
   Maximum number of volume scattering bounces.

.. _render-cycles-integrator-clamp-samples:

Clamp
-----

Clamp Direct
   This option limits the maximum intensity a sample from rays which have not yet bounced can contribute to a pixel.
   It reduces noise at the cost of accuracy. Setting this option to 0.0 disables clamping altogether.
   Lower have a greater affect (dimmer samples) on the resulting image than higher values.

   .. note::

      A common issue encountered with *Path Tracing* is the occurrence of "fireflies":
      improbable samples that contribute very high values to pixels.
      This option provides a way to limit that. However, note that as you clamp out such values,
      other bright lights/reflections will be dimmed as well.

      Care must be taken when using this setting to find a balance between mitigating fireflies and
      losing intentionally bright parts. It is often useful to clamp indirect bounces separately,
      as they tend to cause more fireflies than direct bounces. See the *Clamp Indirect* setting.

Clamp Indirect
   The same as *Clamp Direct*, but for rays which have bounced multiple times.


Caustics
--------

A common source of noise is :term:`caustics`.

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
   on a sharp glossy material, which is observed through a rough glossy material.
   In fact in such a case there practically occurs a caustic.

   With path tracing it is difficult to find the specular highlight,
   but if you increase the roughness on the material, the highlight gets bigger and softer, and so easier to find.
   Often this blurring will hardly be noticeable, because it is blurred by the material anyway,
   but there are also cases where this will lead to a loss of detail in lighting.

.. seealso::

   See :ref:`Reducing Noise <render-cycles-reducing-noise-clamp-samples>`
   for examples of the clamp settings in use.
