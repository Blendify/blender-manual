
**************************
Copy Transforms Constraint
**************************

Description
===========

The *Copy Transforms* constraint forces its owner to have the same transforms as its
target.


Options
=======

.. figure:: /images/Constraints-Transform-CopyTransforms.jpg
   :width: 304px

   Copy Transforms panel


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
Space
   This constraint allows you to choose in which space to evaluate its owner's and target's transform properties.

