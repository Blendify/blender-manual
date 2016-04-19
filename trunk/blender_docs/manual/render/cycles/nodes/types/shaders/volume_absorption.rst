.. Todo add links to settings that control these:

.. _cycles_shader_volume_absorption:

*****************
Volume Absorption
*****************

The Volume Absorption Node allows light to be absorbed as is passes through it.
Typical usage for this node would be water and glass.
It can also be used with the :doc:`Volume Scatter </render/cycles/nodes/types/shaders/volume_scatter>`
node to create smoke. This node must be plugged into the :ref:`Volume Output <cycles_shader_output_material>`.

Density
   The density of the absorption effect.

.. figure:: /images/cycles_nodes_shader_volume_absorbtion.png

   Example of Volume Absorption.
