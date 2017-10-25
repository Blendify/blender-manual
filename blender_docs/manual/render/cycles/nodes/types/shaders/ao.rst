.. _bpy.types.ShaderNodeAmbientOcclusion:

**********************
Ambient Occlusion Node
**********************

.. figure:: /images/render_cycles_nodes_shaders_ambient-occlusion.png
   :align: right

   Ambient Occlusion Node.

The *Ambient Occlusion* shader node gives per-material control for the amount of AO.
When AO is enabled in the world, it affects all diffuse BSDFs in the scene.
With this option it is possible to let only some materials be affected by AO,
or to let it influence some materials more or less than others.


Inputs
======

Color
   Surface reflection color.


Properties
==========

This node has no properties.


Outputs
=======

AO
   Standard shader output.


Example
=======

.. figure:: /images/render_cycles_nodes_types_shaders_ao_example.jpg

   White AO shader.
