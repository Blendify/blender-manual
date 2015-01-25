
*************************
Limit Distance Constraint
*************************

Description
===========

The *Limit Distance* constraint forces its owner to stay either further from,
nearer to, or exactly at a given distance from its target. In other words,
the owner's location is constrained either outside, inside,
or at the surface of a sphere centered on its target.

When you specify a (new) target, the *Distance* value is automatically set to
correspond to the distance between the owner and this target.


 .. warning::

   Note that if you use such a constraint on a *connected* bone, it will have
   no effect, as it is the parent's tip which controls the position of your
   owner bone's root.


Options
=======

.. figure:: /images/25-Manual-Constraints-Transform-LimitDist.jpg
   :width: 304px

   Limit Distance panel


Target
   This constraint uses one target, and is not functional (red state) when it has none.

   Bone
      If *Target* is an *Armature*,
      a new field is displayed offering the optional choice to set an individual bone as *Target*.

      Head/Tail
         If a *Bone* is set as *Target*,
         a new field is displayed offering the optional choice of where along this bone the target point lies.
   Vertex Group
      If *Target* is a *Mesh*,
      a new field is displayed offering the optional choice to set a *Vertex Group* as target.

Distance
   This numeric field sets the limit distance, i.e. the radius of the constraining sphere.
Reset Distance
   When clicked, this small button will reset the *Distance* value,
   so that it corresponds to the actual distance between the owner and its target (i.e.
   the distance before this constraint is applied).

Clamp Region
   The *Limit Mode* drop-down menu allows you to choose how to use the sphere defined by the
   *Distance* setting and target's center:

   Inside (default)
      The owner is constrained *inside* the sphere.
   Outside
      The owner is constrained *outside* the sphere.
   Surface
      The owner is constrained *on the surface* of the sphere.


