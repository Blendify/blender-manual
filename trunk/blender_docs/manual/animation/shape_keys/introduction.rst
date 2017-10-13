
************
Introduction
************

*Shape Keys* are used on Objects like *Mesh*, *Curve*, *Surface*, *Lattice*.
They are used to animate deform the object vertices into a new shape.

.. figure:: /images/animation_shape-keys_example.png

   Example of a mesh with different shape keys applied.

There are two types of Shape Keys:

Relative
   Which are relative to the Basis or selected shape key.
   They are mainly used as, for limb joints, muscles, or Facial Animation.
Absolute
   Which are relative to the previous and next shape key.
   They are mainly used to deform the objects into different shapes over time.

The shape key data, the deformation of the object's vertices,
is usually modified in the 3D View by selecting a shape key,
then moving the object vertices to a new position.
