.. _bpy.types.ArmatureActuator:

*****************
Armature Actuator
*****************

The *Armature Actuator* is used to modify bone constraints.

.. figure:: /images/game-engine_logic_actuators_types_armature_node.png

   Armature Actuator.

.. note::

   The *Armature Actuator* only is available for armature objects.


Properties
==========

Constraint Type
   Action to perform on the bone constraint.

   Run Armature
      TODO.
   Enable/Disable
      Used to disable a constraint by selecting the constraint via the :ref:`ui-data-id`.
   Set Target
      Used to change the constraint's :ref:`Target <rigging-constraints-interface-common-target>`
      by selecting the new target via the :ref:`ui-data-id`.
   Set Weight
      Used to change the weight of a constraint by selecting a new weight with the *Weight* field.
   Set Influence
      Used to change the :ref:`Influence <bpy.types.Constraint.influence>`
      of a constraint by selecting a new weight with the *Influence* field.

Constraint
   Several of the *Constraint Types* need you to select a constraint to use, this is done via this :ref:`ui-data-id`.


Example
=======
