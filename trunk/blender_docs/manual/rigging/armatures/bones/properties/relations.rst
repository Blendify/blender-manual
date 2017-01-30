
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

.. admonition:: Reference
   :class: refbox

   | Mode:     Pose Mode

.. figure:: /images/rigging_posing_visualization_bone-group-list.png

   The Bone Group data-ID.

To assign a selected bone to a given bone group use the *Bone Group* data-ID.


Object Children
===============

.. admonition:: Reference
   :class: refbox

   | Mode:     Pose Mode

Relative Parenting
   ToDo.


.. _bone_relations_parenting:

Parenting
=========

Parent
   A data-ID to select the bone to set as a parent.
Connected
   The *Connected* checkbox set the head of the bone to be connected with its parent root.


Transformations
---------------

Bones relationships have effects on transformations behavior.

By default, children bones inherit:

- Their parent position, with their own offset of course.
- Their parent rotation (i.e. they keep a constant rotation relatively to their parent).
- Their parent scale, here again with their own offset.

.. list-table::
   Examples of transforming parented/connected bones.

   * - .. figure:: /images/rigging_posing_editing_bones-relationships-1.png
          :width: 200px

          The armature in its rest position.

     - .. figure:: /images/rigging_posing_editing_bones-relationships-2.png
          :width: 200px

          Rotation of a root bone.

     - .. figure:: /images/rigging_posing_editing_bones-relationships-3.png
          :width: 200px

          Scaling of a root bone.


Exactly like standard children objects. You can modify this behavior on a per-bone basis,
using the Relations panel in the *Bones* tab:

.. figure:: /images/rigging_armatures_bones_properties_relations-panel.png

   Relations panel in Pose Mode.


Inherit Rotation
   When disabled, this will "break" the rotation relationship to the bone's parent.
   This means that the child will keep its rotation in the armature object space when its parent is rotated.
Inherit Scale
   When disabled, this will "break" the scale relationship to the bone's parent.

These inheriting behaviors propagate along the bones' hierarchy.
So when you scale down a bone, all its descendants are by default scaled down accordingly.
However, if you set one bone's *Inherit Scale* or *Inherit Rotation*
property on in this "family", this will break the scaling propagation, i.e. this bone *and
all its descendants* will no longer be affected when you scale one of its ancestors.

.. list-table::
   Examples of transforming parented/connected bones with Inherit Rotation disabled.

   * - .. figure:: /images/rigging_posing_editing_bones-relationships-4.png
          :width: 200px

          The yellow outlined Inherit Rotation disabled bone in the armature.

     - .. figure:: /images/rigging_posing_editing_bones-relationships-5.png
          :width: 200px

          Rotation of a bone with an Inherit Rotation disabled bone among its descendants.

     - .. figure:: /images/rigging_posing_editing_bones-relationships-6.png
          :width: 200px

          Scaling of a bone with an Inherit Rotation disabled bone among its descendants.


Connected bones have another specificity: they cannot be translated. Indeed,
as their root must be at their parent's tip, if you do not move the parent,
you cannot move the child's root, but only its tip, which leads to a child rotation.
This is exactly what happens, when you press :kbd:`G` with a connected bone selected,
Blender automatically switches to rotation operation.

Bones relationships also have important consequences on how selections of multiple bones
behave when transformed. There are many different situations which may not be included on this list,
however, this should give a good idea of the problem:

- Non-related selected bones are transformed independently, as usual.

.. _fig-rig-pose-edit-scale:

.. figure:: /images/rigging_posing_editing_bones-relationships-7.png
   :width: 320px

   Scaling bones, some of them related.


- When several bones of the same "family" are selected,
  *only* the "most parent" ones are really transformed --
  the descendants are just handled through the parent relationship process, as if they were not selected
  (see Fig. :ref:`fig-rig-pose-edit-scale` the third tip bone,
  outlined in yellow, was only scaled down through the parent relationship,
  exactly as the unselected ones, even though it is selected and active.
  Otherwise, it should have been twice smaller!).
- When connected and unconnected bones are selected,
  and you start a grab operation, only the unconnected bones are affected.
- When a child connected hinge bone is in the selection,
  and the "most parent" selected one is connected, when you press :kbd:`G`,
  nothing happens, because Blender remains in grab operation, which of course has no effect on a connected bone.

So, when posing a chain of bones, you should always edit its elements from the root bone to the tip bone.
This process is known as *forward kinematics* (FK).
We will see in a :ref:`later page <bone-constraints-inverse-kinematics>`
that Blender features another pose method,
called *inverse kinematics* (IK), which allows you to pose a whole chain just by moving its tip.

.. note::

   This feature is somewhat extended/completed by
   the :doc:`pose library </rigging/armatures/properties/pose_library>` tool.
