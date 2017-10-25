.. _bpy.types.ShaderNodeBsdfVelvet:

***********
Velvet Node
***********

.. figure:: /images/render_cycles_nodes_shaders_velvet-bsdf.png
   :align: right

   Velvet Node.

The *Velvet* :abbr:`BSDF (Bidirectional scattering distribution function)`
node is used to add reflection to materials such as cloth.
It is meant to be used together with other shaders (such as a *Diffuse Shader*)
and is not particularly useful on its own.


Inputs
======

Color
   Color of the surface, or physically speaking, the probability that light is reflected for each wavelength.
Sigma
   Variance of the normal distribution,
   controlling the sharpness of the peak. It can be thought of as a kind of *roughness*.
Normal
   Normal used for shading; if nothing is connected the default shading normal is used.


Properties
==========

This node has no properties.


Outputs
=======

BSDF
   Standard shader output.


Examples
========

.. figure:: /images/render_cycles_nodes_types_shaders_velvet_behavior.png
   :align: center

.. figure:: /images/render_cycles_nodes_types_shaders_velvet_example.jpg
   :align: center

   The Velvet Shader.
