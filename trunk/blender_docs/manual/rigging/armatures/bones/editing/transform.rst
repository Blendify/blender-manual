
*********
Transform
*********

Transform
=========

.. figure:: /images/rigging_armatures_editing_properties_transform-panel.png
   :align: right
   :figwidth: 165px

   The Transform panel for armatures in Edit Mode.

We will not detail here the various transformations of bones, nor things like axis locking, pivot points, and so on,
as they are common to most object editing, and already described
:doc:`here </editors/3dview/object/transform/control/index>`
(note however, that some options, like snapping, do not seem to work, even though they are available...).
The same goes for mirroring,
as it is nearly the same as with :doc:`mesh editing </modeling/meshes/editing/transform/mirror>`.
Just keep in mind that bones' roots and tips behave more or less like meshes' vertices,
and bones themselves act like edges in a mesh.

As you know, bones can have two types of relationships: They can be parented,
and in addition connected. Parented bones behave in *Edit Mode* exactly as if they
had no relations. They can be grabbed, rotated, scaled, etc.
a parent bone without affecting its descendants. However,
connected bones must always have parent's tips connected to child's roots,
so by transforming a bone, you will affect all its connected parent/children/siblings.

Finally, you can edit in the *Transform* panel in the Properties region
the positions and radius of both joints of the active selected bone,
as well as its :ref:`roll rotation <armature-bone-roll>`.


Radius and Scaling in Envelope Visualization
--------------------------------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode, Envelope visualization
   | Menu:     :menuselection:`Armature --> Transform --> Scale`
   | Hotkey:   :kbd:`S`


When bones are displayed using *Octahedron*, *Stick* or *B-Bone* visualizations,
scaling will behave as expected, similar to scaling mesh objects.
When bones are displayed using *Envelope* visualization,
scaling will have a different effect: it will scale the radius of the selected bones's joints.
(see: :doc:`skinning part </rigging/armatures/skinning/index>`).
As you control only one value (the radius), there is no axis locking here.
And as usual, with connected bones, you scale at the same time the radius
of the parent's tip and of the children's roots.

.. list-table::
   Scaling of a bone in *Octahedron* and *Envelope* visualizations.

   * - .. figure:: /images/rigging_armatures_bones_selecting_single-bone.png
          :width: 320px

          A single selected bone...

     - .. figure:: /images/rigging_armatures_editing_properties_scaling-bone-radius-2.png
          :width: 320px

          ...Scaled in Octahedron visualization.

   * - .. figure:: /images/rigging_armatures_editing_properties_scaling-bone-radius-3.png
          :width: 320px

          A single selected bone...

     - .. figure:: /images/rigging_armatures_editing_properties_scaling-bone-radius-4.png
          :width: 320px

          ...Scaled in Envelope visualization. Its length remains the same, but its joints' radius are bigger.


Note that when you resize a bone (either by directly scaling it,
or by moving one of its joints), Blender automatically adjusts the end-radii of its envelope
proportionally to the size of the modification. Therefore,
it is advisable to place all the bones first, and only then edit these properties.


ScaleB and Envelope
-------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Hotkey:   :kbd:`Ctrl-Alt-S`


:kbd:`Ctrl-Alt-S` activates a transform tool that is specific to armatures.
It has different behavior depending on the active visualization, as explained below:

In *Envelope* visualization, it allows you to edit the influence of the selected bones
(their *Distance* property, see the :doc:`skinning part </rigging/armatures/skinning/index>`) --
as with the "standard" scaling with this visualization (see the previous section),
this is an one-value property, so there is no axis locking and such.

.. list-table:: Envelope scaling example.

   * - .. figure:: /images/rigging_armatures_editing_properties_scaling-bone-radius-3.png
          :width: 320px

          A single bone selected in Envelope visualization.

     - .. figure:: /images/rigging_armatures_editing_properties_scaling-bone-radius-5.png
          :width: 320px

          Its envelope scaled with :kbd:`Ctrl-Alt-S`.


In the other visualizations, it allows you to edit the "bone size".
This seems to only have a visible effect in *B-Bone* visualization,
but is available also with *Octahedron* and *Stick*...
This tool in this situation has another specific behavior:
While with other transform tools, the "local axes" means the object's axes,
here they are the bone's own axes (when you lock to a local axis,
by pressing the relevant key twice, the constraint is applied along the selected bone's local axis,
not the armature object's axis).

.. list-table:: "Bone size" scaling example.

   * - .. figure:: /images/rigging_armatures_editing_properties_scaling-bone-size-1.png
          :width: 200px

          A single "default size" bone selected in B-Bone visualization.

     - .. figure:: /images/rigging_armatures_editing_properties_scaling-bone-size-2.png
          :width: 200px

          Its size scaled with :kbd:`Ctrl-Alt-S`.

     - .. figure:: /images/rigging_armatures_editing_properties_scaling-bone-size-3.png
          :width: 200px

          The same armature in Object Mode and B-Bone visualization, with Bone.004's size scaled up.


.. _armature-bone-roll:

Bone Roll
=========

In *Edit Mode*, you can control of the bones roll
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
It allows you to switch the direction of the selected bones (i.e.
their root will become their tip, and vice versa).

Switching the direction of a bone will generally break the chain(s) it belongs to.
However, if you switch a whole (part of a) chain, the switched bones will still be parented/connected,
but in "reversed order". See the Fig. :ref:`fig-rig-properties-switch`.

.. _fig-rig-properties-switch:

.. list-table::
   Switching example.

   * - .. figure:: /images/rigging_armatures_editing_properties_switch-direction-1.png
          :width: 320px

          An armature with one selected bone, and one selected chain of three bones, just before switching.

     - .. figure:: /images/rigging_armatures_editing_properties_switch-direction-2.png
          :width: 320px

          The selected bones have been switched. Bone.005 is no more connected nor parented to anything.
          The chain of switched bones still exists, but reversed (Now Bone.002 is its root, and Bone is its tip).
          Bone.003 is now a free bone.
