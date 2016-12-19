
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
In order to be 3D, the object needs to have "Volume", and a surface, even when it is closed,
does not have volume; it is infinitely thin.
If it had a volume the surface would have a thickness (its third dimension). Hence,
it is only a 2D object, and has only two interpolation dimensions or axes or coordinates
(if you know a bit of math, think of non-euclidean geometry -- well,
surfaces are just non-euclidean 2D planes...). To take a more "real life" example,
you can roll a sheet of paper to create a cylinder; well, even if it "draws" a volume,
the sheet itself will remain a (nearly...) 2D object!

In fact, surfaces are very similar to the results you get when
:doc:`extruding a curve </modeling/curves/properties/geometry>`.


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

You can :ref:`hide and reveal <curves-show-hide>` control points just as with curves.
