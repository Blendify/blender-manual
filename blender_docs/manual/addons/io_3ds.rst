
************
Autodesk 3DS
************

:Name: Autodesk 3DS format
:Location: :menuselection:`File --> Import/Export --> 3D Studio (.3ds)`
:Version: 1.0.0
:Blender: 2.74
:Category: Import-Export
:Authors: Bob Holcomb, Campbell Barton


Usage
=====

This add-on can be used to import and export objects to/from the 3DS file format.
This format is commonly used to exchange files from Autodesk® 3ds Max®.


Properties
==========

Import
------

Forward / Up Axis
   Since many applications use a different axis for 'Up', there are axis conversion there settings,
   Forward and Up axis -- By mapping these to different axis you can convert rotations
   between applications default up and forward axis.

   Blender uses Y Forward, Z Up (since the front view looks along the +Y direction).
   For example, its common for applications to use Y as the up axis, in that case -Z Forward, Y Up is needed.
Size Constraint
   Scales the imported objects by 10 scene units until it reaches the size defined here.
   To disable set the *Size Constraint* to zero.
Image Search
   This enables a recursive file search if an image file can't be found.
Apply Transform
   Applies object transformations after importing.

Export
------

Forward / Up Axis
   Since many applications use a different axis for 'Up', there are axis conversion there settings,
   Forward and Up axis -- By mapping these to different axis you can convert rotations
   between applications default up and forward axis.

   Blender uses Y Forward, Z Up (since the front view looks along the +Y direction).
   For example, its common for applications to use Y as the up axis, in that case -Z Forward, Y Up is needed.
Selection Only
   Only export the selected objects. Otherwise export all objects in the scene.
   Note, this does not apply when batch exporting.
