
*****************
Assign Shape Keys
*****************

.. admonition:: Reference
   :class: refbox

   :Category:  Add Curve
   :Description: Assigns one or more Bézier curves as a shape key for another Bézier curve.
   :Location: :menuselection:`Sidebar --> Edit tab`
   :File: curve_assign_shapekey.py
   :Author: Shrinivas Kulkarni
   :Maintainer: Shrinivas Kulkarni
   :License: GPL


Activation
==========

- Open Blender and go to Preferences then the Add-ons tab.
- Click Add Curve then Assign Shape Keys to enable the script.
- This add-on is bundled with Blender.


Introduction
============

- This add-on lets you assign one or more Bezier curve(s) as shape keys to other curve.
- Useful for morphing curves and curve based text objects.


Usage
=====

- Select the target and shape key Bezier curve objects. 
- Make sure the target is the active object; you can do this by right-clicking the target curve while holding the shift key after the other selections are made. 
- Go to the 'Assign Shape Keys' tab and click 'Assign Shape Keys' button.
- Now a copy of the active object curve will be created, which will have the other selected curves as its target. 
- If the 'Remove Original Objects' option is checked, the selected curve objects will be deleted and only the target is kept.

- There are a number of option to align the closed (cyclic spline) target and shape-key curves.
- Also it's possible to match individual parts from a multi-part (multi-spline) of target and shape key curves (e.g. text object converted to curve) based on various criteria.

- For smoother transition, you can subdivide the segments of one of the curves in the selection group.

Manual Alignment of Starting Vertices

   In the edit mode the Assign Shape Keys panel shows a single button - Mark Starting Vertices.
   When Clicked, all the starting vertices of the closed splines (disconnected parts) of the selected curves are indicated by a marking point.
   Now if the user selects any vertex, the marker moves to this selected vertex, indicating the new starting vertex.
   You need to confirm the new positions by pressing enter. Pressing escape, reverts the positions to the earlier order.