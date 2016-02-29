
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
   | Menu:     *Object --> Join*
   | Hotkey:   :kbd:`Ctrl-J`


Joining makes one single object from all selected objects. Objects must be of the same type.
Origin point is obtained from the previously *active* object.
Performing a join is equivalent to adding new objects while in *Edit mode*.
The non-active objects are deleted and their meshes added to the active object, so that
only the active object remains. This only works with editable objects
containing meshes and curves.


.. _object-separate:

Separate
========

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     *Mesh --> Vertices --> Separate*
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



