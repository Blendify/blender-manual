
************
Introduction
************

Actuators perform actions, such as move, create objects, play a sound.
The actuators initiate their functions when they get a positive pulse from one (or more)
of their controllers.

The logic blocks for all types of actuator may be constructed and changed using the
:doc:`Logic Editor </editors/logic_editor>`; details of this process are given in the
:doc:`Actuator Editing </game_engine/logic/actuators/editing>` page.


The following types of actuator are currently available:

:doc:`Action </game_engine/logic/actuators/types/action>`
  Handles armature actions. This is only visible if an armature is selected.
:doc:`Camera </game_engine/logic/actuators/types/camera>`
  Has options to follow objects smoothly, primarily for camera objects, but any object can use this.
:doc:`Constraint </game_engine/logic/actuators/types/constraint>`
  Constraints are used to limit object's locations, distance, or rotation.
  These are useful for controlling the physics of the object in game.
:doc:`Edit Object </game_engine/logic/actuators/types/edit_object>`
  Edits the object's mesh, adds objects, or destroys them.
  It can also change the mesh of an object (and soon also recreate the collision mesh).
:doc:`Filter 2D </game_engine/logic/actuators/types/2d_filters>`
  Filters for special effects like sepia colors or blur.
:doc:`Game </game_engine/logic/actuators/types/game>`
  Handles the entire game and can do things as restart, quit, load, and save.
:doc:`Message </game_engine/logic/actuators/types/message>`
  Sends messages, which can be received by other objects to activate them.
:doc:`Motion </game_engine/logic/actuators/types/motion>`
  Sets object into motion and/or rotation.
  There are different options, from "teleporting" to physically push rotate objects.
:doc:`Parent </game_engine/logic/actuators/types/parent>`
  Can set a parent to the object, or unparent it.
:doc:`Property </game_engine/logic/actuators/types/property>`
  Manipulates the object's properties, like assigning, adding, or copying.
:doc:`Random </game_engine/logic/actuators/types/random>`
  Creates random values which can be stored in properties.
:doc:`Scene </game_engine/logic/actuators/types/scene>`
  Manage the scenes in your .blend file. These can be used as levels or for UI and background.
:doc:`Sound </game_engine/logic/actuators/types/sound>`
  Used to play sounds in the game.
:doc:`State </game_engine/logic/actuators/types/state>`
  Changes states of the object.
:doc:`Steering </game_engine/logic/actuators/types/steering>`
  Provides pathfinding options for the object.
:doc:`Visibility </game_engine/logic/actuators/types/visibility>`
  Changes visibility of the object.
