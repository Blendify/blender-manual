.. _bpy.types.CameraActuator:

***************
Camera Actuator
***************

The *Camera Actuator* makes the camera follow or track an object.

.. figure:: /images/bge_actuator_camera.png
   :width: 271px

   Camera Actuator.


Properties
==========

See :doc:`Actuator Common Options </game_engine/logic/actuators/common_options>` for common options.

Camera Object
   Name of the Game Object that the camera follows/tracks.
Height
   Height the camera tries to stay above the Game Object's object center
Axis
   Axis in which the Camera follows (X or Y)
Min
   Minimum distance for the camera to follow the Game Object
Max
   Maximum distance for the camera to follow the Game Object
Damping
   Strength of the constraint that drives the camera behind the target.
   The higher the parameter,
   the quicker the camera will adjust to be inside the constrained range (of min, max and height).


Example
=======

TODO.
