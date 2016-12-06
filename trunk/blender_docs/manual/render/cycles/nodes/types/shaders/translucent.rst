
****************
Translucent Node
****************

.. figure:: /images/render_cycles_nodes_shaders_translucent-bsdf.png
   :align: right

   Translucent Node.

The *Translucent* :abbr:`BSDF (Bidirectional scattering distribution function)`
is used to add Lambertian diffuse transmission.


Inputs
======

Color
   Color of the surface, or physically speaking, the probability that light is transmitted for each wavelength.
Normal
   Normal used for shading; if nothing is connected the default shading normal is used.


Properties
==========

This node has no properties.


Outputs
=======

BSDF output
   Standard shader output.


Examples
========

.. figure:: /images/cycles_nodes_shader_translucent_behavior.png
   :align: center

.. figure:: /images/cycles_nodes_shader_translucent_example.jpg
   :align: center

   Translucent Shader.
