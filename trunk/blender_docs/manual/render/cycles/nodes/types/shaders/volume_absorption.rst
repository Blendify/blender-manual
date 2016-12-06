.. Todo add links to settings that control these:

**********************
Volume Absorption Node
**********************

.. figure:: /images/render_cycles_nodes_shaders_volume-absorption.png
   :align: right

   Volume Absorption Node.


The *Volume Absorption* node allows light to be absorbed as is passes through it.
Typical usage for this node would be water and glass.
It can also be used with the :doc:`Volume Scatter </render/cycles/nodes/types/shaders/volume_scatter>`
node to create smoke. This node must be plugged into the *Volume Input*
of the :doc:`Material </render/cycles/nodes/types/output/material>` output node.


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
   Standard shader output.


Examples
========

.. figure:: /images/cycles_nodes_shader_volume_absorbtion.png

   Example of Volume Absorption.
