.. _bpy.types.ShaderNodeVolumeAbsorption:
.. (Todo add) links to settings that control these:

*****************
Volume Absorption
*****************

.. figure:: /images/render_cycles_nodes_types_shaders_volume-absorption_node.png
   :align: right

   Volume Absorption Shader.

The *Volume Absorption* node allows light to be absorbed as is passes through the volume.
Typical usage for this node would be water and glass.
It can also be used with the :doc:`Volume Scatter </render/cycles/nodes/types/shaders/volume_scatter>`
node to create smoke.


Inputs
======

Color
   Color of the volume.
Density
   The density of the absorption effect.


Properties
==========

This node has no properties.


Outputs
=======

Volume
   The Volume Shader output must be plugged into the *Volume Input*
   of the :doc:`Material </render/cycles/nodes/types/output/material>` output node.


Examples
========

.. figure:: /images/render_cycles_nodes_types_shaders_volume-absorption_example.png

   Example of Volume Absorption.
