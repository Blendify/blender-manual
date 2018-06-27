
***
OBJ
***

== Wavefront OBJ Import/Export ==

{{ScriptInfo
|name= Wavefront OBJ Import/Export
|menu= Import/Export
|usage= Import/Export geometry and curves to the OBJ format.
|version= 2.59
|author= Campbell Barton (ideasman_42) with additions by others.
|blender= 2.59
|license= GNU General Public License (GPL)
}}

=== Introduction ===

OBJ is a widely used defacto-standard in the 3D industry.

The OBJ format is a popular plain text format however it has only basic geometry and material support.

* Mesh: Vertices/Faces/Edges/Normals/UV's
* Separation by Groups/Objects
* Materials/Textures
* Nurbs curves and surfaces.

Note there is no support for mesh vertex-colors, armatures, animation, lamps, camera, empty-objects, parenting or transformations.

== Usage ==

=== Instructions ===

* Launch from the File → Import/Export menu
* Set the options in the user interface ''(Default options should be okay in most situations)''
* Press the "Import/Export" button
* Select the filename to use.

If there is a matching *.MTL for for the OBJ then its materials will be imported too.

=== Configuration ===

These options will be presented at export time. The defaults are intended to be good for typical usage.


==== Import Options ====
{| {{Css/prettytable|80%}}
|'''NGons'''
|TOGGLE||'''ON'''
|-
|colspan="3"|Import OBJ NGons and Blender FGons (fake NGons which are regular 3/4 sided faces displayed as NGons), slows down import somewhat.
|-
|'''Lines'''
|TOGGLE||'''ON'''
|-
|colspan="3"|Import OBJ lines and 2 sided faces as mesh edges.
|-
|'''Smoth Groups'''
|TOGGLE||'''ON'''
|-
|colspan="3"|Surround OBJ smooth groups by sharp edges, note that these will only display when the Edge-Split modifier is enabled.
|-
|'''Split / Keep Vertex Order'''
|SWITCH||'''Split'''
|-
|colspan="3"|When importing an OBJ its useful to split up the objects into blender objects, named according to the OBJ file, however this splitting looses the vertex order which is needed when using OBJ files as morph targets, it also looses any vertices's that are not connected to a face so this must be disabled if you want to keep the vertex order.
|-
|'''Split by Object & Split by Group'''
|TOGGLE||'''ON'''
|-
|colspan="3"|When importing an OBJ its useful to split up the objects into blender objects, named according to the OBJ file, however this splitting looses the vertex order which is needed when using OBJ files as morph targets, it also looses any vertices's that are not connected to a face so this must be disabled if you want to keep the vertex order.<br />As far as blender is concerned OBJ Objects and Groups are no difference, since they are just 2 levels of separation, the OBJ groups are not equivalent to blender groups so both can optionally be used for splitting.
|-
|'''Clamp Scale'''
|NUMBER||'''0.0'''
|-
|colspan="3"|OBJ Files often vary greatly in scale, this setting clamps the imported file to a fixed size.
|-
|'''Forward / Up Axis'''
|SWITCH||'''-Z Forward, Y Up'''
|-
|colspan="3"|{{Extensions:2.5/Py/Scripts/Import-Export/generic_axis_conversion}}
|-
|'''Image Search'''
|TOGGLE||'''ON'''
|-
|colspan="3"|This enables a recursive file search if an image file can't be found.
|}

==== Export Options ====
{| {{Css/prettytable|80%}}
|'''Selected Objects'''
|TOGGLE||'''OFF'''
|-
|colspan="3"|Selected Object - Only export the selected objects.<br />Otherwise export all objects in the scene
|-
|'''Animation'''
|TOGGLE||'''OFF'''
|-
|colspan="3"|Exports a numbered OBJ for each frame from the start to the end frame.<br />This can take quite a long time so take care.
|-
|'''Apply Modifiers'''
|TOGGLE||'''OFF'''
|-
|colspan="3"| Export mesh objects as seen in the 3D view with all modifiers applied<br />Mostly you will want this unless you are exporting a subsurf cage.
|-
|'''Edges'''
|TOGGLE||'''ON'''
|-
|colspan="3"|Export loose edges as 2 sided faces.<br />Mostly there is no need for this but its enabled by defult to ensure all geometry data is exported.
|-
|'''Normals'''
|TOGGLE||'''OFF'''
|-
|colspan="3"| Write out blenders face and vertex normals (depending on the faces smooth setting)<br />Mostly this isnt needed since most applications will calculate their own normals but to match blenders normal map textures youll need to write these too.
|-
|'''UVs'''
|TOGGLE||'''ON'''
|-
|colspan="3"| Write out the active UV layers coordinates from blender<br />
|-
|'''Materials'''
|TOGGLE||'''OFF'''
|-
|colspan="3"| Write out the MTL file along with the OBJ<br />Most importers that support OBJ will also read the MTL file.
|-
|'''Triangulate'''
|TOGGLE||'''OFF'''
|-
|colspan="3"| Write out quads as 2 triangles<br />Some programs only have very basic OBJ support and only support triangles.
|-
|'''Polygroups'''
|TOGGLE||'''OFF'''
|-
|colspan="3"| Write faces into OBJ groups based on the meshes vertex group.<br />''Note that this does a best guess since a faces vertices can be in multiple vertex groups.''
|-
|'''Nurbs'''
|TOGGLE||'''OFF'''
|-
|colspan="3"| Write out nurbs curves as OBJ nurbs rather than converting to geometry<br />
|-
|'''Objects as OBJ Objects / Groups'''
|TOGGLE||'''ON'''
|-
|colspan="3"| Write out each blender object as an OBJ object<br />''Note that as far as blender is concerned there is no difference between OBJ Groups and Objects, this option is only included for applications which treat them differently.''
|-
|'''Material Groups'''
|TOGGLE||'''OFF'''
|-
|colspan="3"| Create OBJ groups per material.
|-
|'''Keep Vertex Order'''
|TOGGLE||'''OFF'''
|-
|colspan="3"| Maintain vertex order on export<br />''This is needed when OBJ is used for morph targets.''
|-
|'''Scale'''
|NUMBER||'''1.0'''
|-
|colspan="3"| Global scale to use on export.
|-
|'''Forward / Up Axis'''
|SWITCH||'''-Z Forward, Y Up'''
|-
|colspan="3"|{{Extensions:2.5/Py/Scripts/Import-Export/generic_axis_conversion}}
|-
|'''Path Mode'''
|SWITCH||'''Auto'''
|-
|colspan="3"|{{Extensions:2.5/Py/Scripts/Import-Export/generic_path_mode}}
|}

=== Examples ===
TODO

== Compatibility ==

* Nurbs surfaces, text3d and metaballs are converted to meshes at export time.

=== Supported ===

;Objects
:

* Object are written as geometry
* Dupli Objects

<br /> 

;Object Types
:

* Meshes - See below 
* Nurbs Curves

<br /> 

;Meshes

* Verts/Edges/Faces/Normals 
* Smooth/Flat Faces
* UV Coordinates (only single layer) 

;Nurbs Curves
:

* Open and closed
* Curves only (not surfaces)
* Curve weighting

;Materials
:

* Color: diffuse, specular, ambient.
* Shader settings: shininess, transparency, emit. 
* normal shading / shadeless / no-specular.
* textures for diffuse, specular, ambient, alpha, translucency, bumpmap, hardness.

=== Missing ===

Some of the following features are missing.
* Nurbs Surfaces<br />''this could be added but is not widely used.''
* Advanced Material Settings.<br />''There are material options documented but very few files use them and there are few examples available''.
* Normals<br />Blender ignores normals from imported files, recalculating its own based on the geometry.

==== Command Line Converting ====
Here is a script that will convert a blend to an OBJ from the command line.

''(note that it will only use the active scene)''
<source lang=python>
import bpy
import sys

argv = sys.argv
argv = argv[argv.index("--") + 1:] # get all args after "--"

obj_out = argv[0]

bpy.ops.export_scene.obj(filepath=obj_out, axis_forward='-Z', axis_up='Y')
</source>

Save the script to convert_blend_to_obj.py

Then convert a blend
 blender foobar.blend --background --python convert_blend_to_obj.py -- foobar.obj

== Known Issues ==

* Importing very large OBJ files (over a few 100mb), can use a lot of ram.
* OBJ's export using Unix line endings '\n' even on windows, if you open the files in a text editor it must recognize '\n' line endings.
