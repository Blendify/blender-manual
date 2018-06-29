
************
Autodesk FBX
************

:Name: FBX Addon
:Location: :menuselection:`File --> Import/Export --> FBX`
:Version: 3.8.3
:Blender Version: 2.79
:Category: Import-Export
:Author: Campbell Barton, Bastien Montagne,  Jens Ch. Restemeier, with additions by others.


Usage
=====

This format is mainly use for interchanging character animations between applications
and is supported applications such as Cinema4D, Maya, 3dstudio MAX, Wings3D and engines
such as Unity3D, Unreal Engine 3/UDK and Unreal Engine 4.

The exporter can bake mesh modifiers and animation into the FBX so the final result looks the same as blender.

.. note::

   - Bones would need to get a correction to their orientation
     (FBX bones seems to be -X aligned, Blender’s are Y aligned),
     this does not affect skinning or animation, but imported bones in other apps will look wrong.
   - Animations (FBX AnimStacks, Blender actions) **are not linked** to there object,
     because there is no real way to know which stack to use as 'active' action for a given object/mesh/bone.
     This may be enhanced to be smarter in future, but not really considered urgent,
     so for now you'll have to link actions to objects by hand.
   - Armatures’ instances (through dupli or group instancing e.g.) **are not supported**.

.. note::

   - Bones' orientation import is complex, you may have to play a bit with
     related settings until you get expected result.
   - Animation support is minimal currently, we read all curves as if they were 'baked' ones
     (i.e. a set a close keyframes, with linear interpolation).
   - Imported actions are linked to related object/bone/shapekey, on the 'first one wins' basis,
     if you exported a set of them for a single object you'll have to relink them yourself.

.. note:: Saving Just Animations

   The FBX file format supports files that only contain takes.
   It is up to you to keep track of which animations go with which model.
   The animation that will be output is whatever the currently selected action is within the action editor.
   To reduce the file size, turn off the exporting of any parts you do not want and untick *All Actions*. 
   For boned animations typically you just leave the armature enabled which is necessary for that type of animation.
   Reducing what is output makes the export and future import much quicker.
   Normally each action will have its own name but the current or only
   take can be forced to be called *Default Take*. Typically ensure that option remains off.


Properties
==========

Import
------

Todo.

Export
------

Main
^^^^

Selected Objects
   Only export the selected objects. Otherwise export all objects in the scene.
   Note, this does not apply when batch exporting.
Scale
   Scale the exported data by this value. 10 is the default because this
   fits best with the scale most applications import FBX to.
Forward / Up Axis
   Since many applications use a different axis for 'Up', there are axis conversion there settings,
   Forward and Up axis - By mapping these to different axis you can convert rotations
   between applications default up & forward axis.

   Blender uses Y Forward, Z Up (since the front view looks along the +Y direction).
   For example, its common for applications to use Y as the up axis, in that case -Z Forward, Y Up is needed.
Empty/Camera/Lamp/Armature/Mesh
   Enable/Disable exporting of respective object types.
Apply Modifiers
   When enabled, the mesh will be from the output of the modifiers applied to the mesh.
HQ Normals
   Calculate higher quality normals for exporting, use this where the resulting normals will be rendered.

Animation
^^^^^^^^^

Include Animation
   Export armature bone and object animation.
Optimize Keyframes
   Remove duplicate keyframes when they are not needed.
All Actions
   Export all actions compatible with selected armatures
   start/end times are derived from the keyframe range of each action.
   When disabled only the currently assigned action is exported.
Include Default Take
   Export the "Default Take", this is an action which includes all object and
   armature animations as displayed in the 3D view and is mainly useful when
   animating multiple objects together.
Optimize Precision
   Tolerance for comparing double keyframes (higher for greater accuracy),
   6 allows 0.000001 difference or less for removal.
Path Mode
   TODO.
Batch Mode
   When enabled, export each group or scene to a file.

   Group/Scene
      Choose whether to batch export groups or scenes to files.
      Note, when Group/Scene is enabled, you cannot use the animation option *Current Action*
      since that uses scene data and groups are not attached to any scenes.
      Also note, when Group/Scene is enabled you must include the armature objects
      in the group for animated actions to work.
Own Dir
   When enabled, each file is exported into its own directory,
   this is useful when using the "Copy Images" option. so each directory contains
   one model with all the images it uses. Note, this requires a full python installation
   if you do not have a full python installation this button will not be shown.
Prefix
   prefix the scene/group name with this text when exporting,
   its also used for the name of the directory when "Own Dir" option is enabled.


Compatibility
=============

Import
------

Note that the importer is a new addition and misses support for many features the exporter supports.

* binary FBX files only.
* Version 7.1 or newer.


Supported
^^^^^^^^^

Objects:

- Object instancing.
- Object Parent/Child Hierarchy

Object Types:

- Meshes - See below 
- Cameras - see below 
- Lamps - see below 
- Empties - see below

Meshes:

- Verts/Edges/Faces
- Smooth/Flat Faces, Soft/Sharp Edges
- UV Coordinates
- Vertex Colors
- TODO: Armature Deformation
- TODO: Shape Keys

Lamps:

- Energy 
- Color
- Type (Point/Directional/Spot) 
- Spot Size
- TODO: Distance

Materials:

- Cycles and Blender-Internal materials (depending on engine set).
- Color: diffuse, specular, ambient.
- Shader settings: shininess, transparency, emit, reflect.

Cameras:

- Clip start/end 
- Field of view 
- ShiftX/ShiftY 
- Aspect ratio


Missing
^^^^^^^

- Armatures
- Animation
- Mesh: Shape keys.


Export
------

- Nurbs surfaces, text3d and metaballs are converted to meshes at export time.

Supported
^^^^^^^^^

Objects:

- Object Animation (Location/Scale/Rotation) 
- Object Groups 
- Object Parent/Child Hierarchy. Note, parents/children will only be exported if they are selected.
  Do not used skinned meshes as children of other objects (except their own armature) This doesnt work reliably

Object Types:

- Meshes - See below 
- Metaballs, Nurbs Surface, Text3D (written as FBX mesh objects) 
- Particles (strands as mesh edges) 
- Cameras - see below 
- Armatures - see below 
- Lamps - see below 
- Empties - see below

Meshes:

- Verts/Edges/Faces/Normals 
- Smooth/Flat Faces, Soft/Sharp Edges
- UV Coordinates (multiple named layers supported) 
- Vertex Colors (multiple named layers supported) 
- Armature Deformation -- Only 1 armature modifier can be used on each mesh.
  Armature envelopes will only work when the mesh "Modifier" option is enabled,
  otherwise they must be manually converted to weight groups before exporting.
- Shape Keys -- Currently shape keys will only be written if modifiers are disabled,
  or if the modifiers keep the same number of vertices, note that when exporting shapes
  with *Apply Modifiers* enabled no other shapes should be displayed since the shape will
  be applied on top of the mesh thats exported.

Armatures:

- Bones -- Bone use the same name space as objects, naming collisions are solved by the exporter.
- Parent Bones -- Meshes with parent bones are exported as weighted meshes.
- Animation. Animated armatures are exported with keyframes,
  The results of constraints and IK's etc will be exported however,
  the constraints and other settings are not saved into the FBX file.
- Actions (Multiple actions to FBX Takes) -- When the "All Actions" option is enabled,
  actions will be exported for each armature when an action has at least 1 name that matches an armatures bone.

Lamps:

- Energy 
- Color 
- Distance 
- Type (Point/Directional/Spot) 
- Spot Size

Materials:

- Color: diffuse, specular, ambient. 
- Shader settings: shininess, transparency, emit. 
- Shader (phong or lambert) 
- Shadeless 
- Images Texface -- Material Textures are not supported

Cameras:

- Clip start/end 
- Field of view 
- ShiftX/ShiftY 
- Aspect ratio

Missing
^^^^^^^

Some of the following features are missing because they
are not supported by the FBX format, others may be added later.

- Object Instancing -- exported objects do not share data,
  instanced objects will each be written with their own data.
- Material textures -- only texface images are supported.
- Vertex Shape Keys -- FBX Supports but this exporter does not write them yet.
- Animated Fluid Simulation -- FBX does not support this kind of animation,
  You can however use use the OBJ exporter to write a sequence of files.
- Constraints -- The result of using constraints is exported as a keyframe animation
  however the constraints themselves are not saved in the FBX.
- Dupli Objects -- At the moment dupli objects are only written in static scenes (when animation is disabled).
