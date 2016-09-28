
******
Deform
******

.. figure:: /images/rigging_armatures_bones_properties_deform-panel.png

   The Deform panel.


In this panel you can set basic properties of the bones.

Turning the Deform option on and off,
includes the active bone in the Automatic Weight Calculation when the Mesh is
Parented to the Armature using the Armature Deform with the "With Automatic Weights" option.

Also it is worth noting that by turning off a bone's deform option, makes it not influence the mesh at all,
overriding any weights that it might have been assigned before; It mutes its influence.


Todo: merge the following paragraphs.

Bones Rigidity
==============

Even though bones are rigid (i.e. behave as rigid sticks),
they are made out of *segments*. *Segments* are small,
rigid linked elements that can rotate between each other. By default,
each new bone has only one segment and as such it cannot "bend" along its length.
It is a rigid bone.

You can see these segments in *Object Mode* and in *Pose Mode*,
and only if bones are visualized as *B-bones*;
while in *Edit Mode* bones are always drawn as rigid sticks.
Note that in the special case of a single bone,
you cannot see these segments in *Object Mode*, because they are aligned.

.. list-table::

   * - .. _fig-rig-bone-intro-bbone:

       .. figure:: /images/rigging_armatures_bones_introduction_b-bones-1.png
          :width: 320px

          An armature of B-Bones, in Edit Mode.

     - .. figure:: /images/rigging_armatures_bones_introduction_b-bones-2.png
          :width: 320px

          The Bézier curve superposed to the chain, with its handles placed at bones' ends.

   * - .. _fig-rig-bone-intro-same:

       .. figure:: /images/rigging_armatures_bones_introduction_b-bones-3.png
          :width: 320px

          The same armature in Object Mode.

     - ..


When you connect bones to form a :ref:`chain <armature-bone-chain>`,
Blender calculates a Bézier curve passing through all the bones' ends,
and bones' segments in the chain will bend and roll to follow this invisible curve.

There is no direct access to the curve.
It can only be controlled by some extent using bone properties,
as explained in the :ref:`editing pages <armature-bone-rigid>`.

In Fig. :ref:`fig-rig-bone-intro-bbone` we connected three bones,
each one made of five segments. These are *B-bones* but as you see,
in *Edit Mode* they are shown as rigid elements.
Look at Fig. :ref:`fig-rig-bone-intro-same`,
we can see how the bones' segments smoothly "blend" into each other, even for roll.

Of course,
a geometry influenced by the chain is smoothly deformed according to the Bézier curve!
In fact,
smooth bones are an easy way to replace long chains of many small rigid bones posed using IK...

However, if the chain has an influence on objects rather than geometry,
the segments' orientation is not taken in account
(details are explained in the :doc:`skinning part </rigging/skinning/index>`).

When not visualized as *B-Bone* s, bones are always shown as rigid sticks,
even though the bone segments are still present and effective
(see :doc:`skinning to Object Data </rigging/skinning/obdata>`).

This means that even in e.g. *Octahedron* visualization,
if some bones in a chain have several segments,
they will nonetheless smoothly deform their geometry...


.. _armature-bone-rigid:

Bone Rigidity
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit and Pose Mode
   | Panel:    Armature

Even though you have the *Segment* setting available in *Edit Mode*
(Deform panel, in the *Bone* tab),
you should switch to the *Pose Mode* :kbd:`Ctrl-Tab` to edit these "smooth"
bones' properties -- one explanation to this strange need is that in *Edit Mode*,
even in *B-Bone* visualization, bones are drawn as sticks,
so you cannot visualize the effects of these settings.

.. figure:: /images/rigging_armatures_editing_properties_b-bone-pose-mode.png

   An armature in Pose Mode, B-Bone visualization: Bone.003 has one segment,
   Bone.004 has four, and Bone.005 has sixteen.


We saw in :doc:`this page </rigging/armatures/bones/index>` that bones are made
of small rigid segments mapped to a "virtual" Bézier curve.
The *Segment* number button allows you to set the number of segments inside a given bone by default
it is set to 1, which gives a standard rigid bone. The higher this setting (max is 32), the smoother the bone,
but the heavier the pose calculations...

Each bone's ends are mapped to its "virtual" Bézier curve's
:ref:`"auto" <curve-handle-type-auto>`
handle. Therefore, you cannot control their direction,
but you can change their "length" using the *In* and *Out* numeric fields,
to control the "root handle" and "tip handle" of the bone, respectively.
These values are proportional to the default length, which of course automatically varies depending on bone length,
angle with previous/next bones in the chain, and so on.

.. list-table:: Bone In/Out settings example, with a materialized Bézier curve.

   * - .. figure:: /images/rigging_armatures_editing_properties_curve-in-out-1.png
          :width: 320px

          Look at Bone.004: it has the default In and Out values (1.0).

     - .. figure:: /images/rigging_armatures_editing_properties_curve-in-out-2.png
          :width: 320px

          Bone.004 with In at 2.0, and Out at 0.0.
