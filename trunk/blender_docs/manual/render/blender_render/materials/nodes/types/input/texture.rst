
************
Texture Node
************

.. figure:: /images/render_blender-render_materials_nodes_types_input_texture_node.png
   :align: right

   Texture node.

Can be used to input image or procedural textures.


Inputs
======

Vector
   Uses for map the texture to a specific geometric space.


Properties
==========

Texture
   The texture could be selected from a list of textures available in the current blend-file or link in textures.
   The textures themselves could not be edited in this note, but in the Texture panel.


Outputs
=======

Value
   Straight black-and-white value of the texture.
Color
   Texture color output.
Normal
   The of normal map.


Example
=======

.. figure:: /images/render_blender-render_materials_nodes_types_input_texture_example.png

   Example of the applying Texture node.

In the example to the right, a cloud texture, as it would appear to a viewer,
is added to a base purple material, giving a velvet effect.
