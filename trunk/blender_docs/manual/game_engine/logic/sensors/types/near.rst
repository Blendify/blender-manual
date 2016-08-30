
***********
Near Sensor
***********

.. figure:: /images/bge_sensor_near.png
   :width: 300px

   Near sensor.


A *Near* sensor detects objects that move to within a specific distance of
themselves. It can filter objects with properties, like the *Collision* sensor.


Options
=======

See :doc:`Sensor Common Options </game_engine/logic/sensors/common_options>` for common options.

Property
   This field can be used to limit the sensor to look for only those objects with this property.
Distance
   The number of Blender units it will detect objects within.
Reset
   The distance the object needs to be to reset the sensor (send a FALSE pulse).

.. note::

   #. The Near sensor can detect objects "through" other objects (walls etc).
   #. Objects must have "Actor" enabled to be detected.

.. note:: Note about soft bodies

   The *Near* sensor cannot detect soft bodies.
   This is a limitation in Bullet, the physics library used by the Game Engine.
