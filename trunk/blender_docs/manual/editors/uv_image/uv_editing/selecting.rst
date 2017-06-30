
*********
Selecting
*********

Selection tools are available in the *Select Menu* in the header,
and the shortcuts listed below:

Menu
====

Border Select
   Use the box lasso to select UV coordinates :kbd:`B`.
   See :ref:`bpy.ops.view3d.select_border`.
Border Select Pinned
   Use the box lasso to select only pinned UV coordinates :kbd:`Shift-B`.
Circle Select
   See :ref:`bpy.ops.view3d.select_circle`.
Select/Deselect All
   Selects or de-selects all UV coordinates :kbd:`A`.
Inverse
   Inverts the current selection :kbd:`Ctrl-I`.
Select Pinned
   Selects all pinned UVs :kbd:`Shift-P`.
   See Pinning.
Select Linked
   This operator selects all UVs that are connected to currently selected UVs :kbd:`Ctrl-L`.
   This works similarly to the tools in 3D View.
More/Less
   ..

.. Ed. Unlink not working? Ctrl-shift-L is key-mapped.

Unlink Selection :kbd:`Alt-L`
   Cuts apart the selected UVs from the map. Only those UVs which belong to fully
   selected faces remain selected. As the name implies, this is particularly useful
   to unlink faces and move them elsewhere. The hotkey is analogous to the mesh Separate tool.


Header
======

Sync Selection
   Turning on the *Sync Selection* button causes selection of components
   in the 3D View to sync with their corresponding elements in the UV/Image editor.
   If off only the selected faces are displayed in the UV/Image editor.
   These two modes have very different results when transforming components in the UV/Image editor.


Selection Modes
---------------

Select Modes dependent on the Sync Selection.


Sync Selection Off
^^^^^^^^^^^^^^^^^^

Vertex
   Select individual vertices.
Edge
   Select edges.
Face
   Select faces.
Island
   Select contiguous groups of faces.

Sticky Selection Mode
   This selector lets you enable automatic additional selection.

   Shared Vertex
      Selects UVs that share a mesh vertex, even if they are in different UV locations.
   Shared Location
      Selects UVs that are in the same UV location and share a mesh vertex.
   Disabled
      Disables Sticky Selection.
      When you move a UV in this mode, each face owns its own UVs, allowing them to be separated.


Sync Selection On
^^^^^^^^^^^^^^^^^

When selecting UVs or Edges, it behave like *Shared Vertex* mode above.
When selecting Faces, it behaves as in *Disabled Stick Selection* above.

- Vertex
- Edge
- Face
