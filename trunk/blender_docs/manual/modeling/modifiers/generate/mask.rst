
*************
Mask Modifier
*************

The Mask modifier allows vertices of an object to be hidden dynamically based on vertex groups.


Options
=======

Mode
   The Mask modifier can hide parts of a mesh based on two different modes, selectable from this drop-down list.


   Vertex Group
      .. figure:: /images/modifier-mask-vg.jpg
         :width: 350px

         Vertex Group


      When the *Vertex Group* option is selected,
      all vertices belonging to the chosen Vertex Group (with a weight above zero) will be visible,
      and all other vertices will be hidden.

   Armature
      .. figure:: /images/modifier-mask-a.jpg
         :width: 350px

         Armature


      When in Pose Mode,
      vertices belonging to the Vertex Group associated with the active bone (same names) will be visible.
      Vertices not in that group will be hidden.

Inverse
   Normally, vertices belonging to the selected Vertex Group (or group associated with the active pose-bone)
   will be shown. The *Invert* toggle allows you to reverse this behavior, instead showing all vertices
   which do not belong to the Vertex Group, and hiding those that do.
