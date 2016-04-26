
******
UV Map
******

.. figure:: /images/cycles_nodes_uv-map.png
   :align: right

   UV Map Node.


The *UV Map* node is used to retrieve specific UV maps. Unlike the :doc:`Texture Coordinate Node
</render/cycles/nodes/types/input/texture_coordinate>` which only provides the active UV map,
this node can retrieve any UV map belonging to the object using the material.


Options
=======

From Dupli
   See the :ref:`From Dupli <cycles-nodes-input-texture-coordinate-from-dupli>`
   option of the :doc:`Texture Coordinate Node </render/cycles/nodes/types/input/texture_coordinate>`.

UV Map
   UV map to use.


Output
======

UV
   UV mapping coordinates from the specified UV layer.
