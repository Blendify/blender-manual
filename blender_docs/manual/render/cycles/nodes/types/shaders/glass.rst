
**********
Glass Node
**********

.. figure:: /images/render_cycles_nodes_shaders_glass-bsdf.png
   :align: right

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

Color
   Color of the surface, or physically speaking, the probability that light is transmitted for each wavelength.
Roughness
   Influences sharpness of the refraction; perfectly sharp at 0.0 and smoother with higher values.
IOR
   Index of refraction (:term:`IOR`) defining how much the ray changes direction. At 1.
   0 rays pass straight through like transparent; higher values give more refraction.
Normal
   Normal used for shading.


Properties
==========

Distribution
   See :doc:`/render/cycles/nodes/types/shaders/glossy`.


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
