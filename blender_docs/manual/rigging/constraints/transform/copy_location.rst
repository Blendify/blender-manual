
************************
Copy Location Constraint
************************

Description
===========

The *Copy Location* constraint forces its owner to have the same location as its
target.


 .. warning::

   Note that if you use such a constraint on a *connected* bone, it will have
   no effect, as it is the parent's tip which controls the position of your
   owner bone's root.


Options
=======

.. figure:: /images/Constraints-Transform-CopyLoc.jpg
   :width: 307px

   Copy Location panel


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
   These buttons control which axes (i.e. coordinates) are constrained - by default, all three ones are.

   Invert
      The *Invert* buttons invert their respective preceding coordinates.

Offset
   When enabled, this control allows the owner to be translated (using its current transform properties),
   relative to its target's position.

Space
   This constraint allows you to choose in which space to evaluate its owner's and target's transform properties.

