
*******************
Track To Constraint
*******************

Description
===========

The *Track To* constraint applies rotations to its owner,
so that it always points a given "To" axis towards its target,
with another "Up" axis permanently maintained as much aligned with the global Z axis
(by default) as possible. This tracking is similar to the "billboard tracking" in 3D
(see note below).

This is the preferred tracking constraint,
as it has a more easily controlled constraining mechanism.

This constraint shares a close relationship to the
:doc:`Inverse Kinematics constraint </rigging/constraints/tracking/ik_solver>` in some ways.
It is very important in rig design, and you should be sure to read and understand the
:doc:`2.49 BSoD tracking tutorial </ls/animation/techs/armatures/bsod/tracking>`,
as it centers around the use of both of these constraints.

.. tip:: Billboard tracking

   The term "billboard" has a specific meaning in real-time CG programming (i.e. video games!),
   where it is used for plane objects always facing the camera (they are indeed "trackers",
   the camera being their "target"). Their main usage is as support for tree or mist textures:
   if they were not permanently facing the camera, you would often see your trees squeezing to nothing,
   or your mist turning into a millefeuille paste, which would be funny but not so credible.


Options
=======

.. figure:: /images/25-Manual-Constraints-Tracking-TrackTo.jpg

   Track To panel


Targets
   This constraint uses one target, and is not functional (red state) when it has none.

   Bone
      When *Target* is an armature, a new field for a bone is displayed.
   Head/Tail
      When using a bone target, you can choose where along this bone the target point lies.
   Vertex Group
      When *Target* is a mesh, a new field is display where a vertex group can be selected.

To
   The tracking local axis (*Y* by default), i.e. the owner's axis to point at the target.
   The negative options force the relevant axis to point away from the target.
Up
   The "upward-most" local axis (*Z* by default), i.e. the owner's axis to be aligned (as much as possible)
   with the global Z axis (or target Z axis, when the *Target* button is enabled).
Target Z
   By default, the owner's *Up* axis is (as much as possible) aligned with the global Z axis,
   during the tracking rotations. When this button is enabled, the *Up* axis will be (as much as possible)
   aligned with the target's local Z axis?

Space
   This constraint allows you to choose in which space to evaluate its owner's and target's transform properties.


 .. warning::

   If you choose the same axis for *To* and *Up*, the
   constraint will not be functional anymore (red state).

