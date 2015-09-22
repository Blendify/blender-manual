
*************
Mask Modifier
*************

The Mask modifier allows vertices of an object to be hidden dynamically based on vertex groups.


Options
=======

Mode
   The Mask modifier can hide parts of a mesh based on two different modes, selectable from this drop-down list.


   Vertex Group
      .. figure:: /images/Modifiers-Mask-VG.jpg
         :width: 350px

         Vertex Group


      When the *Vertex Group* option is selected,
      all vertices belonging to the chosen Vertex Group will be visible,
      and all vertices which do not belong to that group will be hidden.

   Armature
      .. figure:: /images/Modifiers-Mask-A.jpg
         :width: 350px

         Armature


      When in Pose Mode,
      vertices belonging to the Vertex Group associated with the active bone (same names) will be visible.
      Vertices not in that group will be hidden.

Inverse
   Normally, vertices belonging to the selected Vertex Group (or group associated with the active pose-bone)
   will be shown. The *Invert* toggle allows you to reverse this behavior, instead showing all vertices
   which do not belong to the Vertex Group, and hiding those that do.

.. warning::
   The Mask modifier only takes into account whether a vertex is part of the group or not,
   the weight is not taken into account.

   Thus, a vertex with a weight of ``0.0`` will be treated the same as a vertex with a weight of ``1.0``,
   because even though it has no weight it is still a member of that group.


