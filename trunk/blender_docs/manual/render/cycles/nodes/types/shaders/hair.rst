.. _bpy.types.ShaderNodeBsdfHair:

*********
Hair Node
*********

.. figure:: /images/render_cycles_nodes_shaders_hair-bsdf.png
   :align: right

   Hair Node.


The *Hair* :abbr:`BSDF (Bidirectional scattering distribution function)`
node is used to add shading for :doc:`Hair </physics/particles/hair/index>`.


Inputs
======

Color
   Color of the hair.
Offset
   Controls the way the light is rotated (angular shift) for the reflection/transmission.
Roughness U/V
   Controls the roughness in the direction light is skewed, and perpendicular to it.
Tangent
   Input tangent.


Properties
==========

Component
   There are two components that can be used to control the look of the hair.
   Usually you are going to want each of these and use a :doc:`Mix Node </render/cycles/nodes/types/shaders/mix>`.

   Reflection
      The light that bounces off the surface of the hair.
   Transmission
      The light that passes through the hair and comes out the other side.


Outputs
=======

BSDF
   Standard shader output.


Examples
========

Todo.
