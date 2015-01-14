
********************
Mesh Deform Modifier
********************

The Mesh Deform modifier allows an arbitrary mesh (of any closed shape)
to act as a deformation cage around another mesh.


Options
=======

.. figure:: /images/25-Manual-Modifiers-MeshDeform.jpg

   Mesh Deform modifier


The Mesh Deform modifier is reasonably easy to use but it can be very slow to do
the calculations needed to properly map the deform mesh cage to the deformed object.

Object
   The name of the mesh object to be used as a deforming mesh cage.
Vertex Group
   An optional vertex group that will be affected by the deforming mesh cage.
   Vertices not in this group will not be deformed.
Invert
   Inverts the influence of the vertex group defined in the previous setting
   (reverses the weight values of this group).
Bind
   Links the current vertex positions of both the modified geometry and the deformer *Object* chosen together.
   An unbound Mesh Deform modifier has no effect -
   it must be bound so that altering the shape of the deform mesh cage
   actually alters the shape of the modified object.

   .. warning::

      Depending on the settings of the Mesh Deform modifier and complexity of the deform mesh cage and/or
      deformed object, it can take a long time for this operation to complete.
      This can result in Blender not responding to user's actions until it has completed.

      It is also possible that Blender will run out of memory and crash.

      To be safe, save your blend file before proceeding!

Unbind
   When a deformed object has been associated to a deform mesh cage, it can later be disassociated by clicking the
   *Unbind* button which replaced the *Bind* one.
   When *Unbind* is clicked, the *deform mesh cage* will keep its current shape;
   it will not reset itself back to its original start shape.

   If you need its original shape, you will have to save a copy of it before you alter it.

   The deformed object will, however,reset back to its original shape that it had
   before it was bound to the deform mesh cage.

Precision
   The *Precision* numeric slider field controls the accuracy with which the deform mesh cage alters the
   deformed object, when the points on the cage are moved.
   Raising this value higher can greatly increase the time it takes the *Mesh Deform*
   modifier to complete its binding calculations,
   but it will get more accurate cage mapping to the deformed object.

   This setting becomes unavailable once a cage has been bound.


Dynamic
   When activated, other mesh altering features (such as other modifiers and shape keys)
   are taken into account when binding, increasing deformation quality.

   It is deactivated by default to save memory and processing time when binding...
   Like with *Precision*, this setting is unavailable once a cage has been bound.


Hints
=====

- Ensure that the normals on the cage mesh point to the outside;
  they are used to determine the inside and outside of the cage.
- Besides the outer cage, more faces within the cage, either loose or forming another smaller cage,
  can be used for extra control. Such smaller cages may also overlap with the main cage;
  for example, to get extra control over eyes, two small sphere cages could be added around them.


See Also
========

- The :doc:`Lattice modifier </modifiers/deform/lattice>`.
- `Original paper <http://graphics.pixar.com/library/HarmonicCoordinatesB/>`__


