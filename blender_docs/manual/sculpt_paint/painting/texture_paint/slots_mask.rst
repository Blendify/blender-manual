
************
Slots & Mask
************

The *Slots* tab in the *Tool Shelf* of the 3D View.


Slots
=====

.. figure:: /images/sculpt-paint_painting_texture-paint_slots-mask_slots-panel.png
   :align: right

   Slots settings.

The combination of images associated with UV maps is called "slots".

Selecting a *Paint Slots* or *Canvas Image*
will also display the corresponding image on *UV/Image Editors*, if any are open.

Painting Mode
   The slot system includes two painting modes:

   Image
      The user can just select an existing image and painting will use the active UV layer for painting.

      Canvas Image
         Alows you select the image used as canvas.

         New
            Create a new image.
      UV Map
         Alows you select the UV layer for painting.

   Material  
      This mode tries to detect the slots from the materials of the mesh.

      For Cycles renderer, all texture images on the material's node tree are added on the layer tab
      and the texture paint slot UV map is always the active UV map of the mesh.

      Available Paint Slots
         A :ref:`ui-list-view` of slots.
         To activate a certain slot to use it for paint a just :kbd:`LMB` click on it.

      .. (TODO 2.8) Blender Internal (START)

      For Blender Internal, texture paint slots are material texture slots that use images and UV mapping.
      The UV map that is used during painting is either the assigned on the UV slot of the material texture UV slot,
      or the active UV layer of the mesh (this is the highlighted UV map under the mesh tab in the properties screen)
      if no UV map has been assigned. There are a few extra controls:

         Add/Remove Texture Paint Slot
            A drop down that allows the addition of additional slots.
            Slots added here are directly added on the material.
         Blend Type
            Same as in the
            :doc:`Texture Blending Modes </render/blender_render/textures/properties/influence/blending_modes>`.
         UV Map
            Alows you select the active UV layer for each material slot independently.
            A blank value in the UV layer will always use the active UV layer.

      .. (TODO 2.8) (END)

Save All Images
   Repack (or save if external file) all edited images.


Mask
====

.. figure:: /images/sculpt-paint_painting_texture-paint_slots-mask_mask-panel.png
   :align: right

   Mask settings.

The mask can be deactivated by the checkbox in the header.

UV Map
   Alows you select the UV layer for mask image.
Stencil Image
   Image used as mask. See :ref:`ui-data-block`.
Visualization
   Mask color in the viewport. See :ref:`ui-color-picker`.
Invert Stencil (black/white icon)
   Inverts the mask.
