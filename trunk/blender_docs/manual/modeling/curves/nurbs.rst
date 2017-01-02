
**************************************
Non-Uniform Rational B-Splines (NURBS)
**************************************

One of the major differences between Bézier Objects and NURBS Objects is that Bézier Curves
are approximations. For example, a Bézier circle is an *approximation* of a circle,
whereas a NURBS circle is an *exact* circle.
NURBS theory can be a *very* complicated topic. For an introduction,
please consult the `Wikipedia page. <https://en.wikipedia.org/wiki/NURBS>`__ In practice,
many of the Bézier curve operations discussed above apply to NURBS curves in the same manner.
The following text will concentrate only on those aspects that are unique to NURBS curves.


Editing NURBS Curves
====================

A NURBS Curve is edited by moving the location of the Control Points:

- Place a Curve by :kbd:`Shift-A` to bring up the Add menu, followed by :menuselection:`Curve --> NURBS curve`.
- Press :kbd:`Tab` to enter *Edit Mode*.
- Select one of the Control Points and move it around.
  Use :kbd:`LMB` to confirm the new location of the Control Point, or use :kbd:`RMB` to cancel.
- If you want to add additional Control Points, select both of them,
  press :kbd:`W` and select :menuselection:`Specials --> Subdivide`.
  Press :kbd:`F6` immediately after to determine how many subdivisions to make.
