
**************
Object Editing
**************

This section is for general object-mode editing operations,
some object types have their own edit-modes which are documented in their own sections.


Join
====

.. admonition:: Reference
   :class: refbox

   | Mode:     Object mode
   | Menu:     :menuselection:`Object --> Join`
   | Hotkey:   :kbd:`Ctrl-J`

Joining merges all objects into the last selected *Active* object.

This tools works for meshes, curves, surfaces, metas and armature object types.

.. note::

   Object data has many attributes which may be handled when joining.

   Materials, vertex-groups, UV and Vertex layers will be merged.

   Modifiers, constraints, groups and parent relationships
   are ignored when joining and won't be applied to the active object.


.. _object-separate:

Separate
========

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit mode
   | Menu:     :menuselection:`Mesh --> Vertices --> Separate`
   | Hotkey:   :kbd:`P`

At some point,
you'll come to a time when you need to cut parts away from a mesh to be separate.
Well, the operation is easy.

To separate an object, the vertices (or faces) must be selected and then separated,
though there are several different ways to do this.

.. figure:: /images/Modeling-Objects-Parenting-Exampel-SuzDissect.jpg

   Suzanne dissected neatly.

Selected
   This option separates the selection to a new object.
All Loose Parts
   Separates the mesh in its unconnected parts.
By Material
   Creates separate mesh objects for each material.
