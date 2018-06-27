
************
Autodesk FBX
************

=FBX =

{{ScriptInfo
|name= FBX Addon
|tooltip= Export/Import animated FBX models
|menu= Import, Export
|usage= Import/Export animated/rigged/textured models in FBX format
|version= 3.8.3
|author= Campbell Barton (ideasman_42), Bastien Montagne (mont29),  Jens Ch. Restemeier, with additions by others.
|blender= 2.79
|license= GNU General Public License (GPL)
}}

==7.4 Bin Exporter==
===Implemented and expected to be working!===
* Objects, and simple parent relations between objects (not through constraints, though).
** Empty objects' FBX type may be controlled through a String custom property named 'fbx_type'.
* DupliObjects (from dupli or particles, also handles groups), as instances.
* Lamps.
* Cameras.
* Meshes, including:
** (Split) normals, and tangent space.
** UVs.
** VCol.
** Smooth groups (edges or faces).
** Faces' material indices.
** Shapes.
* Materials (Phong or Lambert shading).
** Node-based materials (including Cycles one) are exported as very basic ones in FBX, featuring only the diffuse color (called 'Viewport Color' in Cycles e.g.).
* Textures (only image/video type, embedding should work, needs 'COPY' path mode).
* Materials <-> Textures relations: textures can affect:
** DiffuseFactor, DiffuseColor.
** TransparencyFactor, TransparentColor.
** EmissiveFactor, EmissiveColor.
** AmbientFactor.
** SpecularFactor, SpecularColor.
** Shininess, ShininessExponent.
** ReflectionFactor, ReflectionColor.
** Normal/bump.
* Armature linked to mesh.
* Animation:
** Basic object baked animation (loc/rot/scale).
** Armature baked animation (loc/rot/scale of bones).
** Shapes baked animation (percentage of effect of each shape, hence only relative ShapeKeys are handled here!).
* Custom properties.

Notes:
* Bones would need to get a correction to their orientation (FBX bones seems to be -X aligned, Blender’s are Y aligned), this does not affect skinning or animation, but imported bones in other apps will look wrong.
* Animations (FBX AnimStacks, Blender actions) **are not linked** to there object, because there is no real way to know which stack to use as 'active' action for a given object/mesh/bone. This may be enhanced to be smarter in future, but not really considered urgent, so for now you'll have to link actions to objects by hand.
* Armatures’ instances (through dupli or group instancing e.g.) **are not supported**.

===TODOs, optional===
I.e. things that we might want to add, if time allows.
* A few meshes layers (like e.g. edge crease).
* More animated properties (like material ones)?
* Finish 'Bake transform' feature (using it for empties, armatures?).
* Support armature instances (dupli, group, ..., see {{BugReport|45677}}) - warning: most likely a real nightmare!

==7.x Bin Importer==
===Implemented and expected to be working!===
* Objects, and simple parent relations between objects (no transform constraints, though).
** '''WARNING!''' Parenting is known broken when parent uses 'Geometric' transform (like 3DSMax offset transform, see details below). 
* Lamps.
* Cameras (Note: there are some remaining unresolved orientation issues with cameras, due to insane transform model from Maya...).
* Meshes, including:
** Vertex normals.
** UVs.
** VCol.
** Smooth groups (edges or faces).
** Faces' material indices.
** Shapes.
* Materials (BI and basic Cycles).
* Textures (only image/video type, no embedding support yet).
* Materials <-> Textures relations: textures can affect:
** DiffuseFactor, DiffuseColor.
** TransparencyFactor, TransparentColor.
** EmissiveFactor, EmissiveColor.
** AmbientFactor.
** SpecularFactor, SpecularColor.
** Shininess, ShininessExponent.
** ReflectionFactor, ReflectionColor.
** Normal/bump.
* Armature.
* Armature <-> Mesh relations (skinning, only through Deformers system currently).
* Animation:
** Basic object baked animation (loc/rot/scale).
** Armature baked animation (loc/rot/scale of bones).
** Shapes baked animation.
* Custom properties.

Notes:
* Bones' orientation import is complex, you may have to play a bit with related settings until you get expected result.
* Animation support is minimal currently, we read all curves as if they were 'baked' ones (i.e. a set a close keyframes, with linear interpolation).
* Imported actions are linked to related object/bone/shapekey, on the 'first one wins' basis, if you exported a set of them for a single object you'll have to relink them yourself.

===TODOs, optional===
I.e. things that we might want to add, if time allows.
* A few meshes layers (like e.g. edge crease).
* More animated properties (like material ones)?
* Add support for advanced Bézier-like interpolation of FBX anim curves.

====Correct Handling of Geometric Transformations in Parenting====
'Geometric' transformations are supposed to only be applied to current node, and not be inherited (i.e. not be applied to the children). There is no way to support that directly in Blender, so we'd have to somehow apply a reverse of those transformations to children I think… See also {{BugReport|54071}} for a nice simple example file.

==Demo Files==
Here are a few demo files intensively used as test cases during dev:
* [[file:fbx_example_kngcalvn.zip]] - Some kind of squirrel/hamster (mostly, animation and rigging).
* [[file:simple_character_sinbad.blend.zip]] - A dancing troll (animation, including drivers, rigging, shapekeys, textures).
* [[file:simple_level_instancing.blend.zip]] - A simple static scene (instancing).

==6.1 ASCII Exporter==

=== Introduction ===

Export selected objects to Autodesks .FBX file format.

This format is mainly use for interchanging character animations between applications and is supported applications such as Cinema4D, Maya, 3dstudio MAX, Wings3D and engines such as Unity3D, Unreal Engine 3/UDK and Unreal Engine 4.

The exporter can bake mesh modifiers and animation into the FBX so the final result looks the same as blender.

== Usage ==

=== Instructions ===

* Launch the exporter from the File → Export menu
* Set the options in the user interface ''(Default options should be okay in most situations)''
* Press the "Export" button
* Select the filename to export to.

=== Configuration ===

These options will be presented at export time. in most cases the defaults should be good to use.

==== Export Objects ====
{| {{Css/prettytable|80%}}
|'''Selected Objects'''
|TOGGLE||'''OFF'''
|-
|colspan="3"|Selected Object - Only export the selected objects.<br />Otherwise export all objects in the scene<br />'''Note!''' this does not apply when batch exporting.
|-
|'''Scale'''
|NUMBER||'''1.0'''
|-
|colspan="3"|Scale the exported data by this value. 10 is the default because this fits best with the scale most applications import FBX to.
|-
|'''Forward / Up Axis'''
|SWITCH||'''-Z Forward, Y Up'''
|-
|colspan="3"|{{Extensions:2.5/Py/Scripts/Import-Export/generic_axis_conversion}}
|-
|'''Empty/Camera/Lamp/Armature/Mesh'''
|TOGGLE||'''ON'''
|-
|colspan="3"|Enable/Disable exporting of respective object types.
|-
|'''(Mesh) Modifiers'''
|TOGGLE||'''OFF'''
|-
|colspan="3"|When enabled, the mesh will be from the output of the modifiers applied to the mesh.
|-
|'''(Mesh) HQ Normals'''
|TOGGLE||'''OFF'''
|-
|colspan="3"|Calculate higher quality normals for exporting, use this where the resulting normals will be rendered.
|}

==== Export Animation ====
{| {{Css/prettytable|80%}}
|'''Include Animation'''
|TOGGLE||'''ON'''
|-
|colspan="3"|Export armature bone and object animation.
|-
|'''Optimize Keyframes'''
|TOGGLE||'''ON'''
|-
|colspan="3"|remove duplicate keyframes when they are not needed.
|-
|'''All Actions'''
|TOGGLE||'''ON'''
|-
|colspan="3"|Export all actions compatible with selected armatures, start/end times are derived from the keyframe range of each action. When disabled only the currently assigned action is exported.
|-
|'''Include Default Take'''
|TOGGLE||'''ON'''
|-
|colspan="3"|Export the 'Default Take', this is an action which includes all object and armature animations as displayed in the 3D view and is mainly useful when animating multiple objects together.
|-
|'''Optimize Precision'''
|NUMBER||'''6'''
|-
|colspan="3"|Tolerance for comparing double keyframes (higher for greater accuracy), 6 allows 0.000001 difference or less for removal.
|}

==== Other Options ====
{| {{Css/prettytable|80%}}
|'''Path Mode'''
|SWITCH||'''Auto'''
|-
|colspan="3"|{{Extensions:2.5/Py/Scripts/Import-Export/generic_path_mode}}
|-
|'''XNA Rotate Animation Hack'''
|SWITCH||'''Group > File'''
|-
|colspan="3"|Disables global rotation because it does not work with Microsoft XNA.
|-
|'''XNA Strict Options'''
|TOGGLE||'''OFF'''
|-
|colspan="3"|Sets various options found to only work with Microsoft XNA.
|}

==== Batch Export ====
{| {{Css/prettytable|80%}}
|'''Enable Batch'''
|TOGGLE||'''OFF'''
|-
|colspan="3"|When enabled, export each group or scene to a file.
|-
|'''Group > File / Scene > File'''
|SWITCH||'''Group > File'''
|-
|colspan="3"|Choose whether to batch export groups or scenes to files.<br />'''Note!''' when '''Group > Scene''' is enabled, you cannot use the animation option '''Current Action''' since that uses scene data and groups are not attached to any scenes.<br />'''Note!''' when '''Group > Scene''' is enabled you must include the armature objects in the group for animated actions to work.
|-
|'''Own Dir'''
|TOGGLE||'''OFF'''
|-
|colspan="3"|When enabled, each file is exported into its own directory, this is useful when using the "Copy Images" option. so each directory contains 1 model with all the images it uses.<br />'''Note''' This requires a full python installation, if you do not have a full python installation this button will not be shown.
|-
|'''Prefix'''
|TEXT||'''(filename)'''
|-
|colspan="3"|prefix the scene/group name with this text when exporting, its also used for the name of the directory when "Own Dir" option is enabled.
|}

=== Examples ===
Here is a blend that contains many examples each in a scene.
Including motion capture, modifiers, uv/color layers, materials, armatures and more.

To export all examples at once, open the blend file, run the exporter, Enable Batch, Select "File->Scene" option, set the animation option to "Scene Frames", enable "Copy Images" and export.

[http://wiki.blender.org/uploads/b/b0/Fbx_test_examples.zip Fbx_test_examples.zip]

A single animated character (used in screenshots below)<br />
[http://members.optusnet.com.au/cjbarton/fbxExample.zip fbxExample.zip] (includes blend file, images and exported fbx)

== Compatibility (Import) ==
Note that the importer is a new addition and misses support for many features the exporter supports.

* binary FBX files only.
* Version 7.1 or newer.

=== Supported ===

;Objects
:

*Object instancing.
*Object Parent/Child Hierarchy

<br /> 

;Object Types
:
*Meshes - See below 
*Cameras - see below 
*Lamps - see below 
*Empties - see below
* '''TODO:''' Armatures

<br /> 

;Meshes

*Verts/Edges/Faces
* Smooth/Flat Faces, Soft/Sharp Edges
* UV Coordinates
* Vertex Colors
* '''TODO:''' Armature Deformation
* '''TODO:''' Shape Keys

;Lamps

*Energy 
*Color
*Type (Point/Directional/Spot) 
*Spot Size
TODO: Distance

;Materials
:

*Cycles and Blender-Internal materials (depending on engine set).
*Color: diffuse, specular, ambient.
*Shader settings: shininess, transparency, emit, reflect.

;Cameras

*Clip start/end 
*Field of view 
*ShiftX/ShiftY 
*Aspect ratio


=== Missing ===

* Armatures
* Animation
* Mesh: Shape keys.

== Compatibility (Export) ==
* Nurbs surfaces, text3d and metaballs are converted to meshes at export time.

=== Supported ===

;Objects
:

*Object Animation (Location/Scale/Rotation) 
*Object Groups 
*Object Parent/Child Hierarchy<br />''Note, parents/children will only be exported if they are selected.<br />Do not used skinned meshes as children of other objects (except their own armature) This doesnt work reliably''

<br /> 

;Object Types
:

*Meshes - See below 
*Metaballs, Nurbs Surface, Text3D (written as FBX mesh objects) 
*Particles (strands as mesh edges) 
*Cameras - see below 
*Armatures - see below 
*Lamps - see below 
*Empties - see below

<br /> 

;Meshes

*Verts/Edges/Faces/Normals 
*Smooth/Flat Faces, Soft/Sharp Edges
*UV Coordinates (multiple named layers supported) 
*Vertex Colors (multiple named layers supported) 
*Armature Deformation<br />''Only 1 armature modifier can be used on each mesh.<br />Armature envelopes will only work when the mesh "Modifier" option is enabled, otherwise they must be manually converted to weight groups before exporting.''
*Shape Keys<br />''Currently shape keys will only be written if modifiers are disabled, or if the modifiers keep the same number of vertices, note that when exporting shapes with Apply Modifiers enabled no other shapes should be displayed since the shape will be applied on top of the mesh thats exported.''

;Armatures
:

*Bones.<br />''Bone use the same name space as objects, naming collisions are solved by the exporter.'' 
*Parent Bones.<br />''Meshes with parent bones are exported as weighted meshes'' 
*Animation.<br />''Animated armatures are exported with keyframes, The results of constraints and IK's etc will be exported however the constraints and other settings are not saved into the FBX file.'' 
*Actions (Multiple actions to FBX Takes).<br />''When the "All Actions" option is enabled, actions will be exported for each armature when an action has at least 1 name that matches an armatures bone.''

;Lamps

*Energy 
*Color 
*Distance 
*Type (Point/Directional/Spot) 
*Spot Size

;Materials
:

*Color: diffuse, specular, ambient. 
*Shader settings: shininess, transparency, emit. 
*Shader (phong or lambert) 
*Shadeless 
*Images Texface ''Material Textures are not supported''

;Cameras

*Clip start/end 
*Field of view 
*ShiftX/ShiftY 
*Aspect ratio

=== Missing ===

Some of the following features are missing because they are not supported by the FBX format, others may be added later.
* Object Instancing<br />''exported objects do not share data, instanced objects will each be written with their own data''
* Material textures.<br />''only texface images are supported''.
* Vertex Shape Keys.<br />''FBX Supports but this exporter does not write them yet''
* Animated Fluid Simulation<br />''FBX does not support this kind of animation, You can however use use the OBJ exporter to write a sequence of files.''
* Constraints<br />''The result of using constraints is exported as a keyframe animation however the constraints themselves are not saved in the FBX''
* Dupli Objects.<br />''At the moment dupli objects are only written in static scenes (when animation is disabled)''

== Interoperability ==

[[File:FbxExport blend.jpg|thumb|Blender3D]]

This file was exported from blender, you can grab the FBX and Blend file here.<br />
http://www.graphicall.org/ftp/ideasman42/fbx_examples/fbxExample.zip

{{clr}}
----

=== Motion Builder ===

[[File:FbxExport mb.jpg|thumb|MotionBuilder]]

'''Tests Passed...'''
* Character animation
* Materials
* Textures
* Lamps
* Cameras
* Empty's

'''Notes...'''
* Imported models will often appear small, press the A key to resize the view.
* Mesh vertex color is not displayed

{{clr}}
----

=== Cinema4D ===

[[File:FbxExport c4d.jpg|thumb|Cinema4D]]

'''Tests Passed...'''
* Character animation
* Materials
* Textures
* Lamps
* Cameras
* Empty's

'''Notes...'''
* Imported models will often be small, press Hkey to resize the view.
* Mesh vertex color is not displayed

{{clr}}
----

=== 3D Studio Max ===

[[File:fbxExample_3dsmax.jpg|thumb|3D Studio Max]]

See: [[Scripts/Manual/Export/autodesk fbx/3dsmax|Blender to 3DStudio Max Tutorial]]

'''Tests Passed...'''
* Character animation
* Materials (see below)
* TODO further testing...

'''Notes...'''
* Imported materials have low alpha/opacity, possibly a bug in the 3DS MAX importer.

{{clr}}
----


=== Maya ===

[[File:fbxExample_maya.jpg|thumb|Maya]]

'''Tests Passed...'''
* Character animation (Maya 8.0 or greater)
* Materials
* TODO further testing...

'''Notes...'''
* Dont scale the armature object since maya does not support non uniform scaled bones.

{{clr}}
----

=== Deep Exploration (Right Hemisphere) ===

[[File:FbxExport de.jpg|thumb|Deep Exploration]]

'''Tests Passed...'''
* Character animation (The example model imported with some problems)
* Materials
* Textures
* TODO further testing...

'''Notes...'''
* When exporting armature animation, disable "Optimize Keyframes" otherwise you may get bad bone interpolation.
* With animations, once imported you'll need to select the default action at the bottom of the screen. to play the animation.
* Some character animations to not deform properly, since other programs display this correctly I assume this is a problem with Deep Exploration --[[User:Ideasman42|Ideasman42]] 00:34, 31 August 2007 (CEST)

{{clr}}
----

=== Modo ===

[[File:FbxExport modo.jpg|thumb|Modo]]

'''Tests Passed...'''
* Meshes
* Textures
* TODO further testing...

'''Notes...'''
* Modo does not support animation

{{clr}}
----

=== Endorphin (NaturalMotion) ===

'''Tests Passed...'''
* Armature animation

'''Notes...'''
* Endorphin only supports FBX's bones, all other objects are importes as bones.<br /> Before exporting make sure you de-select armatures only, unless you want your camera as a bone.
* Start and end frames are not imported, youll need to set them after importing.
----

=== Cheetah3D ===

[[File:FbxExport cheetah3d.jpg|thumb|Cheetah3D]]

'''Tests Passed...'''
* Character animation
* Materials
* Textures

{{clr}}
----

=== Carrara ===

[[File:FbxExport carrara.jpg|thumb|Carrara]]

'''Tests Passed...'''
* Character animation
* Materials
* Textures

{{clr}}
----

=== Unity3D ===

[[File:FbxExport unity3d.jpg|thumb|Unity3D]]

'''Tests Passed...'''
* Character animation
* Materials
* Textures

'''Notes...'''
* Cameras and lights are imported just as placeholders.
* When using armature deformed meshes, All vertices's must be influenced by at least one bone, or it will look like the vertex is in some far off place.

{{clr}}
----

=== Microsoft XNA ===

For Blender 2.59, we had support for workarounds that were needed to support FBX with XNA, since XNA has been discontinued, this option has been removed from Blender.

{{clr}}
----

=== C4 Game Engine ===

See the [http://www.terathon.com/wiki/index.php?title=Blender_3D C4 Engine Wiki] for notes on getting models into the C4 Engine with the fbx exporter.

== Notes ==

==== Saving Just Animations ====

The FBX file format supports files that only contain takes. It is up to you to keep track of which animations go with which model.

The animation that will be output is whatever the currently selected action is within the action editor.

To reduce the file size, turn off the exporting of any parts you do not want and untick 'All Actions'. 

For boned animations typically you just leave the armature enabled which is necessary for that type of animation.

Reducing what is output makes the export and future import much quicker.

Normally each action will have its own name but the current or only take can be forced to be called 'Default Take'. Typically ensure that option remains off.

==== Command Line Converting ====
Here is a script that will convert a blend to an FBX from the command line.

''(note that it will only use the active scene)''
<source lang=python>
import bpy
import sys

argv = sys.argv
argv = argv[argv.index("--") + 1:] # get all args after "--"

fbx_out = argv[0]

bpy.ops.export_scene.fbx(filepath=fbx_out, axis_forward='-Z', axis_up='Y')
</source>

Save the script to convert_blend_to_fbx.py

Then convert a blend
 blender foobar.blend --background --python convert_blend_to_fbx.py -- foobar.fbx

== Known Issues ==

=== Dupli's ===

* Exporting DupliObjects (dupliVerts, dupliFaces, dupliFrames, dupliGroups) does not work in 2.45rc2 (It has since been fixed)
* Dupli Objects dont support animation export. (disable animation for dupli's to work)
* Armatures in dupli's do not export


=== Support ===

* [http://blenderartists.org/forum/showthread.php?t=92082 Python & Plugins forum] at Blender Artist.
