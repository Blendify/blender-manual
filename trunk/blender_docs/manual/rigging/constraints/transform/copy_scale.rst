
*********************
Copy Scale Constraint
*********************

Description
===========

The *Copy Scale* constraint forces its owner to have the same scale as its target.


 .. warning::
   Here we talk of **scale**, not of **size**! Indeed, you can have two
   objects, one much bigger than the other, and yet both of them have the same
   scale. This is also true with bones: in *Pose* mode, they all
   have a unitary scale when they are in rest position, represented by their
   visible length.


Options
=======

.. figure:: /images/Constraints-Transform-CopyScale.jpg
   :width: 307px

   Copy Scale panel


Target
   This constraint uses one target,
   and is not functional (red state) when it has none.

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
   These buttons control along which axes the scale is constrained - by default,
   it is enabled along all three.

Offset
   When enabled, this control allows the owner to be scaled (using its current transform properties),
   relatively to its target's scale.

Space
   This constraint allows you to choose in which space to evaluate its owner's and target's transform properties.

