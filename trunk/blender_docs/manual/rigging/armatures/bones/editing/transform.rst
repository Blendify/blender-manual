
*********
Transform
*********

Transform
=========

.. figure:: /images/rigging_armatures_bones_editing_transform_panel.png
   :align: right
   :figwidth: 165px

   The Transform panel for armatures in Edit Mode.

We will not detail here the various transformations of bones, nor things like axis locking, pivot points, and so on,
as they are common to most object editing, and already described in the
:doc:`mesh section </editors/3dview/object/editing/transform/control/index>`.
The same goes for mirroring,
as it is nearly the same as with :doc:`mesh editing </modeling/meshes/editing/transform/mirror>`.
Just keep in mind that bones' roots and tips behave more or less like meshes' vertices,
and bones themselves act like edges in a mesh.

As you know, bones can have two types of relationships: They can be parented,
and in addition connected. Parented bones behave in *Edit Mode* exactly as if they
had no relations. They can be grabbed, rotated, scaled, etc. without affecting their descendants.
However, connected bones must always have parent's tips connected to child's roots,
so by transforming a bone, you will affect all its connected parent/children/siblings.

While with other transform tools, the "local axes" means the object's axes,
here they are the bone's own axes (when you lock to a local axis,
by pressing the relevant key twice, the constraint is applied along the selected bone's local axis,
not the armature object's axis).

Finally, you can edit in the *Transform* panel in the Properties region
the positions and radius of both joints of the active selected bone,
as well as its :ref:`roll rotation <armature-bone-roll>`.


Scale Radius
============

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Armature --> Transform --> Scale Radius`
   | Hotkey:   :kbd:`Alt-S`

You can alter the radius that a bone has by selecting the head, body or tail of a bone,
and then press :kbd:`Alt-S` and move the mouse left or right.
If the body is selected the mean radius will be scaled.
And as usual, with connected bones, you scale at the same time the radius
of the parent's tip and of the children's roots.

You can also alter the bone radius by selecting the tail or head of the bone you wish to alter,
then navigate to :menuselection:`Properties Editor --> Bone --> Deform --> Radius Section`
and entering new values for the *Tail* and *Head* number buttons.

.. list-table:: Bone Scale and Scale Radius comparison.

   * - .. figure:: /images/rigging_armatures_bones_selecting_single-bone.png
          :width: 320px

          A single selected bone in Octahedron visualization.

     - .. figure:: /images/rigging_armatures_bones_editing_transform_scaling-bone-radius-2.png
          :width: 320px

          After normal scale.

   * - .. figure:: /images/rigging_armatures_bones_editing_transform_scaling-bone-radius-3.png
          :width: 320px

          A single selected bone in Envelope visualization.

     - .. figure:: /images/rigging_armatures_bones_editing_transform_scaling-bone-radius-4.png
          :width: 320px

          After Scaled Radius. Its length remains the same, but its joints' radius are bigger.

Note that, when you resize a bone (either by directly scaling it, or by moving one of its joints),
Blender automatically adjusts the end-radii of its envelope proportionally to the size of the modification.
Therefore, it is advisable to place all the bones first, and only then edit their properties.


Scale Envelope Distance
=======================

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode and Pose Mode
   | Menu:     :menuselection:`Armature --> Transform --> Scale Envelope Distance`
   | Hotkey:   :kbd:`Ctrl-Alt-S`

You can alter the size of the Bone Envelope volume by clicking on the body of the bone you want to alter,
:kbd:`Ctrl-Alt-S` then drag your mouse left or right and the Bone Envelope volume will alter accordingly.

You can also alter the Bone Envelope volume by selecting the Bone you wish to alter and
then navigate to :menuselection:`Properties Editor --> Bone --> Deform --> Envelope --> Distance`
then enter a new value into it.

Altering the Bone Envelope volume does not alter the size of the bone just the range
within which it can influence vertices of child objects.

.. list-table:: Envelope scaling example.

   * - .. figure:: /images/rigging_armatures_bones_editing_transform_scaling-bone-radius-3.png
          :width: 320px

          A single bone selected in Envelope visualization.

     - .. figure:: /images/rigging_armatures_bones_editing_transform_scaling-bone-radius-5.png
          :width: 320px

          Its envelope distance scaled.

.. list-table:: "Bone size" scaling example.

   * - .. figure:: /images/rigging_armatures_bones_editing_transform_scaling-bone-size-1.png
          :width: 200px

          A single "default size" bone selected in B-Bone visualization.

     - .. figure:: /images/rigging_armatures_bones_editing_transform_scaling-bone-size-2.png
          :width: 200px

          Its envelope distance scaled.

     - .. figure:: /images/rigging_armatures_bones_editing_transform_scaling-bone-size-3.png
          :width: 200px

          The same armature in Object Mode and B-Bone visualization, with Bone.004's size scaled up.


Align Bones
===========

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Armature --> Transform --> Align Bones`
   | Hotkey:   :kbd:`Ctrl-Alt-A`

ToDo <2.72.


.. _armature-bone-roll:

Bone Roll
=========

In *Edit Mode*, you can control the bone roll
(i.e. the rotation around the Y axis of the bone).

However, after editing the armature, or when using :term:`euler rotation`,
you may want to set the bone roll.


Set Bone Roll
-------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Armature --> Bone Roll --> Set`
   | Hotkey:   :kbd:`Ctrl-R`

This is a transform mode where you can edit the roll of all selected bones.


Recalculate Bone Roll
---------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Armature --> Bone Roll --> Recalculate`
   | Hotkey:   :kbd:`Ctrl-N`

Axis Orientation
   Local Tangent
      Align roll relative to the axis defined by the bone and its parent.

      X, Z
   Global Axis
      Align roll to global X, Y, Z axis.

      X, Y, Z
   Active Bone
      Follow the rotation of the active bone.
   View Axis
      Set the roll to align with the view-port.
   Cursor
      Set the roll towards the 3D cursor.
Flip Axis
   Reverse the axis direction.
Shortest Rotation
   Avoids rolling the bone over 90 degrees from its current value.


Switch Direction
================

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Armature --> Switch Direction`, :menuselection:`Specials --> Switch Direction`
   | Hotkey:   :kbd:`Alt-F`

This tool is not available from the *Armature* menu,
but only from the *Specials* pop-up menu :kbd:`W`.
It allows you to switch the direction of the selected bones
(i.e. their root will become their tip, and vice versa).

Switching the direction of a bone will generally break the chain(s) it belongs to.
However, if you switch a whole (part of a) chain, the switched bones will still be parented/connected,
but in "reversed order". See the Fig. :ref:`fig-rig-properties-switch`.

.. _fig-rig-properties-switch:

.. list-table:: Switching example.

   * - .. figure:: /images/rigging_armatures_bones_editing_transform_switch-direction-1.png
          :width: 320px

          An armature with one selected bone, and one selected chain of three bones, just before switching.

     - .. figure:: /images/rigging_armatures_bones_editing_transform_switch-direction-2.png
          :width: 320px

          The selected bones have been switched. Bone.005 is no more connected nor parented to anything.
          The chain of switched bones still exists, but reversed (now Bone.002 is its root, and Bone is its tip).
          Bone.003 is now a free bone.
