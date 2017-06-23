.. _bpy.types.MessageSensor:

**************
Message Sensor
**************

The *Message Sensor* can be used to detect either text messages or property values.
The sensor sends a positive pulse once an appropriate message is sent from anywhere in the
engine. It can be set up to only send a pulse upon a message with a specific subject.

.. note::

   See :doc:`Message Actuator </game_engine/logic/actuators/types/message>` for how to send messages.

.. figure:: /images/bge_sensor_message.jpg
   :width: 300px

   Message Sensor.


Properties
==========

See :doc:`Sensor Common Options </game_engine/logic/sensors/common_options>` for common options.

Subject
   Specifies the message that must be received to trigger the sensor (this can be left blank).


Example
=======

TODO.
