.. _bpy.types.DelaySensor:

************
Delay Sensor
************

The *Delay Sensor* is designed for delaying reactions a number of logic ticks.
This is useful if an other action has to be done first or to time events.

.. figure:: /images/bge_sensor_delay.jpg
   :width: 300px

   Delay sensor.


Properties
==========

See :doc:`Sensor Common Options </game_engine/logic/sensors/common_options>` for common options.

Delay
   The number of logic ticks the sensor waits before sending a positive pulse.
Duration
   The number of logic ticks the sensor waits before sending the negative pulse.
Repeat Button
   Makes the sensor restart after the delay and duration time is up.


Example
=======

TODO.
