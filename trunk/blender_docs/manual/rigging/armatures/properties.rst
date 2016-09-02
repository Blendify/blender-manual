
**********
Properties
**********

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode, Edit Mode and Pose Mode
   | Panel:    All in Properties editor, *Object data* property


Let us first have a general overview of the various panels gathering the armature settings,
in Properties editor, *Object data* tab:

.. figure:: /images/rigging_armatures_properties_properties-editor.png

   The Object data property in the Properties editor.


Skeleton
========

.. figure:: /images/rigging_armatures_properties_skeleton-panel.png

   The Skeleton panel.


In this panel you can arrange sets of bones into different layers for easier manipulation.


Display
=======

.. figure:: /images/rigging_armatures_properties_display-panel.png

   The Display panel.


This controls the way the bones appear in 3D View; you have four different options you can select.

There are several other options available which we will cover later on.


Bone Groups
===========

.. figure:: /images/rigging_armatures_properties_bone-groups-panel.png

   The Bone Groups panel.


This panel allows the creation, deletion and editing of Bone Groups.

Bone Groups are meant to be used during the rig creation to define and assign a color to a meaningful set of bones.
It is an usual convention to color Left parts of the rig as blue and Right parts as red, although it is not mandatory.
These groups can later be easily accessed with the *Select* and *Deselect* buttons.
The *Assign* and *Remove* buttons serve to add or remove the currently selected bones to the currently selected group.

It is important to note that a bone can only belong to one group.
For bones belonging to multiple for easy selection during animation see instead
`Selection Sets <https://wiki.blender.org/index.php/Extensions:2.6/Py/Scripts/Animation/SelectionSets>`__.

.. note::

   This mode is only available in Pose Mode.

.. tip::

   Use the mouse scroll wheel over the color templates to quickly skim through the available colors.


Pose Library
============

.. figure:: /images/rigging_armatures_properties_pose-library-panel.png

   The Pose Library panel.


Allows you to save different settings (location, rotation, scale) for selected bones for later use.

.. note::

   This mode is only available in Pose Mode.


Ghost
=====

.. figure:: /images/rigging_posing_visualization_ghost-panel.png

   The Ghost panel.


Allows you to see a set of different consecutive poses, very useful when animating.


Inverse Kinematics
==================

.. figure:: /images/rigging_armatures_properties_inverse-kinematics-panel.png

   The Inverse Kinematics panel.


Defines the type of IK solver used in your animation.


Motion Paths
============

.. figure:: /images/rigging_posing_visualization_motion-paths-panel.png

   The Motion Paths panel.


In this panel you can enable visualization of the motion path your skeleton leaves when animated.

.. note::

   This mode is only available in Pose Mode.


Custom Properties
=================

See the :doc:`Custom Properties </data_system/custom_properties>` page for more information.
