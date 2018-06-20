
****************
Hiding & Masking
****************

.. admonition:: Reference
   :class: refbox

   :Mode:      Sculpt Mode
   :Menu:      :menuselection:`Hide/Mask`

While sculpting, areas might be hidden behind parts of the mesh or they might be too close to other parts.
To work through these, it is useful to isolate parts of a mesh to sculpt on.
This can be done by either completely hiding parts of the mesh
or by masking areas that can not be sculpted on.


Hide
====

Portions of the mesh can be hidden in Sculpt Mode to improve performance and
to access parts of the mesh that would otherwise be difficult to access,
because they are occluded by other parts.

The hidden faces cannot be sculpted on.
Hiding is shared between Edit Mode and Sculpt Mode
(i.e. hiding/unhiding in one mode affects the other mode too).

Hide Bounding Box :kbd:`H`
   To hide a part of a mesh inside the selection.
   This works similar to :ref:`Border Select <bpy.ops.view3d.select_border>` tool.
Hide Bounding Box :kbd:`Shift-H`
   To reveal a hidden part of a mesh inside the selection.
Show All :kbd:`Alt-H`
   Reveal all hidden parts.
Hide Masked
   Hides all masked vertices.


.. _sculpt-mask-menu:

Mask
====

Masking to control which areas of the mesh are influenced by sculpting.

Brush
-----

In order to edit the mask, select the *Mask Brush* from the Brush panel.

.. figure:: /images/sculpt-paint_sculpting_hide-mask_example.jpg

   Black part (hair) is masked.

   The `blend-file <https://download.blender.org/demo/test/freestyle_demo_file.blend.zip>`__
   from `OHA Studio <http://oha-studios.com/>`__ © Mechanimotion Entertainment.

Editing
-------

Masks can be edited across the entire model:

Invert Mask :kbd:`Ctrl-I`
   Todo.
Fill Mask
   Todo.
Clear Mask :kbd:`Alt-M`
   Todo.
Box Mask :kbd:`B`
   Todo.
Lasso Mask :kbd:`Shift-Ctrl-LMB`
   Todo.
