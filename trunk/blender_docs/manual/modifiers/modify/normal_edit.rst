
********************
Normal Edit Modifier
********************

The **Normal Edit** modifier affects (or generates) custom normals. It uses a few simple parametric methods
to compute normals (quite useful in game development and architecture areas), and mixes back those generated normals
with existing ones.

..
   (nice image)

Options
=======

.. figure:: /images/modifier_normal_edit_ui.png

   Normal Edit modifier.

Radial/Directional
   The two modes currently available to generate normals.

   Radial aligns normals with the (origin, vertex coordinates) vector, in other words all normals seems to radiate
   from the given center point, as if they were emitted from an ellipsoid surface.

   Directional makes all normals point (converge) towards a given target object.

Target Object
   Uses this object’s center as reference point when generating normals.

   Optional in *Radial* mode, mandatory in *Directional* one.

Parallel Normals
   Makes all normals parallel to the line between both objects’ centers,
   instead of converging towards target’s center.

   Only relevant in *Directional* mode

Offset
   Gives modified object’s center an offset before using it to generate normals.

   Only relevant in *Radial* mode if no *Target Object* is set,
   and in *Directional* mode when *Parallel Normals* is set.

Mix Mode
   How to affect existing normals with newly generated ones.

   Note the *Multiply* option is **not** a cross product, but a mere component-by-component multiplication.

Mix Factor
   How much of the generated normals get mixed into existing ones.

Vertex Group
   Allows per-item fine control of the mix factor. Vertex group influence can be reverted using the small
   “arrow” button to the right.

Usage
=====

This modifier can be used to quickly generate radial normals for low-poly tree foliage, or “fix” shading of
toon-like rendering by partially bending default normals…

The only mandatory prerequisite to use it is to enable *Auto Smooth* option in Mesh properties, *Normals* panel.

.. tip::
   More complex normal manipulations can be achieved by copying normals from one mesh to another,
   see the :doc:`Data Transfer modifier </modifiers/modify/data_transfer>`.

