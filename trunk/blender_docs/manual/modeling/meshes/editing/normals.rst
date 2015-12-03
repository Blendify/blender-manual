*******
Normals
*******

Introduction
============

Displaying Normals
==================

To show the normals of the faces, you can open the Transform Panel,
find the Mesh display tab, and click on the small cube without the orange dot.
You can also change the height of the axis that points the direction of the normal. The default is ``0.1``.

.. figure:: /images/modeling_meshes_editing_normals_display.png

   Normal Display Options



.. _modeling-meshes-editing-normals_editing:

Editing
=======

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
