
..    TODO/Review: {{review|text= motion tracking constraints}} .


************
Introduction
************

Constraints are a way of connecting *transform properties* (position, rotation and scale) between objects.
Constraints are in a way the object counterpart of the :doc:`modifiers </modeling/modifiers/index>`,
which work on the object *data* (i.e. meshes, curves, etc.).

All constraints share a basic :doc:`common interface </rigging/constraints/common_interface>`,
again with many similarities with the modifiers' one.


Use of Constraints
==================

Even though constraints might be very useful in static scenes
(as they can help to automatically position/rotate/scale objects),
they were first designed for animation,
as they allow you to limit/control the freedom of an object, either in absolute (i.e.
in global space), or relatively to other objects.

Also note that constraints internally work using 4x4 transformation matrices only.
When you use settings for specific rotation or scaling constraining,
this information is being derived from the matrix only,
not from settings in a *Bone* or *Object*. Especially for combining
rotations with non-uniform or negative scaling this can lead to unpredictable behavior.


Constraining bones
------------------

Finally, there is a great rigging feature in Blender: in *Pose* mode,
each bone of an armature behaves a bit like a standard object, and, as such,
can be constrained. Most constraints work well with both objects and bones,
but there are a few exceptions which are noted in the relevant constraints pages.

To learn more:

- Read about using constraints in object animation in the :doc:`Animation chapter </animation/index>`
- Read about using constraints in rigging in the :doc:`Armatures </rigging/posing>`


Available Constraints
=====================

.. figure:: /images/Constraints_Introduction_Adding_Constraint_Menu.jpg

   The Constraint Menu


There are several types of constraints. We can classify them into four families:


- `Motion Tracking`_
- `Transform Constraints`_
- `Tracking Constraints`_
- `Relationship Constraints`_


There are constraints that works with their *owner* object and others that need a second
object (the *target*) to work, sometimes of a specific type (e.g. a curve).
In this case targeted constraints are shown as a dark blue dashed line drawn in the 3D view
between the owner and target objects.


Motion Tracking
---------------

.. TODO: document

- Camera Solver
- Object Solver
- Follow Track


Transform Constraints
---------------------

These constraints directly control/limit the transform properties of its owner,
either absolutely or relatively in terms of its target properties.


:doc:`Copy Location </rigging/constraints/transform/copy_location>`
   Copies the location of the target (with an optional offset) to the owner, so that both move together.
:doc:`Copy Rotation </rigging/constraints/transform/copy_rotation>`
   Copies the rotation of the target (with an optional offset) to the owner, so that both rotate together.
:doc:`Copy Scale </rigging/constraints/transform/copy_scale>`
   Copies the scale of the target (with an optional offset) to the owner, so that both scale together.
:doc:`Copy Transforms </rigging/constraints/transform/copy_transforms>`
   Copies the transforms of the target to the owner, so that both transform together.
:doc:`Limit Distance </rigging/constraints/transform/limit_distance>`
   Limits the position of the owner, so that it is nearer/further/exactly at the specified distance from the target.
:doc:`Limit Location </rigging/constraints/transform/limit_location>`
   Limits the owner's location inside a given range.
:doc:`Limit Rotation </rigging/constraints/transform/limit_rotation>`
   Limits the owner's rotation inside a given range.
:doc:`Limit Scale </rigging/constraints/transform/limit_scale>`
   Limits the owner's scale inside a given range.
:doc:`Transformation </rigging/constraints/transform/transformation>`
   Uses a property of the target (location, rotation or scale),
   to control a property (the same or a different one) of the owner.
:doc:`Maintain Volume </rigging/constraints/transform/maintain_volume>`
   Maintains the volume of a bone or an object.


Tracking Constraints
--------------------

These constraints try, in various ways,
to adjust their owner's properties so that it "points at" or "follows" the target.

:doc:`Clamp To </rigging/constraints/tracking/clamp_to>`
   Clamps the owner to a given curve target.
:doc:`Damped Track </rigging/constraints/tracking/damped_track>`
   Constrains one local axis of the owner to always point towards Target.
:doc:`Inverse Kinematics </rigging/constraints/tracking/ik_solver>`
   Bones only. Creates a chain of bones controlled by the target, using inverse kinematics.
:doc:`Locked Track </rigging/constraints/tracking/locked_track>`
   The owner is tracked to the given target, but with a given axis' orientation locked.
:doc:`Spline IK </rigging/constraints/tracking/spline_ik>`
   Aligns a chain of bones along a curve.
:doc:`Stretch To </rigging/constraints/tracking/stretch_to>`
   Stretch the owner to the given target.
:doc:`Track To </rigging/constraints/tracking/track_to>`
   The owner is tracked to the given target.


Relationship Constraints
------------------------

These are "misc" constraints.


:doc:`Action </rigging/constraints/relationship/action>`
   The owner executes an action, controlled by the target (driver).
:doc:`Child Of </rigging/constraints/relationship/child_of>`
   Allows a selective application of the effects of parenting to another object.
:doc:`Floor </rigging/constraints/relationship/floor>`
   Uses the target's position (and optionally rotation)
   to define a "wall" or "floor" that the owner won't be able to cross.
:doc:`Follow Path </rigging/constraints/relationship/follow_path>`
   The owner moves along the curve target.
:doc:`Pivot </rigging/constraints/relationship/pivot>`
   Allows the owner to rotate around a target object.
:doc:`Rigid Body Joint </rigging/constraints/relationship/rigid_body_joint>`
   Creates a rigid joint (like a hinge) between the owner and the "target" (child object).
:doc:`Shrinkwrap </rigging/constraints/relationship/shrinkwrap>`
   Limits the location of the owner at *the surface* (among other options) of the target.
