
*****
Web3D
*****

:Name: Web3D X3D/VRML2 format
:Location: :menuselection:`File --> Import/Export --> X3D Extensible 3D (.x3d/.wrl)`
:Version: 1.2.0
:Blender: 2.76
:Category: Import-Export
:Authors:  Campbell Barton, Bart, Bastien Montagne, Seva Alekseyev


Usage
=====

TODO.


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


Export
------

Forward / Up Axis
   Since many applications use a different axis for 'Up', there are axis conversion there settings,
   Forward and Up axis -- By mapping these to different axis you can convert rotations
   between applications default up and forward axis.

   Blender uses Y Forward, Z Up (since the front view looks along the +Y direction).
   For example, its common for applications to use Y as the up axis, in that case -Z Forward, Y Up is needed.
Selection Only
   TODO.
Apply Modifiers
   TODO.
Triangulate
   TODO.
Normals
   TODO.
Compress
   TODO.
Hierarchy
   TODO.
Named decorations
   TODO.
H3D Extensions
   TODO.
Scale
   TODO.
Path Mode
   When referencing paths in exported files you may want some control as to the method used since absolute paths
   may only be correct on you're own system. Relative paths on the other hand are more portable
   but mean that you have to keep your files grouped when moving about on you're local file system.
   In some cases the path doesn't matter since the target application will search
   a set of predefined paths anyway so you have the option to strip the path too.

   :Auto: Uses relative paths for files which are in a subdirectory of the exported location,
          absolute for any directories outside that.
   :Absolute: Uses full paths.
   :Relative: Uses relative paths in every case (except when on a different drive on windows).
   :Match: Uses relative / absolute paths based on the paths used in Blender.
   :Strip Path: Only write the filename and omit the path component.
   :Copy: Copy the file on exporting and reference it with a relative path.
