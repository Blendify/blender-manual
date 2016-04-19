.. _cycles_shader_glossy:

******
Glossy
******

Glossy reflection with microfacet distribution, used for materials such as metal or mirrors.

Distribution
   Microfacet distribution to use. *Sharp* results in perfectly sharp reflections like a mirror,
   while *Beckmann*,
   *GGX* and *Ashikhmin-Shirley* can use the *Roughness* input for blurry reflections.
Color input
   Color of the surface, or physically speaking, the probability that light is reflected for each wavelength.
Roughness input
   Influences sharpness of the reflection; perfectly sharp at 0.0 and smoother with higher values.
Normal input
   Normal used for shading; if nothing is connected the default shading normal is used.
BSDF output
   Glossy :abbr:`BSDF (Bidirectional scattering distribution function)` shader.

.. list-table::
   :header-rows: 1

   * - Sharp Glossy
     - Rough Glossy
   * - .. figure:: /images/cycles_nodes_shader_glossy_sharp_behavior.png
     - .. figure:: /images/cycles_nodes_shader_glossy_behavior.png
   * - .. figure:: /images/cycles_nodes_shader_glossy.jpg
     - .. figure:: /images/cycles_nodes_shader_glossyrough.jpg
