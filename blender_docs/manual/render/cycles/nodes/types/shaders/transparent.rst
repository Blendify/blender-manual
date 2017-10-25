.. _bpy.types.ShaderNodeBsdfTransparent:

****************
Transparent Node
****************

.. figure:: /images/render_cycles_nodes_shaders_transparent-bsdf.png
   :align: right

   Transparent Node.

The *Transparent* :abbr:`BSDF (Bidirectional scattering distribution function)`
node is used to add transparency without refraction, passing straight through the surface,
as if there were no geometry there. Useful with alpha maps, for example.
This shader :ref:`affects light paths somewhat differently <render-cycles-light-paths-transparency>`
than other :abbr:`BSDF (Bidirectional scattering distribution function)`\ s.
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

   * - .. figure:: /images/render_cycles_nodes_types_shaders_transparent_behavior.png
          :align: center

          Transparent behavior.

     - ..

   * - .. figure:: /images/render_cycles_nodes_types_shaders_transparent_example.jpg

          Transparent Shader (pure white).

     - .. figure:: /images/render_cycles_nodes_types_shaders_transparent_example-dark.jpg

          Transparent Shader (gray).
