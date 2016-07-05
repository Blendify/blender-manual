
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
with a few specific differences that will be detailed in the :doc:`posing part </rigging/posing/editing>`.

Similar to :doc:`vertices/edges selection </modeling/meshes/selecting/introduction>` in meshes,
there are two ways to select whole bones in *Edit Mode*:

- directly, by selecting the bone's body
- selecting both of its end points (root and tip)

This is an important point to understand,
because selecting bones' ends only might lead to non-obvious behavior,
with respect to which bone you actually select, see the.

Note that unlike the mesh draw type the armature draw type has no effect on selection
behavior. In other words,
you can select a bone's end or body the same way regardless of the bone visualization chosen.


Selecting bones' ends
=====================

To select bones' ends you have the standard selection methods.

.. list-table::
   :header-rows: 1

   * - action
     - shortcut
     - menu
     - mouse
   * - Select a bone's end
     -
     -
     - :kbd:`RMB` -click on it
   * - Add or Remove from the current selection
     -
     -
     - :kbd:`Shift-RMB`
   * - (De)select the ends of all bones
     - :kbd:`A`
     - :menuselection:`Select --> Select/Deselect All`
     -
   * - Invert the current selection
     - :kbd:`Ctrl-I`
     - :menuselection:`Select --> Inverse`
     -
   * - Box selection tool activated
     - :kbd:`B`
     - :menuselection:`Select --> Border Select`
     -
   * - Box selection
     - | Click and drag :kbd:`LMB` the box around the ends you want to add to the current selection
       | Click and drag :kbd:`LMB` to remove from the current selection
       | release :kbd:`LMB` to validate
       | press :kbd:`Esc` or click :kbd:`RMB` to cancel
     -
     -
   * - Box selection tool deactivated
     - :kbd:`B` or :kbd:`Esc`
     -
     - :kbd:`RMB`
   * - Lasso selection
     - | Click and drag :kbd:`Ctrl-LMB` the lasso around the ends you want to add to the current selection
       | Click and drag :kbd:`Ctrl-Shift-LMB` to remove from the current selection
       | Release :kbd:`LMB` to validate
       | Hit :kbd:`Esc` or click :kbd:`RMB` to cancel
     -
     -


Inverse selection
-----------------

As stated above, you have to remember that these selection tools are for bones' ends only,
not the bones' bodies.

For example, the *Inverse* selection option :kbd:`Ctrl-I`
inverts the selection of bones' ends, not of bones (see *Inverse selection*).

Remember that a bone is selected only if both its ends are selected. So,
when the selection status of bones' ends is inverted, a new set of bones is selected.


.. list-table::
   Inverse selection

   * - .. figure:: /images/riggingboneselectexeditmodetwobones.jpg
          :width: 300px

          Two bones selected.

     - .. figure:: /images/riggingboneselectexeditmodethreeboneends.jpg
          :width: 300px

          The result of the inverse selection :kbd:`Ctrl-I` the bones ends selection has been inverted,
          and not the bones selection.


Selecting connected bones' ends
-------------------------------

Another example is: when you select the root of a bone connected to its parent,
you also implicitly select the tip of its parent (and vice versa).

.. note::

   Remember that when selecting bones' ends,
   the tip of the parent bone is the "same thing" as the root of its children bones.


Selecting Bones
===============

By :kbd:`RMB` -clicking on a bone's body, you will select it
(and hence you will implicitly select its root and tip).

To each selected bone corresponds a in the *Armature* tab.
These sub-panels contain settings for some of the bones' properties (regarding e.g.
relationships between bones, bones' influence on deformed geometry, etc.),
as we will see later.

Using :kbd:`Shift-RMB`, you can add to/remove from the selection.

You also have some *advanced selection* options, based on their relations.

You can select at once all the bones in the chain which the active (last selected)
bone belongs to by using the *linked selection* tool, :kbd:`L`.

.. list-table::
   Linked bones selection

   * - .. figure:: /images/riggingboneselectexeditmodewholebone.jpg
          :width: 300px

          A single selected bone.

     - .. figure:: /images/riggingboneselectexeditmodewholechain.jpg
          :width: 300px

          Its whole chain selected with :kbd:`L`.


You can deselect the active bone and select its immediate parent or 
one of its children using respectively 
:menuselection:`Select --> Select Parent`, :kbd:`[` or 
:menuselection:`Select --> Select Child`, :kbd:`]`. 
If you prefer to keep the active bone in the selection,
use :menuselection:`Select --> Extend Select Parent`, :kbd:`Ctrl-[` or 
:menuselection:`Select --> Extend Select Child`, :kbd:`Ctrl-]`.


Deselecting connected bones
---------------------------

There is a subtlety regarding connected bones.

When you have several connected bones selected, if you deselect one bone,
its tip will be deselected, but not its root, if it is also the tip of another selected bone.

To understand this, look at Fig. :ref`fig-rig-bone-select-deselect`.

.. _fig-rig-bone-select-deselect:

.. list-table::
   Bone deselection in a selected chain

   * - .. figure:: /images/riggingboneselectexeditmodewholechain.jpg
          :width: 300px

          A selected chain.

     - .. figure:: /images/riggingboneselectexeditmodetwobones.jpg
          :width: 300px

          Two selected bones.


After :kbd:`Shift-RMB` -clicking "Bone.003":

- "Bone.003" 's tip (which is same as "Bone.004" 's root) is deselected
- "Bone" is "Bone.003" 's parent. Therefore "Bone.003" 's root is same as the tip of "Bone".
  Since "Bone" is still selected, its tip is selected. Thus the root of "Bone.003" remains selected.
