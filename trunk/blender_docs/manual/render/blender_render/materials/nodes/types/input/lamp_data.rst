
**************
Lamp Data Node
**************

.. figure:: /images/bi_nodes_lamp-data.jpg
   :width: 180px

   Lamp Data node.


The Lamp Data node is used to obtain information related to a specified lamp object.
Select a lamp object listed in the Lamp field, then the following outputs will be available:

Color
   Lamp color multiplied by the lamp energy.
Light Vector
   An unit vector in the direction from the shading point to the lamp.
Distance
   Distance from the shading point to the lamp.
Shadow
   Shadow color that the other objects cast on the shading point.
Visibility Factor
   Light falloff ratio at the shading point.

The light textures and the shadow textures affect the Color and Shadow outputs, respectively.


.. note:: Portability to Various Scenes

   If multiple materials use a Lamp Data node linking to the same lamp object,
   including the Lamp Data node into a node group is recommended.
   Otherwise, when the mesh objects are imported to the other scene, all the materials may need to be modified.

