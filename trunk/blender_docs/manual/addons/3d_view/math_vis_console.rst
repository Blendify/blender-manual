
**********************
Math Vis Console
**********************

.. admonition:: Reference
   :class: refbox

   :Category:  3D View
   :Description: Display console defined mathutils vaiables in the 3d view
   :Location: Properties: Scene --> Python Console Menu
   :File: space_view3d_math_vis.py
   :Author: Campbell Barton

Installation
============

- This addon is bundled with Blender
- Open Blender and go to User Preferences then the Addons Tab.
- Click 3D View then Math Vis (Console) to Enable the script. 


Description
===========

Sometimes when writing python scripts you stumble on complicated matrix transformations, ray intersections, rotation conversions, mesh modifications etc. were its useful to view lines, points and matrices in the viewport to better understand the problem.

Creating mesh data for this purpose isn't difficult but is cumbersome. The purpose of this addon is to make it as quick and easy as possible.

Math Vis works by displaying python console defined mathutils typed variables in the 3D viewport. 

The following types are supported

    Vector(...) - point
	
    [Vector(...), Vector(...), ...] - line
	
    Matrix(...) - transformation.
	
    Quaternion(...) / Euler(...) - transformations (without translation 

Use
===
Create a 'Python Console' space.

In the python console define a mathutils variable.

hello_world = Vector((1, 2, 3))

You should now be able to see this point in the 3D view! 


