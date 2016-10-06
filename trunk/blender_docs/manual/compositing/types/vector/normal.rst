.. Editors Note: This page gets copied into :doc:`</render/cycles/nodes/types/vector/normal>`
.. Editors Note: This page gets copied into :doc:`</render/blender_render/materials/nodes/types/vector/normal>`

***********
Normal Node
***********

.. figure:: /images/compositing_nodes_normal.png
   :align: right
   :width: 150px

   Normal Node.

The Normal node generates a normal vector and a dot product.

Inputs
======

Normal
   Normal vector input.


Properties
==========

Normal Direction
   To manually set a fixed normal direction vector.
   :kbd:`LMB` click and drag on the sphere to set the direction of the normal.


Outputs
=======

Normal
   Normal vector output.
Dot
   Dot product output. The dot product is a scalar value.

   - If two normals are pointing in the same direction the dot product is 1.
   - If they are perpendicular the dot product is zero (0).
   - If they are antiparallel (facing directly away from each other) the dot product is -1.
