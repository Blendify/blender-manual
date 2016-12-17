
*******************
Track To Constraint
*******************

The *Track To* constraint applies rotations to its owner,
so that it always points a given "To" axis towards its target,
with another "Up" axis permanently maintained as much aligned with the global Z axis
(by default) as possible. This tracking is similar to the "billboard tracking" in 3D
(see note below).

This is the preferred tracking constraint,
as it has a more easily controlled constraining mechanism.

This constraint shares a close relationship to the
:doc:`Inverse Kinematics constraint </rigging/constraints/tracking/ik_solver>` in some ways.

.. tip:: Billboard tracking

   The term "billboard" has a specific meaning in real-time CG programming (i.e. video games!),
   where it is used for plane objects always facing the camera (they are indeed "trackers",
   the camera being their "target"). Their main usage is as support for tree or mist textures:
   if they were not permanently facing the camera, you would often see your trees squeezing to nothing,
   or your mist turning into a millefeuille paste, which would be funny but not so credible.


Options
=======

.. figure:: /images/rigging_constraints_tracking_track-to.png

   Track To panel.


Targets
   This constraint uses one target, and is not functional (red state) when it has none.

   Bone
      When *Target* is an armature, a new field for a bone is displayed.
   Head/Tail
      When using a bone target, you can choose where along this bone the target point lies.
   Follow Bendy Bones
      When using a b-bone as a target, click on this button to make the target point between head and tail follow the
      length of the B-Spline curve instead of the absolute distance of the head and tail of the original b-bone.
   Vertex Group
      When *Target* is a mesh, a new field is display where a vertex group can be selected.
To
   The tracking local axis, i.e. the owner's axis to point at the target.
   The negative options force the relevant axis to point away from the target.
Up
   The "upward-most" local axis, i.e. the owner's axis to be aligned (as much as possible)
   with the global Z axis (or target Z axis, when the *Target* button is enabled).
Target Z
   By default, the owner's *Up* axis is (as much as possible) aligned with the global Z axis,
   during the tracking rotations. When this button is enabled, the *Up* axis will be (as much as possible)
   aligned with the target's local Z axis?

Space
   This constraint allows you to choose in which space to evaluate its owner's and target's transform properties.

.. warning::

   If you choose the same axis for *To* and *Up*, the constraint will not be functional anymore (red state).

.. vimeo:: 171283522
