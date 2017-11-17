..    TODO/Review: {{review|partial=X}}.

************
Introduction
************

Once an armature is :doc:`skinned </rigging/armatures/skinning/index>` by the needed object(s),
you need a way to configure the armature into positions known as poses.
Basically, by transforming the bones, you deform or transform the skinned object(s).
However, you will notice that you cannot do this in *Edit Mode* --
remember that *Edit Mode* is used to edit the default, base, or "rest" position of an armature.
You may also notice that you cannot use *Object Mode* either, as here you can only transform whole objects.

So, armatures have a third mode dedicated to the process of posing known as *Pose Mode*.
In rest position (as edited in *Edit Mode*), each bone has its own position/rotation/scale to neutral values
(i.e. 0.0 for position and rotation, and 1.0 for scale). Hence, when you edit a bone in *Pose Mode*,
you create an offset in the transform properties, from its rest position.
This may seem quite similar if you have worked with :doc:`relative shape keys </animation/shape_keys/index>`
or :ref:`Delta Transformsin <transform-delta>`.


Posing Section Overview
=======================

In this section, we will see:

- How to :doc:`select and edit bones </rigging/armatures/posing/editing>` in this mode.
- How to :doc:`use pose library </rigging/armatures/properties/pose_library>`.
- How to :doc:`use constraints </rigging/armatures/posing/bone_constraints/introduction>`
  to control your bones' :abbr:`DoF (degrees of freedom)`.
- How to :ref:`use inverse kinematics features <bone-constraints-inverse-kinematics>`.
- How to :doc:`use the Spline inverse kinematics features
  </rigging/armatures/posing/bone_constraints/inverse_kinematics/spline_ik>`.

Even though it might be used for completely static purposes,
posing is heavily connected with :doc:`animation features and techniques </animation/index>`.

In this part, we will try to focus on animation-independent posing,
but this is not always possible. So if you know nothing about animation in Blender,
it might be a good idea to read the :doc:`animation features and techniques </animation/index>`
chapter first, and then come back here.


Visualization
=============

Bone State Colors
-----------------

The color of the bones are based on their state.
There are six different color codes, ordered here by precedence
(i.e. the bone will be of the color of the bottommost valid state):

.. hue rotation based on the bone solid.

- Gray: Default.
- Blue wireframe: in Pose Mode.
- Green: with Constraint.
- Yellow: with :doc:`IK Solver constraint </rigging/constraints/tracking/ik_solver>`.
- Orange: with Targetless Solver constraint.

.. note::

   When :doc:`/rigging/armatures/properties/bone_groups` colors are enabled,
   the state colors will be overridden.
