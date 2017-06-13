.. _bpy.types.MouseSensor.:

************
Mouse Sensor
************

The *Mouse Sensor* is for detecting mouse events.

.. figure:: /images/bge_sensor_mouse1.jpg
   :width: 300px

   Mouse sensor.


Properties
==========

See :doc:`Sensor Common Options </game_engine/logic/sensors/common_options>` for common options.

The controller consist only of a list of types of mouse events.
A FALSE pulse is given when any of these conditions ends.

Mouse over any
   Gives a TRUE pulse if the mouse moves over any game object.
Mouse over
   Gives a TRUE pulse if the mouse moves over the owner object.
Movement
   Any movement with the mouse causes a stream of TRUE pulses.
Wheel Down
   Causes a stream of TRUE pulses as the scroll wheel of the mouse moves down.
Wheel Up
   Causes a stream of TRUE pulses as the scroll wheel of the mouse moves up.
Right button
   Gives a TRUE pulse.
Middle button
   Gives a TRUE pulse.
Left button
   Gives a TRUE pulse.

.. note::

   There is no logic brick for specific mouse movement and reactions
   (such as first person camera), these have to be coded in Python.
