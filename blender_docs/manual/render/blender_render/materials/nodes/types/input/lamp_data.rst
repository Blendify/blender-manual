
**************
Lamp Data Node
**************

.. figure:: /images/render_blender-render_materials_nodes_input_lamp-data.png
   :align: right

   Lamp Data node.


The Lamp Data node is used to obtain information related to a specified lamp object.


Inputs
======

This node has no inputs.


Properties
==========

Lamp field
   To select a listed lamp object.


Outputs
=======

The light textures and the shadow textures affect the Color and Shadow outputs, respectively.

Color
   Lamp color multiplied by the lamp energy.
Light Vector
   A unit vector in the direction from the lamp to the shading point.
Distance
   Distance from the shading point to the lamp.
Shadow
   Shadow color that the other objects cast on the shading point.
Visibility Factor
   Light falloff ratio at the shading point.


.. note:: Portability to Various Scenes

   If multiple materials use a Lamp Data node linking to the same lamp object,
   including the Lamp Data node into a node group is recommended.
   Otherwise, when the mesh objects are imported to the other scene, all the materials may need to be modified.

