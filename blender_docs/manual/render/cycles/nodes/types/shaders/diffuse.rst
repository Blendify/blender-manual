.. _cycles_shader_diffuse:

*******
Diffuse
*******

Lambertian and Oren-Nayar diffuse reflection.

Color input
   Color of the surface, or physically speaking,
   the probability that light is reflected or transmitted for each wavelength.
Roughness input
   Surface roughness; 0.0 gives standard Lambertian reflection, higher values activate the Oren-Nayar BSDF.
Normal input
   Normal used for shading; if nothing is connected the default shading normal is used.
BSDF output
   Diffuse :abbr:`BSDF (Bidirectional scattering distribution function)` shader.


.. list-table::

   * - .. figure:: /images/cycles_nodes_shader_diffuse_behavior.png

          Diffuse behavior

     -

   * - .. figure:: /images/cycles_nodes_shader_diffuse.jpg

     - .. figure:: /images/cycles_nodes_shader_oren-nayar.jpg
