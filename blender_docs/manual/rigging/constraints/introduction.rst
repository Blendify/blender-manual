
************
Introduction
************

Constraints control the behavior of one object with data from another.
Constraints can make the eyes of a tennis player track a tennis ball bouncing across the court.
Constraints allow the wheels on a bus to all rotate together.
Constraints help a dinosaur's legs bend at the knee automatically as it walks.
Constraints make it easy for a hand to grip the hilt of a sword and the sword to swing with the hand.

Constraints, in Blender, work with :term:`Objects <Object>` and :term:`Bones <Bone>`.

.. figure:: /images/rigging_constraints_intro_panel.png

   :term:`Object` Constraints.

.. figure:: /images/rigging_constraints_intro_bone_panel.png

   :term:`Bone` Constraints.

Constraints work in combination with each other to form a Constraint Stack.

.. figure:: /images/rigging_constraints_intro_stack.png

   The Constraint Stack is evaluated from top to bottom.

Constraints are a fantastic way to add sophistication and complexity to a rig. But be careful not to rush in too quickly,
piling up constraint upon constraint until you lose all sense of how they interact with each other.

Start simply. Get to know a single constraint inside and out. Copy Location is a good first constraint to explore.
Take the time to understand every fundamental concept behind it, and the other constraints will make far more sense.

.. figure:: /images/rigging_constraints_intro_all_available.png


.. TODO, the 4x4 transform matrix vs. the transform panel
   
   Also note that constraints internally work using 4x4 transformation matrices only.
   When you use settings for specific rotation or scaling constraining,
   this information is being derived from the matrix only,
   not from settings in a *Bone* or *Object*. Especially for combining
   rotations with non-uniform or negative scaling this can lead to unpredictable behavior.

.. TODO, To learn more:
   
   - Read about using constraints in object animation in the :doc:`Animation chapter </animation/index>`
   - Read about using constraints in rigging in the :doc:`Armatures </rigging/posing/index>`

.. TODO, the blue dashed line
