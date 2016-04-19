.. _cycles_shader_transparent:

***********
Transparent
***********

Transparent :abbr:`BSDF (Bidirectional scattering distribution function)` without refraction,
passing straight through the surface, as if there were no geometry there. Useful with alpha maps, for example.
This shader :ref:`affects light paths somewhat differently <render-cycles-light_paths-transparency>`
than other :abbr:`BSDF (Bidirectional scattering distribution function)` s.
Note that only pure white transparent shaders are completely transparent.

Color input
   Color of the surface, or physically speaking,
   the probability for each wavelength that light is blocked or passes straight through the surface.
BSDF output
   Transparent :abbr:`BSDF (Bidirectional scattering distribution function)` shader.


.. list-table::

   * - .. figure:: /images/cycles_nodes_shader_transparent_behavior.png
          :align: center

          Transparent behaviour

     -

   * - .. figure:: /images/cycles_nodes_shader_transparent.jpg

          Transparent Shader (pure white)

     - .. figure:: /images/cycles_nodes_shader_transparentdark.jpg

          Transparent Shader (gray)
