
****************************
Adding/Removing a Constraint
****************************

What is described on this page about Object Constraints can be also be applied on Bone Constraints.


Tab
===

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Menu:    :menuselection:`Properties Editor --> Constraint tab`

To add a constraint click on the *Add Object Constraint* menu in the Constraints tab.

.. figure:: /images/rigging_constraints_introduction_add-menu.png

To remove a constraint click on the "X" button
in the :doc:`header </rigging/constraints/interface/header>`.


Menu
====

.. _bpy.ops.object.constraint_add_with_targets:

Add Constraint (with Targets)
-----------------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode and Pose Mode
   | Menu:    :menuselection:`Object --> Constraint --> Add constraint (with Targets)`
   | Hotkey:   :kbd:`Ctrl-Shift-C`

Adds a constraint to the active object.
The type of constraint must be chosen from a popup window,
though it can be changed later from the *Add Constraint (with Targets)* Operator panel.
If there is an other object selected besides the active one,
that object will be the constraint target (if the chosen constraint accepts targets).

When using a bone from another armature as the target for a constraint, the tool
will look inside the non-active armature and use its active bone,
provided that armature is in Pose Mode.


.. _bpy.ops.object.constraints_copy:

Copy Constraints to Selected
----------------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode and Pose Mode
   | Menu:     :menuselection:`Object --> Constraint --> Copy Constraints to Selected Objects`

Copies the active object Constraints to the rest of the selected objects.


.. _bpy.ops.object.constraints_clear:

Clear Constraints
-----------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode and Pose Mode
   | Panel:    :menuselection:`Object --> Constraint --> Clear Object Constraints`
   | Hotkey:   :kbd:`Ctrl-Alt-C`

Removes all Constraints of the selected object(s).


.. _bpy.ops.object.track_set:
.. _bpy.ops.object.track_clear:

Track
=====

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Panel:    :menuselection:`Object --> Track`
   | Hotkey:   :kbd:`Ctrl-T`

These tools add a tracking constraint :kbd:`Ctrl-T` to the selected objects;
the target object of the constraint will be the active object, which won't have a constraint added.

- :doc:`Damped Track Constraint </rigging/constraints/tracking/damped_track>`
- :doc:`Track To Constraint </rigging/constraints/tracking/track_to>`
- :doc:`Lock Track Constraint </rigging/constraints/tracking/locked_track>`

Clear Track :kbd:`Alt-T`
   Removes all Damped Track, Track To and Lock Track Constraints from the selected objects.
Clear and Keep Transformation (Clear Track) :kbd:`Alt-T`
   Removes all Track Constraint from the selected objects, while keeping the final transform caused by them.
