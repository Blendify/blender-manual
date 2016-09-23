.. index:: pair: Constraint; Copy Rotation

************************
Copy Rotation Constraint
************************

The *Copy Rotation* constraint forces its owner to match the rotation of its target.


Options
=======

.. figure:: /images/rigging_constraints_transform_copy-rotation.png

   Copy Rotation panel.


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

X, Y, Z
   These buttons control which axes are constrained.

   Invert
      The *Invert* buttons invert their respective rotation values.

Offset
   When enabled, this control allows the owner to be rotated (using its current transform properties),
   relative to its target's orientation.

Space
   This constraint allows you to choose in which space to evaluate its owner's and target's transform properties.

.. vimeo:: 171073854
