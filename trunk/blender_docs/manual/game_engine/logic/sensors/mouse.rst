
************
Mouse Sensor
************

.. figure:: /images/BGE_Sensor_Mouse1.jpg
   :width: 300px

   Mouse sensor


The *Mouse* sensor is for detecting mouse events.

See :doc:`Sensor Common Options </game_engine/logic/sensors/common_options>` for common options.

Special Options:
The controller consist only of a list of types of mouse events. These are:


Mouse over any
   gives a TRUE pulse if the mouse moves over any game object.
Mouse over
   gives a TRUE pulse if the mouse moves over the owner object.
Movement
   any movement with the mouse causes a stream of TRUE pulses.
Wheel Down
   causes a stream of TRUE pulses as the scroll wheel of the mouse moves down.
Wheel Up
   causes a stream of TRUE pulses as the scroll wheel of the mouse moves up.
Right button
   gives a TRUE pulse.
Middle button
   gives a TRUE pulse.
Left button
   gives a TRUE pulse.

A FALSE pulse is given when any of the above conditions ends.

There is no logic brick for specific mouse movement and reactions
(such as first person camera), these have to be coded in python.
