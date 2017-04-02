
********
S-Curves
********

The curve type used for creating mask splines is almost a Bézier curve, but with some differences.
Smooth edges of the mask are defined by feathering.
The curve needed to support feathering in a way that stuck to the curve as you edited it,
for ease of editing an animation. These are called S-Curves.

Besides the handles, every control point also has points that define the feather between
the current point and the next point on the spline.
Each feather point is stored in UV space,
where U means position across spline segment, and V means distance between main spline and feather points.

.. figure:: /images/editors_movie-clip_masking_scurve.png

   S- Curve Explained.

This allows for deforming the main spline in almost any way,
and the feather will be updated automatically to reflect that change.

For example if there is just rotation of the spline,
feather would stay completely unchanged. If one point's feather is moved,
the other feathers will be automatically stretched uniformly along that segment
and the overall shape will be almost the same as artists would want it to be.


Primitives
==========

.. admonition:: Reference
   :class: refbox

   | Panel:    :menuselection:`Tool Shelf --> Mask --> Add`
   | Hotkey:   :kbd:`Shift-A`

There are two primitives available: a Bezier Circle and a Square with vector handles.
