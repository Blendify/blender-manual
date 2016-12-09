
*********
Selecting
*********

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Bone` panel


You can select and edit bones of armatures in *Edit Mode* and in *Pose Mode*.
Here, we will see how to select bones in *Edit Mode*.
Selecting bones in *Pose Mode* is similar to selecting in *Edit Mode*
with a few specific differences that will be detailed in the :doc:`posing part </rigging/armatures/posing/editing>`.

Similar to :doc:`vertices/edges selection </modeling/meshes/selecting/introduction>` in meshes,
there are two ways to select whole bones in *Edit Mode*:

- Directly, by selecting the bone's body.
- Selecting both of its joints (root and tip).

This is an important point to understand,
because selecting bones' joints only might lead to non-obvious behavior,
with respect to which bone you actually select, see the.

Note that unlike the mesh draw type the armature draw type has no effect on selection
behavior. In other words,
you can select a bone's joint or body the same way regardless of the bone visualization chosen.


Selecting bone joints
=====================

To select bones' joints you have the :doc:`standard selection </editors/3dview/object/selection>` methods.


Inverse selection
-----------------

As stated above, you have to remember that these selection tools are for bones' joints only,
not the bones' bodies.

For example, the *Inverse* selection option :kbd:`Ctrl-I`
inverts the selection of bones' joints, not of bones (see *Inverse selection*).

Remember that a bone is selected only if both its joints are selected. So,
when the selection status of bones' joints is inverted, a new set of bones is selected.

.. list-table:: Inverse selection.

   * - .. figure:: /images/rigging_armatures_bones_selecting_two-bones.png
          :width: 320px

          Two bones selected.

     - .. figure:: /images/rigging_armatures_bones_selecting_three-ends.png
          :width: 320px

          The result of the inverse selection :kbd:`Ctrl-I`
          the bones joints selection has been inverted, and not the bones selection.


Selecting connected bone joints
-------------------------------

Another example is: when you select the root of a bone connected to its parent,
you also implicitly select the tip of its parent (and vice versa).

.. note::

   Remember that when selecting bones' joints,
   the tip of the parent bone is the "same thing" as the root of its children bones.


Selecting Bones
===============

By :kbd:`RMB` -clicking on a bone's body, you will select it
(and hence you will implicitly select its root and tip).

Using :kbd:`Shift-RMB`, you can add to/remove from the selection.

You also have some *advanced selection* options, based on their relations.

You can select at once all the bones in the chain which the active (last selected)
bone belongs to by using the *linked selection* tool, :kbd:`L`.

.. list-table::
   Linked bones selection

   * - .. figure:: /images/rigging_armatures_bones_selecting_single-bone.png
          :width: 320px

          A single selected bone.

     - .. figure:: /images/rigging_armatures_bones_selecting_whole-chain.png
          :width: 320px

          Its whole chain selected with :kbd:`L`.


Parent and Child
----------------

You can deselect the active bone and select its immediate parent or
one of its children using respectively :menuselection:`Select --> Parent`,
:kbd:`[` or :menuselection:`Select --> Child`, :kbd:`]`.
If you prefer to keep the active bone in the selection,
use :menuselection:`Select --> Extend Parent`, :kbd:`Shift-[` or
:menuselection:`Select --> Extend Child`, :kbd:`Shift-]`.


Deselecting connected bones
---------------------------

There is a subtlety regarding connected bones.

When you have several connected bones selected, if you deselect one bone,
its tip will be deselected, but not its root, if it is also the tip of another selected bone.

To understand this, look at Fig. :ref:`fig-rig-bone-select-deselect`.

.. _fig-rig-bone-select-deselect:

.. list-table:: Bone deselection in a selected chain.

   * - .. figure:: /images/rigging_armatures_bones_selecting_whole-chain.png
          :width: 320px

          A selected chain.

     - .. figure:: /images/rigging_armatures_bones_selecting_two-bones.png
          :width: 320px

          Two selected bones.


After :kbd:`Shift-RMB` -clicking "Bone.003":

- "Bone.003" 's tip (which is same as "Bone.004" 's root) is deselected.
- "Bone" is "Bone.003" 's parent. Therefore "Bone.003" 's root is same as the tip of "Bone".
  Since "Bone" is still selected, its tip is selected. Thus the root of "Bone.003" remains selected.
