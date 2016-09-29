
******
Glossy
******

.. figure:: /images/cycles_nodes_shader_glossy.png
   :align: right
   :width: 150px

   Glossy Node.

The *Glossy* :abbr:`BSDF (Bidirectional scattering distribution function)`
node is used to add reflection with microfacet distribution, used for materials such as metal or mirrors.

Inputs
======

Color
   Color of the surface, or physically speaking, the probability that light is reflected for each wavelength.
Roughness
   Influences sharpness of the reflection; perfectly sharp at 0.0 and smoother with higher values.
Normal
   Normal used for shading; if nothing is connected the default shading normal is used.


Properties
==========

Distribution
   Microfacet distribution to use. *Sharp* results in perfectly sharp reflections like a mirror,
   while *Beckmann*, *GGX* and *Ashikhmin-Shirley* can use the *Roughness* input for blurry reflections.


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
   * - .. figure:: /images/cycles_nodes_shader_glossy_behavior_sharp.png
     - .. figure:: /images/cycles_nodes_shader_glossy_behavior.png
   * - .. figure:: /images/cycles_nodes_shader_glossy_example.jpg
     - .. figure:: /images/cycles_nodes_shader_glossyrough.jpg
