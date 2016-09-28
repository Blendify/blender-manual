
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


.. _armature-bone-rigid:

Bone Rigidity
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit and Pose Mode
   | Panel:    Armature

.. figure:: /images/rigging_armatures_editing_properties_bone-panel-pose-mode.png

   The Bones tab in Pose Mode.


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
