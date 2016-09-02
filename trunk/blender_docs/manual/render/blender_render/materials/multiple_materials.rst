
******************
Multiple Materials
******************

Normally,
different colors or patterns on an object are achieved by adding textures to your materials.
However, in some applications you can obtain multiple colors on an object by assigning
different materials to the individual faces of the object.

.. figure:: /images/materials_creating.jpg

   Add new material.


To apply several materials to different faces of the same object,
you use the Material Slots options (3) in the Materials header panel.

.. figure:: /images/material-matmenu-matadded-editmode.png

   Material menu in edit mode.


The workflow for applying a second material to some faces of an object covered by a base
material is as follows:


- In Object Mode, apply the base material to the whole object
  (as shown in :doc:`Assigning a material </render/blender_render/materials/assigning_a_material>`)
- Create/select the second material (the whole object will change to this new material).
- In the Active Material box (2), re-select the base material.
- Go to Edit Mode and Face Select (a new box appears above the Active Material box with Assign/Select/Deselect).
- Select the face/faces to be colored with the second material.
- In the Object Material Slots box (3), click the :kbd:`Plus` to create a new slot, and while this is still active,
  click on the second material in the Available Materials list.
- Click the Assign button, and the second material will appear on the selected object faces.


- You can also make this new material a copy of an existing material by adding the data block:

Select the object, get the material, (R Click) and Copy data to clipboard.
When you have renamed the material, click "Link: Data" to link to the existing material.
Proceed to assign faces as required.
NB: If you change the material on the original object, the new object color changes too.
