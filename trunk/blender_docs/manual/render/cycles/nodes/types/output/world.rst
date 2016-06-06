
*****
World
*****

Inputs
======

Surface
   The appearance of the environment,
   usually preceded by a :doc:`Background </render/cycles/nodes/types/shaders/background.html>` shader.
Volume
   Used to add volumetric effects to the world. See the :ref:`Volume Absorption <cycles_shader_volume_absorption>`
   and :ref:`Volume Scatter <cycles_shader_volume_scatter>` for more information.

   .. note::

      It is not possible to have and HDR and volumetric due to the fact that
      HDR's are assumed to be an infant distance from the the camera.


Properties
==========

This node has no properties.


Outputs
=======

This node has no outputs.
