
************
Introduction
************

An "armature" is a type of object used for :doc:`rigging </rigging/index>`.
Armature object borrows many ideas from real life skeletons.


Your first armature
===================

In order to see what we're talking about, let us try to add the default armature in Blender.

(Note that armature editing details are explained in the
:doc:`armatures editing section </rigging/armatures/editing/index>`).

Open a default scene, then:

- delete all objects in the scene
- make sure the cursor is in the world origin with :kbd:`Shift-C`
- press :kbd:`Numpad1` to see the world in Front view
- then, either:
  - in the Main Menu, go to :menuselection:`Add --> Armature --> Single Bone`
  - -or- in the 3D View, add an armature with :kbd:`Shift-A` :menuselection:`pop-up --> Armature --> Single Bone`
- press :kbd:`NumpadDelete` to see the armature at maximum zoom


.. figure:: /images/RiggingDefaultArmature.jpg
   :width: 500px

   The default armature
   `Toolbox: --> Add Armature --> Single Bone <https://wiki.blender.org/index.php/File:ManRiggingAddArmature2.5>`__


The armature object
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


Armature chapter overview
=========================

In the "Armatures" section, we will only talk about armatures themselves,
and specifically we will talk about:

- the basics of :doc:`bones </rigging/armatures/bones/index>`
- the different :doc:`armature visualizations </rigging/armatures/visualization>`
- the armature :doc:`structure types </rigging/armatures/structure>`
- how to :doc:`Select Bones </rigging/armatures/bones/selecting>`,
- how to :doc:`Edit Armatures </rigging/armatures/editing/index>`
- how to :doc:`Edit Bones </rigging/armatures/editing/bones>`
- how to :doc:`edit bones properties </rigging/armatures/editing/properties>`
- how to sketch armatures with the :doc:`Etch-a-Ton tool </rigging/armatures/editing/sketching>`
- how to use :doc:`templates </rigging/armatures/editing/templating>`
