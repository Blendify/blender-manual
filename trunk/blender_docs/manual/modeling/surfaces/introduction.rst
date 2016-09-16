
************
Introduction
************

Curves are 2D objects, and surfaces are their 3D extension. Note however, that in Blender,
you only have NURBS surfaces, no Bézier (you have the *Bézier* knot type, though;
see below), nor polygonal (but for these, you have meshes!).
Even though curves and surfaces share the same object type (with texts also...),
they are not the same thing; for example,
you cannot have in the same object both curves and surfaces.

.. _fig-surface-intro-surface:

.. figure:: /images/modeling_surfaces_introduction_nurbs-surface.png

   Nurbs surface in Edit Mode.


As surfaces are 2D, they have two interpolation axes, U (as for curves) and V.
It is important to understand that you can control the interpolation rules (knot, order,
resolution) *independently* for each of these two dimensions
(the U and V fields for all these settings, of course).

You may ask yourself "but the surface appears to be 3D, why is it only 2D?".
In order to be 3D, the object needs to have "Volume," and a surface, even when it is closed,
does not have volume; it is infinitely thin.
If it had a volume the surface would have a thickness (its third dimension). Hence,
it is only a 2D object, and has only two interpolation dimensions or axes or coordinates
(if you know a bit of math, think of non-euclidean geometry -- well,
surfaces are just non-euclidean 2D planes...). To take a more "real life" example,
you can roll a sheet of paper to create a cylinder; well, even if it "draws" a volume,
the sheet itself will remain a (nearly...) 2D object!

In fact, surfaces are very similar to the results you get when
:doc:`extruding a curve </modeling/curves/editing/extrude>`.


Finding Surface Tools
=====================


As usual, you have the *Select* and *Surface*
menus in the 3D View headers, and the *Specials* :kbd:`W` pop-up one.


Visualization
=============

There is nearly no difference from NURBS curves,
except that the U direction is indicated by yellow grid lines,
and the V one is materialized by pink grid lines, as you can see in
Fig. :ref:`fig-surface-intro-surface`.

You can :ref:`hide and reveal <curves-hiding>` control points just as with curves.


Surface Structure
=================

Many of the concepts from :doc:`curves </modeling/curves/introduction>`,
especially :doc:`NURBS </modeling/curves/nurbs>` ones,
carry directly over to NURBS surfaces,
such as control points, *Order*, *Weight*, *Resolution*, etc.
Here we will just talk about the differences.

It is very important to understand the difference between NURBS curves and NURBS surfaces:
the first one has one dimension, the latter has two.
Blender internally treats NURBS surfaces and NURBS curves completely differently. There are
several attributes that separate them but the most important is that a NURBS curve has a
single interpolation axis (U) and a NURBS surface has two interpolation axes (U and V).

However, you can have "2D" surfaces made of curves
(using the :doc:`extrusion tools </modeling/curves/editing/extrude>`,
or, to a lesser extent, the filling of closed 2D curves. And you can have "1D" curves made of surfaces,
like a NURBS surface with only one row (either in U or V direction) of control points produces only a curve...

Visually you can tell which is which by entering *Edit Mode* and looking at the 3D View header:
either the header shows *Surface* or *Curve* as one of the menu choices. Also,
you can :doc:`extrude </modeling/curves/editing/extrude>` a whole NURBS surface curve to create a surface,
but you cannot with a simple NURBS curve.


.. _modeling-surfaces-rows-grids:

Control Points, Rows and Grid
-----------------------------

Control points for NURBS surfaces are the same as for NURBS curves. However,
their layout is quite constraining. The concept of "segment" disappears,
replaced by "rows" and the overall "grid".

A "row" is a set of control points forming one "line" in one interpolation direction
(a bit similar to :ref:`edge loops <modeling-mesh-structure-edge-loops>` for meshes).
So you have "U-rows" and "V-rows" in a NURBS surface.
The key point is that *all* rows of a given type (U or V) have the *same* number of control points.
Each control point belongs to exactly one U-row and one V-row.

All this forms a "grid", or "cage", the shape of which controls the shape of the NURBS surface.
A bit like a :doc:`lattice </rigging/lattice>`...

This is very important to grasp: you cannot add a single control point to a NURBS surface;
you have to add a whole U- or V-row at once (in practice,
you will usually use the Extrude tool, or perhaps the Duplicate one, to add those...),
containing exactly the same number of points as the others. This also means that you will only
be able to "merge" different pieces of surfaces if at least one of their rows match together.


.. _modeling-surfaces-weight:

Weight
------

Guess what? Yes, it works exactly like :ref:`NURBS Curves <modeling-curve-weight>`! *Weight* specifies
how much each control point "pulls" on the curve.

In Fig. :ref:`fig-surface-intro-weight` a single control point, labeled "C",
has had its *Weight* set to 5.0 while all others are at their default of 1.0.
As you can see, that control point *pulls* the surface towards it.

.. _fig-surface-intro-weight:

.. figure:: /images/modeling_surfaces_introduction_weight.png

   One control point with a weight of 5.


If all the control points have the same *Weight* then each effectively cancels each
other out. It is the difference in the weights that cause the surface to move towards or away
from a control point.

The *Weight* of any particular control point is visible in the
:doc:`/editors/3dview/object/properties/transforms`
:kbd:`N`, in the *W* field (and not the *Weight* field...).


Preset Weights
^^^^^^^^^^^^^^

NURBS can create pure shapes such as circles, cylinders, and spheres
(note that a Bézier circle is not a pure circle). To create pure circles, globes,
or cylinders, you must set to specific values the weights of the control points. 
Some of which are provided as presets in the *Curve Tools* panel (lower right corner).
This is not intuitive, and you should read more on NURBS before trying this.

To create a sphere with 2D surfaces, its the same principle as with a 2D circle.
You will note that the four different weights needed for creating a sphere
(1.0, 0.707 = sqrt(0.5), 0.354 = sqrt(2)/4, and 0.25).

.. figure:: /images/modeling_surfaces_introduction_weight-sphere.png

   A sphere surface.
