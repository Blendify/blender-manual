
**************
Object Editing
**************

This section is for general object-mode editing operations,
some object types have their own edit-modes which are documented in their own sections.


Join
====

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object* mode
   | Menu:     :menuselection:`Object --> Join`
   | Hotkey:   :kbd:`Ctrl-J`


Joining makes a single object from all selected objects of the same type.

All objects are merged into the last selected *Active* objects data.

This tools works for meshes, curves, surfaces, metas and armature object types.

.. note::

   Modifiers are not taken into account when joining,
   so you may wish to apply modifiers first in some cases.


.. _object-separate:

Separate
========

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Mesh --> Vertices --> Separate`
   | Hotkey:   :kbd:`P`

At some point,
you'll come to a time when you need to cut parts away from a mesh to be separate.
Well, the operation is easy.

To separate an object, the vertices (or faces) must be selected and then separated,
though there are several different ways to do this.

.. figure:: /images/Modeling-Objects-Parenting-Exampel-SuzDissect.jpg

   Suzanne dissected neatly

Selected
   This option separates the selection to a new object.
All Loose Parts
   Separates the mesh in its unconnected parts.
By Material
   Creates separate mesh objects for each material.



