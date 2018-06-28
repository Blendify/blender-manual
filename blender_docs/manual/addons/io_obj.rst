
***
OBJ
***

:Name: Wavefront OBJ Import/Export
:Location: :menuselection:`File --> Import/Export --> OBJ`
:Version: 2.3.6
:Blender Version: 2.78
:Category: Import-Export
:Author: Campbell Barton

OBJ is a widely used defacto-standard in the 3D industry.
The OBJ format is a popular plain text format however it has only basic geometry and material support.

- Mesh: Vertices/Faces/Edges/Normals/UV's
- Separation by Groups/Objects
- Materials/Textures
- Nurbs curves and surfaces.

.. note::

   There is no support for mesh vertex-colors, armatures, animation,
   lamps, camera, empty-objects, parenting or transformations.

.. warning::

   - Importing very large OBJ files (over a few 100mb), can use a lot of RAM.
   - OBJ's export using Unix line endings '\n' even on windows,
     if you open the files in a text editor it must recognize '\n' line endings.

Usage
=====

Import/Export geometry and curves to the OBJ format.

If there is a matching -.MTL for for the OBJ then its materials will be imported too.


Properties
==========

Import
------

Smooth Groups
   Surround OBJ smooth groups by sharp edges,
   note that these will only display when the Edge-Split modifier is enabled.
Lines
   Import OBJ lines and 2 sided faces as mesh edges.
Split/Keep Vertex Order
   When importing an OBJ its useful to split up the objects into Blender objects,
   named according to the OBJ file, however this splitting looses the vertex order which
   is needed when using OBJ files as morph targets, it also looses any vertices's that
   are not connected to a face so this must be disabled if you want to keep the vertex order.
Split by Object & Split by Group'''
   When importing an OBJ its useful to split up the objects into Blender objects,
   named according to the OBJ file, however this splitting looses the vertex order which
   is needed when using OBJ files as morph targets, it also looses any vertices that
   are not connected to a face so this must be disabled if you want to keep the vertex order.

   As far as blender is concerned OBJ Objects and Groups are no difference,
   since they are just 2 levels of separation,
   the OBJ groups are not equivalent to blender groups so both can optionally be used for splitting.
Clamp Size
   OBJ Files often vary greatly in scale, this setting clamps the imported file to a fixed size.
Forward / Up Axis
   Since many applications use a different axis for 'Up', there are axis conversion there settings,
   Forward and Up axis - By mapping these to different axis you can convert rotations
   between applications default up & forward axis.

   Blender uses Y Forward, Z Up (since the front view looks along the +Y direction).
   For example, its common for applications to use Y as the up axis, in that case -Z Forward, Y Up is needed.
Image Search
   This enables a recursive file search if an image file can't be found.


Export
------

Selected Objects
   Only export the selected objects. Otherwise export all objects in the scene.
Animation
   Exports a numbered OBJ for each frame from the start to the end frame.
   This can take quite a long time so take care.
Apply Modifiers
    Export mesh objects as seen in the 3D view with all modifiers applied.
    Mostly you will want this unless you are exporting a subsurf cage.
Edges
    Export loose edges as 2 sided faces. Mostly there is no need for this
    but its enabled by default to ensure all geometry data is exported.
Normals
    Write out blenders face and vertex normals (depending on the faces smooth setting)
    
    Mostly this isnt needed since most applications will calculate their
    own normals but to match Blender's normal map textures you will need to write these too.
UVs
   Write out the active UV layers coordinates from blender
Materials
   Write out the MTL file along with the OBJ. Most importers that support OBJ will also read the MTL file.
Triangulate
   Write out quads as 2 triangles<br />Some programs only have very basic OBJ support and only support triangles.
Polygroups
   Write faces into OBJ groups based on the meshes vertex group.
   Note that this does a best guess since a faces vertices can be in multiple vertex groups.
Nurbs
   Write out nurbs curves as OBJ nurbs rather than converting to geometry.
Objects as OBJ Objects / Groups
   Write out each blender object as an OBJ object<
   
   .. note::
   
      Note that as far as blender is concerned there is no difference between OBJ Groups and Objects,
      this option is only included for applications which treat them differently.

Material Groups
   Create OBJ groups per material.
Keep Vertex Order
   Maintain vertex order on export. This is needed when OBJ is used for morph targets.
Scale
   Global scale to use on export.
Forward / Up Axis
   Since many applications use a different axis for 'Up', there are axis conversion there settings,
   Forward and Up axis - By mapping these to different axis you can convert rotations
   between applications default up & forward axis.

   Blender uses Y Forward, Z Up (since the front view looks along the +Y direction).
   For example, its common for applications to use Y as the up axis, in that case -Z Forward, Y Up is needed.
Path Mode
   When referencing paths in exported files you may want some control as to the method used since absolute paths
   may only be correct on you're own system whereas relative paths are more portable but mean you have to keep
   your files grouped when moving about on you're local file system.
   In some cases the path doesn't matter since the target application will search
   a set of pre-defined paths anyway so you have the option to strip the path too.

   :Auto: Uses relative paths for files which are in a subdirectory of the exported location, absolute for any directories outside that.
   :Absolute: Uses full paths.
   :Relative: Uses relative paths in every case (except when on a different drive on windows).
   :Match: Uses relative / absolute paths based on the paths used in blender.
   :Strip Path: Only write the filename and omit the path component.
   :Copy: Copy the file on exporting and reference it with a relative path.


Compatibility
=============

Nurbs surfaces, text3d and metaballs are converted to meshes at export time.

Supported
---------

Objects:

- Object are written as geometry
- Dupli Objects


Object Types:

- Meshes - See below 
- Nurbs Curves

Meshes:

- Verts/Edges/Faces/Normals 
- Smooth/Flat Faces
- UV Coordinates (only single layer) 

Nurbs Curves:

- Open and closed
- Curves only (not surfaces)
- Curve weighting

Materials:

- Color: diffuse, specular, ambient.
- Shader settings: shininess, transparency, emit. 
- normal shading / shadeless / no-specular.
- textures for diffuse, specular, ambient, alpha, translucency, bumpmap, hardness.

Missing
-------

Some of the following features are missing.

- Nurbs Surfaces -- this could be added but is not widely used.
- Advanced Material Settings. There are material options documented
  but very few files use them and there are few examples available.
- Normals -- Blender ignores normals from imported files, recalculating its own based on the geometry.
