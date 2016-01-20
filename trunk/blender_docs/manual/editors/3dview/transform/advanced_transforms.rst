
..    TODO/Review: {{review|partial=X|im=examples}} .

************************
Advanced Transformations
************************

Randomize Transform
===================

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object* mode
   | Menu:     :menuselection:`Object --> Transform --> Randomize Transform`


.. figure:: /images/transform-randomize.jpg

   Randomize transform options


The randomize transform tool allows you to apply random translate, rotate,
and scale values to an object or multiple objects. When applied on multiple objects,
each object gets its own seed value, and will get different transform results from the rest.


Options
-------

Random Seed
   The random seed is an offset to the random transformation. A different seed will produce a new result.

Transform Delta
   Randomize Delta Transform values instead of regular transform.

.. TODO: we have no docs for delta or other object properties at the moment.
   See :doc:`Delta Transforms </editors/3dview/transform/transform_control/transform_properties>`.

Randomize Location
   Randomize Location vales

Location
   The maximum distances the objects can move along each axis.

Randomize Rotation
   Randomize rotation values.

Rotation
   The maximum angle the objects can rotate on each axis

Randomize Scale
   Randomize scale values.

Scale Even
   Use the same scale for each axis.

Scale
   The maximum scale randomization over each axis.


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
