
*********
Relations
*********

.. figure:: /images/rigging_armatures_bones_properties_relations-panel.png

   The Relations panel.

In this panel you can arrange sets of bones in different layers for easier manipulation.


Bone Layers
===========

.. admonition:: Reference
   :class: refbox

   | Mode:     Object, Edit and Pose Mode
   | Panel:    :menuselection:`Bone --> Relations`


Moving bones between layers
---------------------------

Obviously, you have to be in *Edit Mode* or *Pose Mode* to move bones between
layers. Note that as with objects, bones can lay in several layers at once,
just use the usual :kbd:`Shift-LMB` clicks... First of all,
you have to select the chosen bone(s)!

- In the Properties editor, use the "layer buttons" of each selected bone Relations panel (*Bones* tab)
  to control in which layer(s) it lays.
- In the *3D View* editor, use the menu :menuselection:`Armature --> Move Bone To Layer` or
  :menuselection:`Pose --> Move Bone To Layer` or press :kbd:`M` to show the usual pop-up layers menu.
  Note that this way, you assign the same layers to all selected bones.


.. _bone_relations_bone_group:

Bone Group
==========

.. figure:: /images/rigging_posing_visualization_bone-group-list.png

   The Bone Group data-ID.

To assign a selected bone to a given bone group use the *Bone Group* data-ID.
