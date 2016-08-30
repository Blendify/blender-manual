..    TODO/Review: {{review|}}.

********************
IK Solver Constraint
********************

The *Inverse Kinematics* constraint implements the *inverse kinematics* armature
posing technique. Hence, it is only available for bones.
To quickly create an IK constraint with a target, select a bone in pose mode,
and press :kbd:`Shift-I`.

This constraint is fully documented in the :doc:`Inverse Kinematics
</rigging/posing/inverse_kinematics/index>` page, part of the rigging chapter.


Options
=======

.. figure:: /images/constraints-tracking-ik.png
   :width: 305px

   Inverse Kinematics panel.


Target
   Must be an armature
Bone
   A bone in the armature
Pole Target
   Object for pole rotation
Iterations
   Maximum number of solving iterations
Chain Length
   How many bones are included in the IK effect. Set to 0 to include all bones

   Use Tail
      Include bone's tail as last element in chain
   Stretch
      Enable IK stretching
Weight
   Position
      For Tree-IK: Weight of position control for this target
   Rotation
      Chain follow rotation of target
Target
   Disable for targetless IK
Rotation
   Chain follows rotation of target

.. vimeo:: 171279647
