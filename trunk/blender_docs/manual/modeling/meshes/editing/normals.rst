*******
Normals
*******

Editing
=======

As normals are mainly a face "sub-product", we describe their few options here also.

See :doc:`Smoothing </modeling/meshes/smoothing>` for additional information on working with face normals.


Flip Direction
--------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Mesh --> Normals --> Flip` or :menuselection:`Specials --> Flip Normals`
   | Hotkey:   :menuselection:`[W] --> Flip Normals` }


Well, it will just reverse the normals direction of all selected faces.
Note that this allows you to precisely control the direction (**not the orientation**,
which is always perpendicular to the face) of your normals, as only selected ones are flipped.


Recalculate Normals
-------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Mesh --> Normals --> Recalculate Outside` and
     :menuselection:`Mesh --> Normals --> RecalculateInside`
   | Hotkey:   :kbd:`Ctrl-N` and *ctrl*


These commands will recalculate the normals of selected faces so that they point outside
(respectively inside) the volume that the face belongs to.
This volume do not need to be closed. In fact, this means that the face of interest must be
adjacent with at least one non-coplanar other face. For example,
with a *Grid* primitive, neither *Recalculate Outside* nor
*Recalculate Inside* will never modify its normals...
