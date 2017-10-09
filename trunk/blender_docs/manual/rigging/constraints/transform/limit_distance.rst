.. _bpy.types.LimitDistanceConstraint:

*************************
Limit Distance Constraint
*************************

The *Limit Distance* constraint forces its owner to stay either further from,
nearer to, or exactly at a given distance from its target. In other words,
the owner's location is constrained either outside, inside,
or at the surface of a sphere centered on its target.

When you specify a (new) target, the *Distance* value is automatically set to
correspond to the distance between the owner and this target.

.. important::

   Note that if you use such a constraint on a *connected* bone, it will have
   no effect, as it is the parent's tip which controls the position of your
   owner bone's root.


Options
=======

.. figure:: /images/rigging_constraints_transform_limit-distance.png

   Limit Distance panel.

Target
   :ref:`ui-data-id` used to select the constraints target, and is not functional (red state) when it has none.
Distance
   This number button sets the limit distance, i.e. the radius of the constraining sphere.
Reset Distance
   When clicked, this small button will reset the *Distance* value,
   so that it corresponds to the actual distance between the owner and its target
   (i.e. the distance before this constraint is applied).

Clamp Region
   The *Limit Mode* select menu allows you to choose how to use the sphere
   defined by the *Distance* setting and target's center:

   Inside
      The owner is constrained *inside* the sphere.
   Outside
      The owner is constrained *outside* the sphere.
   Surface
      The owner is constrained *on the surface* of the sphere.

For Transform
   ToDo.

.. vimeo:: 171109014
