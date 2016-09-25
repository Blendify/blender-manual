
************
Introduction
************

.. figure:: /images/rigging_armatures_bones_introduction_bones-elements.png
   :align: right

   The elements of a bone.


Bones are the base elements of armatures.

They have three elements:

- The "start point" named *root* or *head*,
- the "body" itself,
- and the "end point" named *tip* or *tail*.

With the default armature in edit-mode,
you can select the root and the tip, and move them as you do with mesh vertices.

Both root and tip (the "ends") define the bone by their respective position.

They also have a radius property, only useful for the envelope deformation method (see below).


Bones Visualization
===================

Bones can be visualized in various ways: *Octahedron*, *Stick*,
*B-Bone*, *Envelope* and *Wire*. Custom shapes can be used, too!

.. list-table::

   * - .. figure:: /images/rigging_armatures_bones_introduction_bones-visualization-1.png
          :width: 320px

          Octahedral bone display.

     - .. figure:: /images/rigging_armatures_bones_introduction_bones-visualization-2.png
          :width: 320px

          Stick bone display.

   * - .. figure:: /images/rigging_armatures_bones_introduction_bones-visualization-3.png
          :width: 320px

          B-Bone bone display.

     - .. figure:: /images/rigging_armatures_bones_introduction_bones-visualization-4.png
          :width: 320px

          Envelope bone display.


Since armatures are made of bones, you will find more about this when we will talk about
:doc:`Armatures Visualization </rigging/armatures/visualization>`.

Activating *Axes* checkmark on the *Armature*/*Display* panel,
will show local axes for each bone's tip. The Y axis is always aligned along the bone,
oriented from root to tip. So, this is the "roll" axis of the bones.

.. figure:: /images/rigging_armatures_bones_properties_properties-editor.png

   The Bone tab.


Bones properties
================

When bones are selected (hence in *Edit Mode* and *Pose Mode*), their
properties are shown in the *Bone* tab of the Properties editor.

This shows different panels used to control features of each selected bone;
the panels change depending on which mode you are working in.


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


.. _armature-bone-influence:

Bones Influence
===============

.. figure:: /images/rigging_armatures_bones_introduction_envelope-edit-mode.png
   :figwidth: 180px
   :align: right

   A bone in Envelope visualization, in Edit Mode.

Basically, a bone controls a geometry when vertices "follow" the bone. This is like how the
muscles and skin of your finger follow your finger-bone when you move a finger.

To do this, you have to define the strength of *influences* a bone has on a certain vertex.

The simplest way is to have each bone affecting those parts of the geometry that are within a
given range from it. This is called the *envelope technique*,
because each bone can control only the geometry "enveloped" by its own influence area.

If a bone is visualized as *Envelope*,
in *Edit Mode* and in *Pose Mode* you can see the area of influence,
which depends on:

- The *distance* property and
- the root's radius and the tip's radius.

.. figure:: /images/rigging_armatures_bones_introduction_envelope-pose-mode.png
   :width: 300px

   Our armature in Envelope visualization, in Pose Mode.


All these influence parameters are further detailed in the :doc:`skinning pages </rigging/skinning/index>`.
