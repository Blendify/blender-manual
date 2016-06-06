.. _cycles_shader_volume_scatter:

**************
Volume Scatter
**************

The Volume Scatter node allows light to be scattered scatter light as is passes through it.
Typical usage would be to add fog to a scene. It can also be used with the `Volume Scatter`_
Node to create smoke. This node must be plugged into the *Volume Input*
of the :doc:`Material </render/cycles/nodes/types/output/material>` output node.


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
   Standard shader output.


Examples
========

.. figure:: /images/cycles_nodes_shader_volume_scatter.png

   Example of Volume Scatter.
