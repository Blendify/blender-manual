
*******************
Assigning a Texture
*******************

This page just shows how to add a texture to a slot.
The :doc:`/render/blender_render/textures/texture_panel` is explained on the previous page.

.. figure:: /images/texture-top-panel.png
   :width: 300px

   Texture panel.

Creating a new Texture Data-Block in a new Texture Slot
=======================================================

Select an empty slot, then click on the *New* button.

This will do two things:

- It will create a new texture data-block.
- Also, it will add a new slot in the textures stack.


Creating a new Texture Data-Block in a non-empty slot
=====================================================

Select a non-empty slot, then click on the *Plus* button.

This will do two things:

- it will create a new texture data-block, with a new name, by
  making a copy of the texture data-block assigned to the selected slot
- it will assign this new data-block to the selected slot


Sharing a Texture Data-Block in a non-empty slot
================================================

- Select a non-empty slot, then click on the *Browse* button.
  This will open a menu showing all the available Texture data-blocks in this file.
- Choose a texture data-block in the menu to assign it to the selected slot.
  This will share the chosen texture with more than one object,
  hence the *Number of users* shown in the texture data-block will increase by one.
