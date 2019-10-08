
****************
Math Vis Console
****************

.. admonition:: Reference
   :class: refbox

   :Category:  3D View
   :Description: Display console defined mathutils variables in the 3D View.
   :Location: :menuselection:`Properties --> Scene --> Python Console Menu`
   :File: space_view3d_math_vis.py
   :Author: Campbell Barton


Installation
============

- This add-on is bundled with Blender.
- Open Blender and go to Preferences then the Add-ons tab.
- Click 3D View then Math Vis (Console) to enable the script.


Description
===========

Sometimes when writing Python scripts you stumble on complicated
matrix transformations, ray intersections, rotation conversions, mesh modifications, etc.
where its useful to view lines, points and matrices in the viewport to better understand the problem.

Creating mesh data for this purpose isn't difficult but is cumbersome.
The purpose of this add-on is to make it as quick and easy as possible.

Math Vis works by displaying Python Console defined mathutils typed variables in the 3D Viewport.

The following types are supported:

- Point: ``Vector(...)``
- Line: ``[Vector(...), Vector(...), ...]``
- Transformation: ``Matrix(...)``
- Transformations (without translation): ``Quaternion(...)``/ ``Euler(...)``


Usage
=====

Create a Python Console editor.
In the Python Console define a mathutils variable::

   hello_world = Vector((1, 2, 3))

You should now be able to see this point in the 3D View!
