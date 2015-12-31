
**************
State Actuator
**************

The State actuator allows the user to create complex logic,
whilst retaining a clear user interface. It does this by having different states,
and performing operations upon them

See :doc:`Actuator Common Options </game_engine/logic/actuators/common_options>` for common options.

Special Options:


.. figure:: /images/bge_actuator_state.jpg
   :width: 271px

   State actuator


.. figure:: /images/bge_actuator_state_options.jpg
   :width: 271px

   State actuator options


**Operation**

Menu to select the state operation required.

Change State
   Change from the current state to the state specified.
Remove State
   Removes the specified states from the active states (deactivates them).
Add State
   Adds the specified states to the active states (activates them).
Set State
   Moves from the current state to the state specified, deactivating other added states.


Usage Notes
===========

With the state actuator, you can create tiers of logic,
without the need for hundreds of properties. Use it well, and you benefit greatly,
but often problems may be circumvented by python.
