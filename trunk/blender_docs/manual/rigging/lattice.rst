
*******
Lattice
*******

Lattice -- or commonly called deformation cage outside of Blender.
A lattice consists of a three-dimensional non-renderable grid of vertices.
Its main use is to apply a deformation to the object it controls with a :doc:`/modeling/modifiers/deform/lattice`.
If the object is parented with*Parent Deform* a lattice modifier is automatically applied.


Editing
=======

Flip (Distortion Free)
   U, V, W
Make Regular
   Resets the whole lattice to a regular grid based on the current bounding box.


Properties
==========

.. figure:: /images/rigging_lattice_panel.png
   :align: right

   Lattice properties.

Lattice
   A :ref:`ui-data-block`.


Lattice
-------

Points
   Rate of subdivision in the axes:

   U, V, W
Interpolation Type
   Selector for each axis. See :ref:`fig-interpolation-type`.

   Linear, Cardinal, Catmull-Rom, B-Spline
Outside
   Takes only the verticies on the surface into account.
Vertex Group
   TODO.


Usage
=====

.. figure:: /images/rigging_lattice_view.png

   Lattice around the cube object in Object Mode.

The lattice should be scaled and moved to fit around your object in Object Mode.
Any scaling applied to the object in Edit Mode will result in the object deforming.
This includes applying scale with :kbd:`Ctrl-A` as this will achieve the same result as
scaling the lattice in Edit Mode, and therefore the object.
