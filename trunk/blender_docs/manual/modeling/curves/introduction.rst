
************
Introduction
************

.. figure:: /images/LogoFinal.jpg

   Bird logo made from Bézier curves.


Curves and :doc:`Surfaces </modeling/surfaces/introduction>` are particular types of Blender Objects.
They are expressed by mathematical functions rather than a series of points.

Blender offers both `Bézier Curves`_ and `Non-Uniform Rational B-Splines (NURBS)`_.
Both Bézier curves and NURBS curves and surfaces are defined in terms of a set of "control points"
(or "control vertices") which define a "control polygon".

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
They are also widely used in animation, both as :doc:`paths </animation/object_path>`
for objects to move along and as :doc:`F-curves </editors/graph_editor/fcurves>`
to change the properties of objects as a function of time.


Curve Primitives
================

.. figure:: /images/Modeling_Curves_add-curve-menu.jpg

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


.. _curves_bezier:

Bézier Curves
=============

The main elements used in editing Bézier Curves are the Control Points and Handles. A Segment
(the actual Curve) is found between two Control Points. In the image below, the Control Points
can be found in the middle of the pink line while the Handles comprise the extensions from the
Control Point. By default the arrows on the Segment represents the direction and
*relative* speed and direction of movement Objects will have when moving along the curve.
This can be altered by defining a custom F-Curve.


.. figure:: /images/Modeling_Curves_control-points-handles.jpg

   Bézier Curve in Edit Mode.


Editing Bézier Curves
---------------------

A Bézier curve can be edited by moving the locations of the Control Points and Handles.

- Add a Curve by :kbd:`Shift-A` to bring up the *Add* menu, followed by :menuselection:`Curve --> Bézier`.
- Press :kbd:`Tab` to enter *Edit Mode*.
- Select one of the Control Points and move it around.
  Use :kbd:`LMB` to confirm the new location of the Control Point, or use :kbd:`RMB` to cancel.
- Now select one of the Handles and move it around. Notice how this changes the curvature of the curve.

To add more Control Points

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

.. _curve-handle_type-auto:

Automatic :kbd:`V-A`
   This handle has a completely automatic length and direction which is set by Blender to
   ensure the smoothest result.
   These handles convert to *Aligned* handles when moved.

   .. figure:: /images/Modeling_Curves_automatic-handles.jpg

Vector :kbd:`V-V`
   Both parts of a handle always point to the previous handle or the next handle which allows
   you to create curves or sections thereof made of straight lines or with sharp corners.
   Vector handles convert to *Free* handles when moved.

   .. figure:: /images/Modeling_Curves_vector-handles.jpg

Aligned :kbd:`V-L`
   These handles always lie in a straight line, and give a continuous curve without sharp angles.

   .. figure:: /images/Modeling_Curves_aligned-handles.jpg

Free :kbd:`V-F`
   The handles are independent of each other.

   .. figure:: /images/Modeling_Curves_free-handles.jpg


Additionally, the :kbd:`V-T` shortcut can be used to toggle between Free and Aligned handle types.


Curve Properties
================

Curve Properties can be set from the *Object Data* option in the
*Properties Header* (shown below in blue).

.. figure:: /images/properties_header-curve.jpg


Shape
-----

.. figure:: /images/Modeling_Curves_shape-panel.jpg

   Curves Shape panel.


2D and 3D Curves
   By default, new curves are set to be 3D, which means that Control Points can be placed anywhere in 3D space.
   Curves can also be set to 2D which constrain the Control Points to the Curve's local XY axis.

.. _curve-resolution:

Resolution
   The *resolution* property defines the number of points that are computed between every pair of Control Points.
   Curves can be made more or less smooth by increasing and decreasing the resolution respectively.
   The *Preview U* setting determines the resolution in the 3D View while the *Render U* setting
   determines the Curve's render resolution. If *Render U* is set to zero (0),
   then the *Preview U* setting is used for both the 3D View and render resolution.


   .. figure:: /images/Modeling_Curves_shape-resolution.jpg

      Curves with a resolution of 3 (left) and 12 (right).


Twisting
   A 3D Curve has Control Points that are not located on the Curve's local XY plane.
   This gives the Curve a twist which can affect the Curve normals.
   You can alter how the twist of the Curve is calculated by choosing from *Minimum,
   Tangent* and *Z-Up* options from the drop-down menu.


   .. figure:: /images/Modeling_Curves_shape-twist.jpg

      Curves with a twist of minimum (left) and tangent (right).


Fill
   Fill determines the way a Curve is displayed when it is Beveled (see below for details on Beveling).
   When set to *Half* (the default) the Curve is displayed as half a cylinder.
   The *Fill Deformed* option allows you to indicate whether the Curve should be filled before or after
   (default) applying any Shape Keys or Modifiers.


   .. figure:: /images/Modeling_Curves_shape-fill.jpg

      Curves with a fill of half (left) and full (right).


Path/Curve-Deform
   These options are primarily utilized when using a Curve as a Path or when using the Curve Deform property.
   The *Radius, Stretch* and *Bounds Clamp* options control how Objects use the
   Curve and are dealt with in more detail in the appropriate links below.

.. seealso::

   - :doc:`Basic Curve Editing </modeling/curves/editing/introduction>`
   - :doc:`Animation Paths </animation/object_path>`


Geometry
--------

.. figure:: /images/Modeling_Curves_geometry-panel.jpg

   Curves Geometry panel.


Modification
   Offset
      By default, text Objects are treated as curves. The Offset option will alter the space between letters.
   Extrude
      Will extrude the curve along both the positive and negative local Z axes.
Bevel
   Depth
      Changes the size of the bevel

      .. figure:: /images/Modeling_Curves_geometry-bevel-depth.jpg

         A Curve with different Bevel depths applied.

   Resolution
      Alters the smoothness of the bevel

      .. figure:: /images/Modeling_Curves_geometry-bevel-resolution.jpg

         A Curve with different resolutions applied.

Taper Object
   Tapering a Curve causes it to get thinner towards one end.
   You can also alter the proportions of the Taper throughout the tapered object
   by moving/scaling/rotating the Control Points of the Taper Object.
   The Taper Object can only be another Curve.
   Editing the Handles and Control Points of the Taper Object will cause the original Object to change shape.

   .. figure:: /images/Modeling_Curves_geometry-taper.jpg

      A Curve before (left) and after (right) a Bézier Curve Taper Object was applied.

Bevel Object
   Beveling a Bézier Curve with a Bézier Curve as the Bevel Object generally gives it the appearance of a plane,
   while using a Bézier Circle as the Bevel Object will give it the appearance of a cylinder.
   The Bevel Object can only be another Curve.
   Editing the Handles and Control Points of the Bevel Object will cause the original Object to change shape.
   Given the options available, it is best to experiment and see the results of this operation.

   .. figure:: /images/Modeling_Curves_geometry-bevel.jpg

      A Curve with the Bevel Object as a Bézier Curve (left) and as a Bézier Circle (right).

Fill Caps
   Seals the ends of a beveled Curve.
Map Taper
   For Curves using a Taper Object and with modifications to the *Start/End Bevel Factor*
   the *Map Taper* option will apply the taper to the beveled part of the Curve (not the whole Curve).

   .. figure:: /images/Modeling_Curves_geometry-map-taper.jpg

      A Curve without (left) and with (right) Map Taper applied.


Start Bevel Factor and End Bevel Factor
   These options determine where to start the Bevel operation on the Curve being beveled.
   Increasing the *Start Bevel Factor* to 0.5 will start beveling the Curve 50% of the distance from the start
   of the Curve (in effect shortening the Curve).
   Decreasing the *End Bevel Factor* by 0.25 will start beveling the Curve 25% of the distance from the end
   of the Curve (again, shortening the Curve).

   .. figure:: /images/Modeling_Curves_geometry-bevel-start-end-factor.jpg

      A Curve with no Bevel factor applied (left),
      with a 50% Start Bevel Factor (middle) and with a 25% End Bevel Factor (right).


Path Animation
--------------

The Path Animation settings can be used to determine how Objects move along a certain path.
See the link below for further information.

:doc:`Read more about utilizing Curves for paths during animation </animation/object_path>`


Active Spline
-------------

.. figure:: /images/Modeling_Curves_active-spline-panel.jpg

   Curves Active Spline panel.


The *Active Spline* panel becomes available during *Edit Mode*.

Cyclic
   Closes the Curve.
Resolution
   Alters the smoothness of each segment by changing the number of subdivisions.
Interpolation
   Tilt
      Alters how the tilt of a segment is calculated.
   Radius
      Alters how the radius of a Beveled Curve is calculated.
      The effects are easier to see after Shrinking/Fattening a control point :kbd:`Alt-S`.
   Smooth
      Smooths the normals of the Curve


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


Active Spline
-------------

.. figure:: /images/Modeling_Curves_nurbs-active-spline-panel.jpg

   NURBS Active Spline panel.

.. _modeling-curve-knot:

Knots
   One of the characteristics of a NURBS object is the *knot vector*. This is a sequence of
   numbers used to determine the influence of the control points on the curve.
   While you cannot edit the knot vectors directly, you can influence them through the
   *Endpoint* and *Bézier* options in the Active Spline panel. Note that the
   *Endpoint* and *Bézier* settings only apply to open NURBS curves.

   Cyclic
      Makes the NURBS curve cyclic.

      .. figure:: /images/Modeling_Curves_nurbs-cyclic.jpg

         A NURBS curve with Cyclic applied.

   Bézier
      Makes the NURBS curve act like a Bézier curve.
   Endpoint
      Makes the curve contact the end control points. Cyclic must be disabled for this option to work.

      .. figure:: /images/Modeling_Curves_nurbs-endpoint.jpg
         :width: 511px

         A NURBS curve with Endpoint enabled.

.. _modeling-curve-order:

Order
   The order of the NURBS curve determines the area of influence of the control points over the curve.
   Higher order values means that a single control point has a greater
   influence over a greater relative proportion of the curve.
   The valid range of *Order* values is 2-6 depending on the number of control points present in the curve.

   .. figure:: /images/Modeling_Curves_nurbs-order.jpg
      :width: 511px

      NURBS curves with orders of 2 (left), 4 (middle) and 6 (right).


Path
====

As mentioned above, Curves are often used as :doc:`paths </animation/object_path>`.
Any curve can be used as a Path if the *Path Animation* option is selected.
