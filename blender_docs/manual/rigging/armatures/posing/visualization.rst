..    TODO/Review: {{review|im=examples}}.

*************
Visualization
*************


Colors
======

In *Pose Mode*, the bones can have different colors,
following two different processes, controlled by the *Color* button
(*Armature* tab, *Edit Mode*):

- When it is disabled,
  bones are colored based on their "state" (i.e. if they use constraints, if they are posed, etc.).
- When it is enabled,
  bones are colored depending on which bone group they belong to (or as above if they belong to no group).

You can also mix both coloring methods, see :doc:`/rigging/armatures/properties/bone_groups`.


Coloring from Bone State
------------------------

This is the default and oldest way. There are six different color codes,
ordered here by precedence (i.e. the bone will be of the color of the topmost valid state):

.. hue rotation based on the bone solid.

- Gray: Default
- Blue Outline: Pose
- Green: Constraint
- Yellow: :doc:`IK Solver constraint </rigging/constraints/tracking/ik_solver>`.
- Orange: Targetless Solver constraint.


