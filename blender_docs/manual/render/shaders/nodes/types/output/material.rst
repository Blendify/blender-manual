.. _bpy.types.ShaderNodeOutputMaterial:

*************
Material Node
*************

.. figure:: /images/render_cycles_nodes_types_output_material_node.png
   :align: right

   Material Node.

The *Material Output* node is used to output surface material information to a surface object.


Inputs
======

Surface
   Shading for the :doc:`surface </render/materials/components/surface>` of the object.
Volume
   Shading for the :doc:`volume </render/materials/components/volume>` inside the object.

   .. seealso::

      The types of volume shaders are:

      - :doc:`Emission </render/shaders/nodes/types/shaders/emission>` shader.
      - :doc:`Volume Absorption </render/shaders/nodes/types/shaders/volume_absorption>` shader.
      - :doc:`Volume Scatter </render/shaders/nodes/types/shaders/volume_scatter>` shader.

Displacement
   Used to create bump mapping or actual subdivided :doc:`displacement </render/materials/components/displacement>`.


Properties
==========

This node has no properties.


Outputs
=======

This node has no outputs.
