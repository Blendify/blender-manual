
**********
Properties
**********

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object mode*, *Edit mode* and *Pose mode*
   | Panel:    All in *Properties* window, *Object data* property


Let's first have a general overview of the various panels gathering the armature settings,
in *Properties* window, *Object data* context:


.. figure:: /images/RiggingEditingObjectDataPropertyWindow.jpg

   The Object data property in the Properties window.


Skeleton panel (all modes)
==========================

.. figure:: /images/RiggingEditingObjectDataPropertyCxtSkeletonPanel.jpg

   The Skeleton panel.


In this panel you can arrange sets of bones into different layers for easier manipulation.


Display panel (all modes)
=========================

.. figure:: /images/RiggingEditingObjectDataPropertyCxtDisplayPanel.jpg

   The Display panel.


This controls the way the bones appear in 3D view; you have 4 different options you can select.

There are several other options available which we will cover later on.


Bone Groups panel (Pose mode)
=============================

.. figure:: /images/RiggingEditingObjectDataPropertyCxtBoneGroupsPanel.png

   The Bone Groups panel.


This panel allows the creation, deletion and editing of Bone Groups.

Bone Groups are meant to be used during the rig creation to define and assign a color to a meaningful set of bones.
It is an usual convention to color Left parts of the rig as blue and Right parts as red, although it is not mandatory.
These groups can later be easily accessed with the *Select* and *Deselect* buttons.
The *Assign* and *Remove* buttons serve to add or remove the currently selected bones to the currently selected group.

It is important to note that a bone can only belong to one group.
For bones belonging to multiple for easy selection during animation see instead
`Selection Sets <https://wiki.blender.org/index.php/Extensions:2.6/Py/Scripts/Animation/SelectionSets>`__.

.. Tip ::

   Use the mouse scroll wheel over the color templates to quickly skim through the available colors.


Pose Library panel (Pose mode)
==============================

.. figure:: /images/RiggingEditingObjectDataPropertyCxtPoseLibraryPanel.jpg

   The Pose Library panel.


Allows you to save different settings (location, rotation, scale) for selected bones for later use.


Ghost panel (all modes)
=======================

.. figure:: /images/RiggingEditingObjectDataPropertyCxtGhostPanel.jpg

   The Ghost panel.


Allows you to see a set of different consecutive poses, very useful when animating.


iTaSC parameters panel (all modes)
==================================

.. figure:: /images/RiggingEditingObjectDataPropertyCxtiTaSCparametersPanel.jpg

   The iTaSC parameters panel.


Defines the type of IK solver used in your animation.


Motion Paths panel (Pose mode)
==============================

.. figure:: /images/RiggingEditingObjectDataPropertyCxtMotionPathsPanel.jpg

   The Motion Paths panel.


In this panel you can enable visualization of the motion path your skeleton leaves when animated.


Custom Properties panel (all modes)
===================================

.. figure:: /images/RiggingEditingObjectDataPropertyCxtCustomPropertiesPanel.jpg

   The Custom Properties panel.


Panel for defining custom properties; this is used when scripting.
