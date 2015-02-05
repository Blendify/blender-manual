
..    TODO/Review: {{review|im=needs example}} .


*********
Duplicate
*********

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Mesh --> Duplicate`
   | Hotkey:   :kbd:`Shift-D`


This tool simply duplicates the selected elements,
without creating any links with the rest of the mesh (unlike extrude, for example),
and places the duplicate at the location of the original. Once the duplication is done,
*only the new duplicated elements are selected*,
and you are automatically placed in grab/move mode, so you can translate your copy elsewhere...

In the *Tool Shelf* are settings for *Vector* offset,
*Proportional Editing*, *Duplication Mode* (non-functional?),
and *Axis Constraints*.

Note that duplicated elements belong to the same
:doc:`vertex groups </modeling/meshes/vertex_groups/index>` as the "original" ones.
The same goes for the :doc:`material indices </render/blender_render/materials/multiple_materials>`,
the edge's *Sharp* and *Seam* flags, and probably for the other vertex/edge/face properties...
