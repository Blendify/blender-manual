
****************
Hiding & Masking
****************

.. admonition:: Reference
   :class: refbox

   | Mode:     Sculpt Mode
   | Menu:    :menuselection:`Hide/Mask`

It is sometimes useful to isolate parts of a mesh to sculpt on.


Hide
====

Portions of the mesh can be hidden in Sculpt Mode to improve performance and
to access parts of the mesh that would otherwise be difficult to access,
because they are occluded by other parts.

The hidden faces cannot be sculpted on.
Hiding is shared between Edit Mode and Sculpt Mode
(i.e. hiding/unhiding in one mode affects the other mode too.)

Hide Bounding Box :kbd:`H`
   To hide a part of a mesh inside the selection.
   This works similar to :ref:`Border Select <bpy.ops.view3d.select_border>` tool.
Hide Bounding Box :kbd:`Shift-H`
   To reveal a hidden part of a mesh inside the selection.
Show All :kbd:`Alt-H`
   Reveal all hidden parts.
Hide Masked
   ToDo.


.. _scupt-mask-menu:

Mask
====

Masking to control which areas of the mesh are influenced by sculpting.
In order to edit the mask, select the *Mask Brush* from the Brush panel.

Masks can be edited across the entire model:

- Invert Mask :kbd:`Ctrl-I`
- Fill Mask
- Clear Mask :kbd:`Alt-M`


.. figure:: /images/sculpt-paint_sculpting_hide-mask.jpg

   Black part (hair) is masked.

   The `.blend file <https://download.blender.org/demo/test/freestyle_demo_file.blend.zip>`__
   from `OHA Studio <http://oha-studios.com/>`__ © Mechanimotion Entertainment.

