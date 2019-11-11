
***************
Simplify Curves
***************

Introduction
============

The Simplify Curves tool works on a single selected curve object.
It generates a new curve based on the original one.
The higher the *Distance Error* threshold is set the more control points are removed.

The Simplify F-Curves tool works the same way, but on selected F-curves.

Merge by Distance tool glues nearby points on a single Bézier curve.
In fact it is an analogue of the usual *Remove Doubles* on a mesh, but for curves.
Unlike the mesh one, it does not connect the points from different parts of the curves,
even if they are on the ends of the two curves.
To glue such points, you must first connect them with *Make Segment*.


Activation
==========

- Open Blender and go to Preferences then the Add-ons tab.
- Click Add Curve then Simplify Curves to enable the script.


Interface
=========

The *Merge By Distance* and *Curve Simplify* buttons are located in
the :menuselection:`3D View --> Curve Context Menu` in curve Edit Mode.

The *Simplify F-Curves* buttons are located in
the :menuselection:`Dope Sheet --> Action --> Graph Editors --> Channel menu`.


.. admonition:: Reference
   :class: refbox

   :Category:  Add Curve
   :Description: Simplify curves in the 3D View, and Dope Sheet, merge by distance in 3D View.
   :Location: :menuselection:`3D View --> Add --> Curve --> Curve Simplify`,
              :menuselection:`Dope Sheet and Graph editors --> Channel --> Simplify F-Curves`
   :File: curve_simplify.py
   :Author: testscreenings, Michael Soluyanov
   :Maintainer: To Do
   :License: GPL
   :Support Level: Community
   :Note: This add-on is bundled with Blender.
