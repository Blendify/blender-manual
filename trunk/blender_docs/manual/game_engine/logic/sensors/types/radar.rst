
************
Radar Sensor
************

.. figure:: /images/bge_sensor_radar.jpg
   :width: 300px

   Radar sensor.


The *Radar* sensor works much like a *Near* sensor,
but only within an angle from an axis, forming an invisible cone with the top in the objects'
center and base at a distance on an axis.

See :doc:`Sensor Common Options </game_engine/logic/sensors/common_options>` for common options.

Special Options:

Property
   This field can be used to limit the sensor to look for only those objects with this property.

.. note::

   #. The Radar sensor can detect objects "through" other objects (walls etc).
   #. Objects must have "Actor" enabled to be detected.

Axis
   This menu determines the direction of the radar cone.
   The ± signs is whether it is on the axis direction (+), or the opposite (-).
Angle
   Determines the angle of the cone. (Range: 0.00 to 179.9 degrees).
Distance
   Determines the length of the cone. (Blender units).

This sensor is useful for giving bots sight only in front of them, for example.

.. note:: Note about soft bodies

   The *Radar* sensor cannot detect soft bodies.
   This is a limitation in Bullet, the physics library used by the Game Engine.
