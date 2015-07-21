.. index::
   pair: Armature; Panels

************************
Armature Panels Overview
************************

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object mode*, *Edit mode* and *Pose mode*
   | Panel:    All in *Properties* window, *Object data* property


Let's first have a general overview of the various panels gathering the armature settings,
in *Properties* window, *Object data* context:


.. figure:: /images/RiggingEditingObjectDataPropertyWindow.jpg
   :width: 267px

   The Object data property in the Properties window.


Skeleton panel (all modes)
==========================

.. figure:: /images/RiggingEditingObjectDataPropertyCxtSkeletonPanel.jpg
   :width: 250px

   The Skeleton panel.


   In this panel you can arrange sets of bones into different layers for easier manipulation.


Display panel (all modes)
=========================

.. figure:: /images/RiggingEditingObjectDataPropertyCxtDisplayPanel.jpg
   :width: 250px

   The Display panel.


   This controls the way the bones appear in 3D view; you have 4 different options you can select.

   There are several other options available which we will cover later on.


Bone groups panel (pose mode)
=============================

.. figure:: /images/RiggingEditingObjectDataPropertyCxtBonesGroupsPanel.jpg
   :width: 250px

   The Bone Groups panel.


   Lets you assign sets of bones into groups for easy manipulation and management.


Pose Library panel (Pose mode)
==============================

.. figure:: /images/RiggingEditingObjectDataPropertyCxtPoseLibraryPanel.jpg
   :width: 250px

   The Pose Library panel.


   Allows you to save different settings (location, rotation, scale) for selected bones for later use.


Ghost panel (all modes)
=======================

.. figure:: /images/RiggingEditingObjectDataPropertyCxtGhostPanel.jpg
   :width: 250px

   The Ghost panel.


   Allows you to see a set of different consecutive poses, very useful when animating.


iTaSC parameters panel (all modes)
==================================

.. figure:: /images/RiggingEditingObjectDataPropertyCxtiTaSCparametersPanel.jpg
   :width: 250px

   The iTaSC parameters panel.


   Defines the type of IK solver used in your animation.


Motion Paths panel (Pose mode)
==============================

.. figure:: /images/RiggingEditingObjectDataPropertyCxtMotionPathsPanel.jpg
   :width: 250px

   The Motion Paths panel.


   In this panel you can enable visualization of the motion path your skeleton leaves when animated.


Custom Properties panel (all modes)
===================================

.. figure:: /images/RiggingEditingObjectDataPropertyCxtCustomPropertiesPanel.jpg
   :width: 250px

   The Custom Properties panel.


   Panel for defining custom properties; this is used when scripting.


Bone Panels Overview
********************

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object mode*, *Edit mode* and *Pose mode*
   | Panel:    All in *Properties* window, *Bone* property


Let's first have a general grasp of the various panels gathering the bone settings,
in *Properties* window, *Bone* context:


.. figure:: /images/RiggingBonePrincipalsBonePropertyWindow.jpg
   :width: 250px

   The Bone context.


Relations panel (edit mode)
===========================

.. figure:: /images/RiggingEditingBoneCxtRelationsPanel.jpg
   :width: 250px

   The Relations panel.


   In this panel you can arrange sets of bones in different layers for easier manipulation.


Display panel (object mode)
===========================

.. figure:: /images/RiggingEditingBoneCxtDisplayPanel.jpg
   :width: 250px

   The Display panel.


   Display panel lets you customize the look of your bones taking the shape of a another existing object.


Deform panel (all modes)
========================

.. figure:: /images/RiggingEditingBoneCxtDeformPanel.jpg
   :width: 250px

   The Deform panel.


   In this panel you can set basic properties of the bones.

   Turning the Deform option on and off,
   includes the active bone in the Automatic Weight Calculation when the Mesh is
   Parented to the Armature using the Armature Deform with the "With Automatic Weights" option.

   Also it's worth noting that by turning off a bone's deform option, makes it not influence the mesh at all,
   overriding any weights that it might have been assigned before; It mutes its influence.


Custom Properties panel (all modes)
===================================

.. figure:: /images/RiggingEditingObjectDataPropertyCxtCustomPropertiesPanel.jpg
   :width: 250px

   The Custom Properties panel.


   Panel for defining custom properties, this is used when scripting.


Transform panel (edit and pose mode)
====================================

.. figure:: /images/RiggingEditingBoneCxtTransformPanel.jpg
   :width: 250px

   The Transform panel(edit mode).


   When in edit mode you can use this panel to control position and roll of individual bones.

   When in pose mode you can only set location for the main bone, and you can now set rotation and scale.


.. figure:: /images/RiggingEditingBoneCxtTransformPPanel.jpg
   :width: 250px

   The Transform panel(pose mode).


Transform Locks panel (pose mode)
=================================

.. figure:: /images/RiggingEditingBoneCxtTranformLocksPanel.jpg
   :width: 250px

   The Transform Locks panel.

   This panel appears only in pose mode and allows you to restrict position,
   rotation and scale by axis on each bone in the armature.


Inverse Kinematics panel (pose mode)
====================================

.. figure:: /images/RiggingEditingBoneCxtInverseKinematicsPanel.jpg
   :width: 250px

   The Inverse Kinematics panel.


   This panel controls the way a bone or set of bones behave when linked in an inverse kinematic chain.


