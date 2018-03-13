.. _bpy.types.ShaderNodeVectorDisplacement:

************************
Vector Displacement Node
************************

.. figure:: /images/render_cycles_nodes_types_vector_vector_displacement_node.png
   :align: right

   Vector Displacement Node.

The *Vector Displacement* node is used to displace the surface along arbitrary directions,
unlike the regular Displacement node which only displaces along the surface normal.

It is typically used to apply vector displacement maps created by other sculpting
software. Vector displacement maps can fully represent the high resolution detail to
be applied on a smooth base mesh, unlike regular displacement maps.

For best results the mesh must be subdivided finely to bring out
the detail in the displacement texture.

.. seealso::

   :doc:`Material Displacement </render/cycles/materials/displacement>` for more details on displacement workflows.


Inputs
======

Offset
   Vector specifying the displacement along three axes.
   This is where a texture node can be connected.

   RGB colors are mapped to the XYZ axes (Object Space)
   or tangent, normal and bitangent axes (Tangent Space) respectively.
Midlevel
   Neutral displacement value that causes no displacement.
   With the default 0.0, any lower values will cause the surfaces to be pushed inwards,
   and any higher values will push it outwards.
Scale
   Increase or decrease the amount of displacement.


Properties
==========

Space
   Object Space maps work for static meshes, and will render slightly faster with less memory usage.
   Tangent Space maps can be used for meshes that will be deformed, like animated characters,
   so the displacement follows the deformation.


Outputs
=======

Displacement
   Displacement offset to be connected into the Material Output.


Examples
========

.. figure:: /images/render_cycles_nodes_types_vector_vector_displacement_example.jpg

   Regular and exaggerated vector displacement on a smooth base mesh.
