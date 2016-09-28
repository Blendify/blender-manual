
************
Introduction
************

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode, Edit Mode and Pose Mode
   | Panel:    All in Properties editor, *Bone* property


Let us first have a general grasp of the various panels gathering the bone settings,
in Properties editor, *Bone* tab:

.. figure:: /images/rigging_armatures_bones_properties_properties-editor.png

   The Bone tab.


Relations
   In this panel you can arrange sets of bones in different layers for easier manipulation.
Display
   Display panel lets you customize the look of your bones taking the shape of another existing object.



Deform
======

.. figure:: /images/rigging_armatures_bones_properties_deform-panel.png

   The Deform panel.


In this panel you can set basic properties of the bones.

Turning the Deform option on and off,
includes the active bone in the Automatic Weight Calculation when the Mesh is
Parented to the Armature using the Armature Deform with the "With Automatic Weights" option.

Also it is worth noting that by turning off a bone's deform option, makes it not influence the mesh at all,
overriding any weights that it might have been assigned before; It mutes its influence.


Transform
=========

.. Todo, images are the same

.. figure:: /images/rigging_armatures_bones_properties_transform-panel-edit.png

   The Transform panel (edit mode).


When in edit mode you can use this panel to control position and roll of individual bones.

When in pose mode you can only set location for the main bone, and you can now set rotation and scale.

.. figure:: /images/rigging_armatures_bones_properties_transform-panel-pose.png

   The Transform panel (pose mode).

.. note::

   This mode is only available in Edit Pose Modes.


Transform Locks
===============

.. figure:: /images/rigging_armatures_bones_properties_transform-locks-panel.png

   The Transform Locks panel.


This panel appears only in pose mode and allows you to restrict position,
rotation and scale by axis on each bone in the armature.

.. note::

   This mode is only available in Pose Mode.


Inverse Kinematics
==================

.. figure:: /images/rigging_armatures_bones_properties_inverse-kinematics-panel.png

   The Inverse Kinematics panel.


This panel controls the way a bone or set of bones behave when linked in an inverse kinematic chain.

.. note::

   This mode is only available in Pose Mode.


Custom Properties
=================

See the :doc:`Custom Properties </data_system/custom_properties>` page for more information.
