.. _bpy.types.CollisionSensor:

****************
Collision Sensor
****************

A *Collision Sensor* works like a "touch sensor" but can also filter by property or material.
Only objects with the property/material with that name will generate a positive pulse upon collision.
Leave blank for collision with any object.

.. note:: Note about soft bodies

   The *Collision* sensor cannot detect collisions with soft bodies.
   This is a limitation in Bullet, the physics library used by the Game Engine.

.. figure:: /images/game-engine_logic_sensors_types_collision_node.jpg
   :width: 300px

   Collision sensor.


Properties
==========

See :doc:`Sensor Common Options </game_engine/logic/sensors/common_options>` for common options.

Pulse button
   Makes it sensible to other collisions even if it is still in touch
   with the object that triggered the last positive pulse.
M/P button
   Toggles between material and property filtering.


Example
=======

TODO.
