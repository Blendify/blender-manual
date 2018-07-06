
************
Autodesk FBX
************

:Name: FBX format
:Location: :menuselection:`File --> Import/Export --> FBX (.fbx)`
:Version: 3.9.1
:Blender: 2.79
:Category: Import-Export
:Authors: Campbell Barton, Bastien Montagne, Jens Restemeier


Usage
=====

This format is mainly use for interchanging character animations between applications
and is supported by applications such as Cinema4D, Maya, Autodesk 3ds Max, Wings3D and
engines such as Unity3D, Unreal Engine 3/UDK and Unreal Engine 4.

The exporter can bake mesh modifiers and animation into the FBX so the final result looks the same as in Blender.

.. note::

   - Bones would need to get a correction to their orientation
     (FBX bones seems to be -X aligned, Blender’s are Y aligned),
     this does not affect skinning or animation, but imported bones in other applications will look wrong.
   - Animations (FBX AnimStacks, Blender actions) **are not linked** to there object,
     because there is no real way to know which stack to use as 'active' action for a given object, mesh or bone.
     This may be enhanced to be smarter in future, but not really considered urgent,
     so for now you'll have to link actions to objects by hand.
   - Armatures’ instances (through e.g. dupli or group instancing) **are not supported**.

.. note::

   - Bones' orientation importing is complex, you may have to play a bit with
     related settings until you get expected result.
   - Animation support is minimal currently, we read all curves as if they were 'baked' ones
     (i.e. a set of close keyframes with linear interpolation).
   - Imported actions are linked to their related object, bone or shape key, on a 'first one wins' basis.
     If you exported a set of them for a single object you'll have to reassign them yourself.

.. note:: Saving Just Animations

   The FBX file format supports files that only contain takes.
   It is up to you to keep track of which animations belongs to which model.
   The animation that will be exported is the currently selected action within the Action editor.
   To reduce the file size, turn off the exporting of any parts you do not want and disable *All Actions*.
   For armature animations typically you just leave the armature enabled which is necessary for that type of animation.
   Reducing what is output makes the export and future import much faster.
   Normally each action will have its own name but the current or
   only take can be forced to be named "Default Take". Typically ensure that this option remains off.


Properties
==========

Import
------

Main
^^^^

Manual Orientation
   TODO.
Forward / Up Axis
   Since many applications use a different axis for 'Up', there are axis conversion there settings,
   Forward and Up axis -- By mapping these to different axis you can convert rotations
   between applications default up and forward axis.

   Blender uses Y Forward, Z Up (since the front view looks along the +Y direction).
   For example, its common for applications to use Y as the up axis, in that case -Z Forward, Y Up is needed.
Apply Transform
   TODO.
Import Normals
   TODO.
Import Animation
   TODO.

   Animation Offset
      TODO.
Import User Properties
   TODO.
Import Enums As Strings
   TODO.
Image Search
   TODO.
Decal Offset
   TODO.
Use Pre/Post Rotation
   TODO.


Armatures
^^^^^^^^^

Ignore Leaf Bones
   TODO.
Force Connect Children
   TODO.
Automatic Bone Orientation
   TODO.
Primary/Secondary Bone Axis
   TODO.


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
Apply Scale
   TODO.
Apply Scalings
   TODO.
Forward / Up Axis
   Since many applications use a different axis for 'Up', there are axis conversion there settings,
   Forward and Up axis -- By mapping these to different axis you can convert rotations
   between applications default up and forward axis.

   Blender uses Y Forward, Z Up (since the front view looks along the +Y direction).
   For example, its common for applications to use Y as the up axis, in that case -Z Forward, Y Up is needed.
Empty/Camera/Lamp/Armature/Mesh/Other
   Enable/Disable exporting of respective object types.
Apply Transform
   TODO.
Custom Properties
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

   Embed Textures
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
      this is useful when using the *Copy Images* option. so each directory contains
      one model with all the images it uses. Note, this requires a full Python installation
      if you do not have a full Python installation this button will not be shown.


Geometries
^^^^^^^^^^

Apply Modifiers
   When enabled, the mesh will be from the output of the modifiers applied to the mesh.
Use Modifiers Render Setting
   TODO.
Smoothing
   TODO.
Loose Edges
   TODO.
Tangent Space
   TODO.


Armatures
^^^^^^^^^

Only Deform Bones
   TODO.
Add Leaf Bones
   TODO.
Primary/Secondary Bone Axis
   TODO.
Armature FBXNode Type
   TODO.


Animation
^^^^^^^^^

Baked Animation
   TODO.
Key All Bones
   TODO.
NLA Strips
   TODO.
All Actions
   Export all actions compatible with the selected armatures
   start/end times which are derived from the keyframe range of each action.
   When disabled only the currently assigned action is exported.
Force Start/End Keying
   TODO.
Sampling Rate
   TODO.
Simplify
   TODO.


Compatibility
=============

Import
------

Note that the importer is a new addition and lacks many features the exporter supports.

- binary FBX files only.
- Version 7.1 or newer.


Missing
^^^^^^^

- Mesh: shape keys.


Export
------

NURBS surfaces, text3D and metaballs are converted to meshes at export time.


Missing
^^^^^^^

Some of the following features are missing because they
are not supported by the FBX format, others may be added later.

- Object instancing -- exported objects do not shared data,
  instanced objects will each be written with their own data.
- Material textures -- only texface images are supported.
- Vertex shape keys -- FBX supports them but this exporter does not write them yet.
- Animated fluid simulation -- FBX does not support this kind of animation,
  You can however use the OBJ exporter to write a sequence of files.
- Constraints -- The result of using constraints is exported as a keyframe animation
  however the constraints themselves are not saved in the FBX.
- Dupli-objects -- At the moment dupli-objects are only written in static scenes (when animation is disabled).
