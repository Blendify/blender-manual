
************
Introduction
************

Curves and :doc:`Surfaces </modeling/surfaces/introduction>` are particular types of Blender Objects.
They are expressed by mathematical functions rather than a series of points.

Blender offers both `Bézier Curves`_ and `Non-Uniform Rational B-Splines (NURBS)`_.
Both Bézier curves and NURBS curves and surfaces are defined in terms of a set of "control points"
(or "control vertices") which define a "control polygon".

.. figure:: /images/logofinal.jpg

   Bird logo made from Bézier curves.


Both Bézier and NURBs curves are named after their mathematical definitions, and choosing between them
is often more a matter of how they are computed behind the scenes than how they appear from a modeler's
perspective. Bézier curves are generally more intuitive because they start and end at the
control points that you set,
but NURBs curves are more efficient for the computer to calculate when there are many twists and turns in a curve.

The main advantage to using curves instead of polygonal meshes is that curves are defined by
less data and so can produce results using less memory and storage space at modeling
time. However, this procedural approach to surfaces can increase demands at render time.

Certain modeling techniques, such as
:doc:`extruding a profile along a path </modeling/curves/editing/extrude>`,
are possible only using curves. On the other hand, when using curves,
vertex-level control is more difficult and if fine control is necessary,
:doc:`mesh editing </modeling/meshes/editing/introduction>` may be a better modeling option.

Bézier curves are the most commonly used curves for designing letters or logos.
They are also widely used in animation, both as :doc:`paths </animation/techniques/object_path>`
for objects to move along and as :doc:`F-Curves </editors/graph_editor/fcurves/introduction>`
to change the properties of objects as a function of time.


Curve Primitives
================

.. figure:: /images/modeling_curves_add-curve-menu.png
   :align: right

   Add Curve menu.


In Object Mode, the *Add Curve* menu,
Blender provides five different curve primitives:

Bézier Curve
   Adds an open 2D Bézier curve with two control points.
Bézier Circle
   Adds a closed, circle-shaped 2D Bézier curve (made of four control points).
NURBS Curve
   Adds an open 2D NURBS curve, with four control points, with *Uniform* knots.
NURBS Circle
   Adds a closed, circle-shaped 2D NURBS curve (made of eight control points).
Path
   Adds a NURBS open 3D curve made of five aligned control points,
   with *Endpoint* knots and the *CurvePath* setting enabled.


.. _curves-bezier:

Bézier Curves
=============

The main elements used in editing Bézier Curves are the Control Points and Handles. A Segment
(the actual Curve) is found between two Control Points. In the image below, the Control Points
can be found in the middle of the pink line while the Handles comprise the extensions from the
Control Point. By default the arrows on the Segment represents the direction and
*relative* speed and direction of movement Objects will have when moving along the curve.
This can be altered by defining a custom F-Curve.

.. figure:: /images/modeling_curves_control-points-handles.png

   Bézier Curve in Edit Mode.


Editing Bézier Curves
---------------------

A Bézier curve can be edited by moving the locations of the Control Points and Handles.

- Add a Curve by :kbd:`Shift-A` to bring up the *Add* menu, followed by :menuselection:`Curve --> Bézier`.
- Press :kbd:`Tab` to enter *Edit Mode*.
- Select one of the Control Points and move it around.
  Use :kbd:`LMB` to confirm the new location of the Control Point, or use :kbd:`RMB` to cancel.
- Now select one of the Handles and move it around. Notice how this changes the curvature of the curve.

To add more Control Points:

- Select at least two adjacent Control Points.
- Press :kbd:`W` and select *Subdivide*.
- Optionally, you can press :kbd:`F6` immediately after the subdivision to modify the number of subdivisions.

Note that while in *Edit Mode* you cannot directly select a Segment. To do so,
select all of the Control Points that make up the Segment you want to move.

There are four Bézier curve handle types.
They can be accessed by pressing :kbd:`V` and selecting from the list that appears,
or by pressing the appropriate hotkey combination. Handles can be rotated, moved,
scaled and shrunk/fattened like any vertex in a mesh.


Bézier Curve Handle Types
^^^^^^^^^^^^^^^^^^^^^^^^^

.. _curve-handle-type-auto:

Automatic :kbd:`V-A`
   This handle has a completely automatic length and direction which is set by Blender to
   ensure the smoothest result.
   These handles convert to *Aligned* handles when moved.

   .. figure:: /images/modeling_curves_automatic-handles.png

Vector :kbd:`V-V`
   Both parts of a handle always point to the previous handle or the next handle which allows
   you to create curves or sections thereof made of straight lines or with sharp corners.
   Vector handles convert to *Free* handles when moved.

   .. figure:: /images/modeling_curves_vector-handles.png

Aligned :kbd:`V-L`
   These handles always lie in a straight line, and give a continuous curve without sharp angles.

   .. figure:: /images/modeling_curves_aligned-handles.png

Free :kbd:`V-F`
   The handles are independent of each other.

   .. figure:: /images/modeling_curves_free-handles.png


Additionally, the :kbd:`V-T` shortcut can be used to toggle between Free and Aligned handle types.


.. _modeling-curve-nurbs:

Non-Uniform Rational B-Splines (NURBS)
======================================

One of the major differences between Bézier Objects and NURBS Objects is that Bézier Curves
are approximations. For example, a Bézier circle is an *approximation* of a circle,
whereas a NURBS circle is an *exact* circle.
NURBS theory can be a *very* complicated topic. For an introduction,
please consult the `Wikipedia page. <https://en.wikipedia.org/wiki/NURBS>`__ In practice,
many of the Bézier curve operations discussed above apply to NURBS curves in the same manner.
The following text will concentrate only on those aspects that are unique to NURBS curves.


Editing NURBS Curves
--------------------

A NURBS Curve is edited by moving the location of the Control Points.

- Place a Curve by :kbd:`Shift-A` to bring up the Add menu, followed by :menuselection:`Curve --> NURBS curve`.
- Press :kbd:`Tab` to enter *Edit Mode*.
- Select one of the Control Points and move it around.
  Use :kbd:`LMB` to confirm the new location of the Control Point, or use :kbd:`RMB` to cancel.
- If you want to add additional Control Points, select both of them, press :kbd:`W` and select *Subdivide*.
  Press :kbd:`F6` immediately after to determine how many subdivisions to make.
