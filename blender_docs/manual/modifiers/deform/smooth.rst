
***************
Smooth Modifier
***************

.. figure:: /images/Modifiers-Mesh-Smooth-example01.jpg

   Smooth modifier applied to a subdivided cube


This modifier smooths a mesh by flattening the angles between adjacent faces in it,
just like :menuselection:`Specials --> Smooth` in Edit Mode.
It smooths without subdividing the mesh - the number of vertices remains the same.

This modifier is not limited to smoothing, though.
Its control factor can be configured outside the ``0.0 - 1.0`` range
(including negative values), which can result in interesting deformations.


Options
=======

X, Y, Z
   Toggle buttons to enable/disable the modifier in the X, Y and/or Z axes directions.
Factor
   The factor to control the smoothing amount.
   Higher values will increase the effect.
   Values outside this range (above ``1.0`` or below ``0.0``) distort the mesh.
Repeat
   The number of smoothing iterations, equivalent to pressing the
   :doc:`Smooth </modeling/meshes/editing/deforming/introduction#smooth>` button multiple times.
Vertex Group
   A vertex group name, to restrict the effect to the vertices in it only.
   This allows for selective, real-time smoothing, by painting vertex weights.


Algorithm
=========

The calculation done by the Smooth Modifier is a simple and logical one,
and can be thought of as the geometric equivalent of blurring images.

Each new vertex position is simply the average position of surrounding vertices
(the vertices connected to the same edge as it).

.. TODO: add diagrams
