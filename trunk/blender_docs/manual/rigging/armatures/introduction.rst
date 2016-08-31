
************
Introduction
************

An "armature" is a type of object used for :doc:`rigging </rigging/index>`.
Armature object borrows many ideas from real life skeletons.


Your first armature
===================

In order to see what we are talking about, let us try to add the default armature in Blender.

(Note that armature editing details are explained in the
:doc:`armatures editing section </rigging/armatures/editing/index>`).

Open a default scene, then:

#. Delete all objects in the scene.
#. Make sure the cursor is in the world origin with :kbd:`Shift-C`.
#. Press :kbd:`Numpad1` to see the world in Front view.
#. Add a *Single Bone* (:menuselection:`Add --> Armature --> Single Bone`).
#. Press :kbd:`NumpadDelete` to see the armature at maximum zoom.

.. figure:: /images/rigging_armatures_introduction.png

   The default armature.


The Armature Object
===================

As you can see, an armature is like any other object type in Blender:

- It has a center, a position, a rotation and a scale factor.
- It has an ObData data-block, that can be edited in *Edit Mode*.
- It can be linked to other scenes, and the same armature data can be reused on multiple objects.
- All animation you do in *Object Mode* is only working on the whole object,
  not the armature's bones (use the *Pose Mode* to do this).

As armatures are designed to be posed, either for a static or animated scene,
they have a specific state, called "rest position". This is the armature's default "shape",
the default position/rotation/scale of its bones, as set in *Edit Mode*.

In *Edit Mode*, you will always see your armature in rest position,
whereas in *Object Mode* and *Pose Mode*,
you usually get the current "pose" of the armature
(unless you enable the *Rest Position* button of the *Armature* panel).


Armature Chapter Overview
=========================

In the "Armatures" section, we will only talk about armatures themselves,
and specifically we will talk about:

- The basics of :doc:`bones </rigging/armatures/bones/index>`.
- The different :doc:`armature visualizations </rigging/armatures/visualization>`.
- The armature :doc:`structure types </rigging/armatures/structure>`.
- How to :doc:`Select Bones </rigging/armatures/bones/selecting>`,
- How to :doc:`Edit Armatures </rigging/armatures/editing/index>`,
- How to :doc:`Edit Bones </rigging/armatures/editing/bones>`,
- How to :doc:`edit bones properties </rigging/armatures/editing/properties>`,
- How to sketch armatures with the :doc:`Etch-a-Ton tool </rigging/armatures/editing/sketching>`,
- How to use :doc:`templates </rigging/armatures/editing/templating>`.
