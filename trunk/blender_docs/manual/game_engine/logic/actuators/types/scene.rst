
**************
Scene Actuator
**************

.. figure:: /images/bge_actuator_scene.jpg
   :width: 257px

   Scene actuator


The *Scene* actuator manages the scenes in your .blend file,
these can be used as levels or for UI and background.


See :doc:`Actuator Common Options </game_engine/logic/actuators/common_options>` for common options.

Special Options:
The actuator has eight modes:


.. figure:: /images/bge_actuator_scene_options.jpg
   :width: 257px

   Scene actuator options


Restart
   Restarts the current scene, everything in the scene is reset
Set Scene
   Changes scene to selected one
Set Camera
   Changes which camera is used
Add OverlayScene
   This adds an other scene, and draws it on top of the current scene.
   It is good for interfacing: keeping the health bar, ammo meter,
   speed meter in an overlay scene makes them always visible.
Add BackgroundScene
   This is the opposite of an overlay scene, it is drawn behind the current scene
Remove Scene
   Removes a scene.
Suspend Scene
   Pauses a scene
Resume Scene
   Resumes a paused scene.

.. note::
   A scene that it is paused can not resume itself.
   You need an active scene to resume other scene that it is paused.
