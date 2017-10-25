.. _bpy.types.ShaderNodeBsdfGlossy:

***********
Glossy Node
***********

.. figure:: /images/render_cycles_nodes_shaders_glossy-bsdf.png
   :align: right

   Glossy Node.

The *Glossy* :abbr:`BSDF (Bidirectional scattering distribution function)`
node is used to add reflection with microfacet distribution, used for materials such as metal or mirrors.


Inputs
======

Color
   Color of the surface, or physically speaking, the probability that light is reflected for each wavelength.
Roughness
   Input for the surface roughness resulting in sharp to blurry reflections.
Normal
   Normal used for shading.


Properties
==========

Distribution
   Microfacet distribution to use.

   Sharp
      Results in perfectly sharp reflections like a mirror. The *Roughness* value is not used.
   Multiple-scattering GGX
      Takes multiple bounce (scattering) events between microfacets into account.
      This gives a more energy conserving results, which would otherwise be visible as excessive darkening.

   Beckmann, GGX, Ashikhmin-Shirley


Outputs
=======

BSDF
   Standard shader output.


Examples
========

.. list-table::
   :header-rows: 1

   * - Sharp Glossy
     - Rough Glossy
   * - .. figure:: /images/render_cycles_nodes_types_shaders_glossy_behavior-sharp.png
     - .. figure:: /images/render_cycles_nodes_types_shaders_glossy_behavior.png
   * - .. figure:: /images/render_cycles_nodes_types_shaders_glossy_example.jpg
     - .. figure:: /images/render_cycles_nodes_types_shaders_glossy_rough.jpg
