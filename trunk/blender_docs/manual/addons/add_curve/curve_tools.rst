
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
   :Contributors: guy lateur, Alexander Meißner (Lichtso), Dealga McArdle (zeffii), Marvin.K.Breuer (MKB)
   :Maintainer: Vladimir Spivak (cwolf3d)
   :License: GPL


Installation
============

- This add-on is bundled with Blender.
- Open Blender and go to Preferences then the Add-ons tab.
- Click Add Curve then Curve Tools to enable the script.


Description
===========

- This addon provides an extensive set of tools for the manipulating and editing of curves. Several Cad style curve tools are included.

Information
===========

This addon is split into sub panels with each panel having it's own specific set of tools.

One Curve:
   Curve Info
	  Print splines, segments and empty splines information to the Info header and Info editor.
   Calc Length
	  Calculate the length of the curve and show in the addon panel.
   Curve Splines Info
	  Print splines information to the Info header and Info editor.
   Curve Segments Info
	  Print segments information to the Info header and Info editor.
   Set origin to spline start
	  Move the origin of the curve to the first point.

Curve:
   Intersect curves
      To Do.

Two Curves Loft:
   Loft
      Loft a mesh object between 2 bezier curves.
   Auto Loft
	   Turn on to store the loft data if you move or edit the curves.
   Update Auto Loft
      Press this button to update the new loft mesh position after moving or editing parent curves.

Advanced:
   Curve Outline
      Create an outline around a selected curve object.
   Separate Outline or selected
      Separate the Outline mesh from the original.
   Fillet
      Round or chamfer bezier point fillets.
   Handle Projection
	  To do.
   Divide
	  Subdivide selection or filleted corners.
   Scale Reset
	  Reset the objects scale to 1,1,1.
   Birail
	  It creates a surface from a profile and 2 paths.
	  The order in which we select the curves and its direction its important to make this work right.
   Convert selected faces to bezier
      Select faces and convert them to bezier curves.
   Convert bezier to surface
      Convert the selected curve to a Nurbs Surface.

Extended:
   Offest Curve
	  Create an offsetted array.
   Boolean two selected spline
	  Boolean selected curves on a 2d plane.
   Multi Subdivide
	  To do.
   Split by selected points
      To do.
   Remove Doubles
	  To do.
   Discretize Curve
	  To do.
   Array selected spline
	  To do.

Curves Utils:
   Show Point Resolution
      To do.
   Show and Arrange sequence
      To do.
   Remove splines
      To do.
   Join Splines
      To do.
   Pathfinder
     To do.
