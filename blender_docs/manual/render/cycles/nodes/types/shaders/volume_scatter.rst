.. _bpy.types.ShaderNodeVolumeScatter:

*******************
Volume Scatter Node
*******************

.. figure:: /images/render_cycles_nodes_shaders_volume-scatter.png
   :align: right

   Volume Scatter Node.

The *Volume Scatter* node allows light to be scattered as it passes through the volume.
Typical usage would be to add fog to a scene. It can also be used with
the :doc:`Volume Absorption </render/cycles/nodes/types/shaders/volume_absorption>`
Node to create smoke.


Inputs
=======

Color
   Color of the volume.
Density
   The density of the scatter effect.
Anisotropy
   Controls the look of the scatter effect depending on the direction of the light passing through it.


Properties
==========

Volume
   The Volume Shader output must be plugged into the *Volume Input*
   of the :doc:`Material </render/cycles/nodes/types/output/material>` output node.


Examples
========

.. figure:: /images/cycles_nodes_shader_volume_scatter.png

   Example of Volume Scatter.
