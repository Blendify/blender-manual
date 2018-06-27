
***
STL
***

:Name: Import/Export STL
:Location: :menuselection:`File --> Import/Export > STL`
:Version: 1.1.2
:Blender Version: 2.74
:Category: Import-Export
:Author: Guillaume Bouchard (Guillaum)

.. warning::

    Currently the script does not handle importing or exporting of normals
    and does not handle endianes, there is nothing in the STL spec about it.

  
Properties
==========

Common
------

Forward / Up Axis
   Since many applications use a different axis for 'Up', there are axis conversion there settings,
   Forward and Up axis - By mapping these to different axis you can convert rotations
   between applications default up & forward axis.

   Blender uses Y Forward, Z Up (since the front view looks along the +Y direction).
   For example, its common for applications to use Y as the up axis, in that case -Z Forward, Y Up is needed.
Scale
   TODO.
Scene Unit
   TODO.


Import
------

Facet Normals
   TODO.


Export
------

Selection Only
   TODO.
ASCII
   TODO.
Apply Modifiers
   TODO.
Batch Mode
   TODO.


Usage
=====

Use the operator to import ASCII or binary stl-files, you can select multiples files.
For exporting you can select multiples objects and they will be exported as an single STL file.
You can select between ASCII/binary file format (binary is more compact).
You can also choose to enable or disable the modifiers during the export.
