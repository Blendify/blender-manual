
***********
Curve Tools
***********

.. important::

   Work In Progress

.. admonition:: Reference
   :class: refbox

   :Category:  Add Curve
   :Description: Adds functionality for Bézier/NURBS curve/surface modeling.
   :Location: :menuselection:`Sidebar --> Edit tab`
   :File: curve_tools folder
   :Authors: MacKracken, cwolf3d, Alexander Meißner (Lichtso)
   :Contributors: guy lateur, Alexander Meißner (Lichtso), Dealga McArdle (zeffii), Marvin K. Breuer (MKB)
   :Maintainer: Vladimir Spivak (cwolf3d)
   :License: GPL


Activation
==========

- Open Blender and go to Preferences then the Add-ons tab.
- Click Add Curve then Curve Tools to enable the script.
- This add-on is bundled with Blender.


Description
===========

This add-on provides an extensive set of tools for the manipulating
and editing of curves. Several :abbr:`CAD (Computer-Aided Design)` style curve tools are included.


Information
===========

This add-on is split into sub panels with each panel having it's own specific set of tools.


One Curve
---------

Curve Info
   Print splines, segments and empty splines information to the Info header and Info editor.
Calc Length
   Calculate the length of the curve and show in the add-on's panel.
Curve Splines Info
   Print splines information to the Info header and Info editor.
Curve Segments Info
   Print segments information to the Info header and Info editor.
Set origin to spline start
   Move the origin of the curve to the first point.


Curve
-----

Intersect curves
   To Do.


Two Curves Loft
---------------

Loft
   Loft a mesh object between two Bézier curves.
Auto Loft
   Turn on to store the loft data if you move or edit the curves.
Update Auto Loft
   Press this button to update the new loft mesh position after moving or editing parent curves.


Advanced
--------

Curve Outline
   Create an outline around a selected curve object.
Separate Outline or Selected
   Separate the Outline mesh from the original.
Fillet
   Round or chamfer Bézier point fillets.
Handle Projection
   To do.
Divide
   Subdivide selection or filleted corners.
Scale Reset
   Reset the objects scale to (1, 1, 1).
Birail
   It creates a surface from a profile and two paths.
   The order in which you select the curves and its direction is important to make this work right.
Convert Selected Faces to Bézier
   Select faces and convert them to Bézier curves.
Convert Bézier to Surface
   Convert the selected curve to a NURBS surface.


Extended
--------

Offset Curve
   Create an offsetted array.
Boolean Two Selected Spline
   Boolean selected curves on a 2D plane.
Multi Subdivide
   To do.
Split by Selected Points
   To do.
Remove Doubles
   To do.
Discretize Curve
   To do.
Array Selected spline
   To do.


Curves Utils
------------

Show Point Resolution
   To do.
Show and Arrange Sequence
   To do.
Remove Splines
   To do.
Join Splines
   To do.
Pathfinder
  To do.
