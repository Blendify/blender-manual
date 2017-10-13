
************
Introduction
************

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode, Edit Mode and Pose Mode
   | Panel:    All in Properties editor, *Bone* property

When bones are selected (hence in *Edit Mode* and *Pose Mode*), their
properties are shown in the *Bone* tab of the Properties editor.
This shows different panels used to control features of each selected bone;
the panels change depending on which mode you are working in.

.. figure:: /images/rigging_armatures_bones_properties_properties-editor.png

   The Bone tab.

Relations
   In this panel you can arrange sets of bones in different layers for easier manipulation.
Display
   Display panel lets you customize the look of your bones taking the shape of another existing object.
Deform
   In this panel you can set basic deformation properties of the bones.


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
