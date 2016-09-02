
***********
Transparent
***********

.. figure:: /images/cycles_nodes_shader_transparent.png
   :align: right
   :width: 150px

   Transparent Node.

Transparent :abbr:`BSDF (Bidirectional scattering distribution function)` without refraction,
passing straight through the surface, as if there were no geometry there. Useful with alpha maps, for example.
This shader :ref:`affects light paths somewhat differently <render-cycles-light-paths-transparency>`
than other :abbr:`BSDF (Bidirectional scattering distribution function)` s.
Note that only pure white transparent shaders are completely transparent.


Inputs
======

Color
   Color of the surface, or physically speaking,
   the probability for each wavelength that light is blocked or passes straight through the surface.


Properties
==========

This node has no properties.


Outputs
=======

BSDF
   Standard shader output.


Examples
========

.. list-table::

   * - .. figure:: /images/cycles_nodes_shader_transparent_behavior.png
          :align: center

          Transparent behavior.

     -

   * - .. figure:: /images/cycles_nodes_shader_transparent_example.jpg

          Transparent Shader (pure white).

     - .. figure:: /images/cycles_nodes_shader_transparent_example_dark.jpg

          Transparent Shader (gray)
