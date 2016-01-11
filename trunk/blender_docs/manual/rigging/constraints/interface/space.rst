
*****
Space
*****

Constraints need a frame of reference in order to function.
This frame of reference is called the "space" of the constraint.
Choosing one space vs. another will change this frame of reference
and substantially alter the behavior of a constraint.

To understand how changing the space will change the behavior of the constraint,
consider experimenting with two empties.
Make sure they display as arrows so that you can see the local axes for each empty.
Make sure to size one empty a little larger than the other so that they are both always visible
even if directly on top of each other.
Then add a constraint to one empty that targets the other and experiment thoroughly by
moving, rotating and scaling the target in many different ways.

.. figure:: /images/rigging_constraints_interface_space.png

   This constraint is set to use World Space as the frame of reference for both
   its Target Space and its Owner Space.

Target Space & Owner Space
==========================

The space used to evaluate the target of the constraint is called the Target Space.
The space used to evaluate the constrained object (the object that owns the constraint) is called the owner space.
Hover over the space drop-down box (or boxes) to learn whether it affects the space of the target
or the space of the owner.

Some constraints don't use Target or Owner space, so there won't be a drop-down box.
Some constraints use only Target or only Owner space, so there will only be one drop-down box.
Some constraints (like the Copy Location constraint above) use both Target AND Owner space,
so there will be two drop-down boxes.

When a constraint uses both Target and Owner space,
the Target and Owner can be any combination of space types.

Space Types
===========

World Space
   In this space type the world is the frame of reference for the object (or bone).
   Location is relative to the world origin.
   Rotation and Scale are oriented to the world axes.
   Transformations to the object, the object's parent and any other constraints
   higher up in the constraint stack are all taken into account. 

Local Space
   In this space type the parent of the object (or bone) is the frame of reference.
   Location is relative to the parent object origin.
   Rotation and Scale are oriented to the parent object axes.
   Only transformations to the object istelf are taken into account. Transformations to the object's parent and
   any other constraints higher up in the constraint stack are NOT taken into account.

Local With Parent (bones only)
   The bone properties are evaluated in its own local space,
   *including* the transformations due to a possible parent relationship
   (i.e. due to the chain's transformations above the bone).

Pose Space (bones only)
   The bone properties are evaluated in the armature object local space
   (i.e. independently from the armature transformations in *Object* mode).
   Hence, if the armature object has null transformations,
   *Pose Space* will have the same effect as *World Space*.