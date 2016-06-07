
************
Texture Node
************

.. figure:: /images/texture-node.jpg

   Texture node.


A texture, from the list of textures available in the current blend-file,
is selected and introduced through the value and/or color socket.


.. figure:: /images/texture-node-example.jpg
   :width: 500px

   Example of the applying Texture node.


Input
=====

Vector
   Uses for map the texture to a specific geometric space.


Outputs
=======

Value
   Straight black-and-white value of the texture, combined by the node.
Color
   Texture color output, combined by the node.
Normal
   Direction of normal texture, combined by the node.

In the example to the right, a cloud texture, as it would appear to a viewer,
is added to a base purple material, giving a velvet effect.

Note that you can have multiple texture input nodes. With nodes,
you simply add the textures to the map and plug them into the map.

