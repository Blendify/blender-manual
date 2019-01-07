
************
Collada
************

:Name: Collada format
:Location: :menuselection:`File --> Import/Export --> Collada (.dae)`
:Version: OpenCollada 1.6.68
:Blender: 2.80
:Category: Import-Export
:Authors: Gaia Clary


Usage
=====

This format is mainly use for interchanging character animations between applications
and is supported by applications such as Cinema4D, Maya, Autodesk 3ds Max, Wings3D and
engines such as Unity3D, Unreal Engine 3/UDK and Unreal Engine 4.

The exporter can bake mesh modifiers and animation into the Collada export so the final result looks the same as in Blender.

.. note::

   - This module is still in development

Properties
==========

Import
------

Main
^^^^

import Units
   Use Unit information from the Asset node in the Collada file. Use Blender units if not enabled

Armatures
^^^^^^^^^

Fix Leaf Bones
   Try to find a reasonable location for the bone tails of leaf nodes
Find Bone Chains
   Find best matching Bone chains and make sure that children are connected to their parent
Auto Connect
   Connect bones to their parent if they are the only child of their parent
Minimum chain Length
   Minimum number of bones in a parent/child hierarchy needed to identify a chain. Used for auto connect and find boine chains
Keep Bind Info
   Add 2 custom properties to each bone containing:

   * rest_mat: an array of 16 values representing the restpose matrix at time of import
   * bind_mat: an array of 16 values representing the bindpose matrix at time of import

   Note: The bind_mat is identical to the rest_mat if the Armature is imported with its Restpose.

Export
------

Main
^^^^

Selection Only
   Only export the selected objects. Otherwise export all objects in the scene.
Include Children
   Include Children of selected objects even if not selected
Include Armatures
   Include Armatures for rigged Objects even if the armatrure is not selected
Include Shape Keys
   Export Shape key data (caution, this creates very large output files if many shape keys are defined)
Only Selected UV Map
   Export active UV Map when enabled, otherwise export all UV Maps
Copy
   Copy textures to same folder where the .dae file is exported, otherwise create links to the image files
Geom
^^^^

Apply Modifiers
   When enabled, the mesh will be from the output of the modifiers applied to the mesh.
Triangulate
   Triangulate meshes before exporting (use when target engine supports only tris)


Arm
^^^

Deform Bones only
   restrict armature to its deform bones
Export to SL/OPenSim
   Prepare the Rig for the SL target engine (to be specified)


Anim
^^^^

Include Animations
   Export Animation data
Export format

   * Samples: Create sample frames with Sample Rate (see below)
   * Curves: Keep aanimation curves intact (experimental, does not work with Sheer)

Transformation Type

   * Matrix: Export Transformations as baked matrices
   * TransRotLoc: Export Transformations as separate curves for Translation, Rotation and Scale

Keep Smooth curves
   Also export Curve Handles (only works when the animated object parent inverse matrix is unity)
Sampling Rate
   Distance between 2 sample keyframes (1 means: Every frame is keyed)
Keep Keyframes
   Make sure that the keyframes are always exported even if they are between 2 sample frames
All keyed Curves
   Also export flat curves (with all ikey values identical or only one key defined)
Include all Actions
   Export all actions compatible with the selected armatures
   start/end times which are derived from the keyframe range of each action.
   When disabled only the currently assigned action is exported.

Extra
^^^^^

Use Object Instances
   Define an Object only once and use references (not supported on all target engines)
Use Blender Profile
   Export extra information to allow more precise backimport into Blender
Sort by Object Name
   Make sure the exported objects are exported in Sort order of their Names
Keep Bind Info
   Each bone can have two custom properties:

   * rest_mat: an array of 16 values representing the restpose matrix at time of import
   * bind_mat: an array of 16 values representing the bindpose matrix at time of import

   If the bind_mat is defined then use that matrix as bindmatrix of the bone
   If the rest_mat is defined then use that matrix as the restmatrix of the bone
   This correspondents with the same custom properties from the Collada Importer.
   Bind_mat and rest_mat are needed when handling rigs that where originally made 
   with a bind pose (which Blender does not support)
Limit Precision
   Take care to use at max 5 digits after the comma. good for debugging when you want to compare values

Compatibility
=============

Import
------

TODO


Export
------

TODO

Missing
-------

TODO

