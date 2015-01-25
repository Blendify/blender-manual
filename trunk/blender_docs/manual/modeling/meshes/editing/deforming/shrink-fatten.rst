
***************************
Shrink/Fatten Along Normals
***************************

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Panel:    *Mesh Tools* (*Editing* context)
   | Menu:     :menuselection:`Mesh --> Transform --> Shrink/Fatten Along Normals`
   | Hotkey:   :kbd:`Alt-S`


This tool translates selected vertices/edges/faces along their own normal
(perpendicular to the face), which, on "standard normal meshes", will shrink/fatten them.

This transform tool does not take into account the pivot point or transform orientation.


.. figure:: /images/ShrinkFlatten1.jpg
   :width: 200px

   mesh before shrink/flatten


.. figure:: /images/ShrinkFlatten2.jpg
   :width: 200px

   Inflated using a positive value


.. figure:: /images/ShrinkFlatten3.jpg
   :width: 200px

   Shrunk using a negative value


