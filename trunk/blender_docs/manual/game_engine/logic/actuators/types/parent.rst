.. _bpy.types.ParentActuator:

***************
Parent Actuator
***************

The *Parent Actuator* enables the user to change the parent relationships of the current object.

.. figure:: /images/bge_actuator_parent.jpg
   :width: 271px

   Parent Actuator.


Properties
==========

See :doc:`Actuator Common Options </game_engine/logic/actuators/common_options>` for common options.

Scene
   The type of parenting operation.

   Set Parent
      Make this object to be current object's parent.

      Parent Object
         Name of parent object.
      Compound
         Add this object shape to the parent shape (only if the parent shape is already compound).
      Ghost
         Make this object ghost while parented.

   Remove Parent
      Remove all parents of current object.


Example
=======

TODO.
