
**********
Glass Node
**********

.. figure:: /images/cycles_nodes_shader_glass.png
   :align: right
   :width: 150px

   Glass Node.

The *Glass* :abbr:`BSDF (Bidirectional scattering distribution function)`
node is used to add a Glass-like shader mixing refraction and reflection at grazing angles.
Like the transparent shader, only pure white will make it transparent.
The glass shader tends to cause noise due to caustics.
Since the Cycles path tracing integrator is not very good at rendering caustics,
it helps to combine this with a transparent shader for shadows;
for :ref:`more details see here <render-cycles-reducing-noise-glass-and-transp-shadows>`.

Inputs
======

Distribution
   Microfacet distribution to use. *Sharp* results in perfectly sharp refractions like clear glass,
   while *Beckmann* and *GGX* can use the *Roughness* input for rough glass.
Color
   Color of the surface, or physically speaking, the probability that light is transmitted for each wavelength.
Roughness
   Influences sharpness of the refraction; perfectly sharp at 0.0 and smoother with higher values.
IOR
   Index of refraction (:term:`IOR`) defining how much the ray changes direction. At 1.
   0 rays pass straight through like transparent; higher values give more refraction.
Normal
   Normal used for shading; if nothing is connected the default shading normal is used.


Properties
==========

Distribution
   Microfacet distribution to use. *Sharp* results in perfectly sharp refractions like clear glass,
   while *Beckmann* and *GGX* can use the *Roughness* input for rough glass.


Outputs
=======

BSDF
   Standard shader output.


Examples
========

.. list-table::
   :header-rows: 1

   * - Sharp Glass
     - Rough Glass
   * - .. figure:: /images/cycles_nodes_shader_glass_sharp_behavior.png
     - .. figure:: /images/cycles_nodes_shader_glass_behavior.png
   * - .. figure:: /images/cycles_nodes_shader_glass_example.jpg
     - .. figure:: /images/cycles_nodes_shader_glass_example_rough.jpg
