
********************
Edit Object Actuator
********************

The Edit Object actuator allows the user to edit settings of objects in game

See :doc:`Actuator Common Options </game_engine/logic/actuators/common_options>` for common options.

Special Options:

.. figure:: /images/bge_actuator_edit_object.png
   :width: 271px

   Edit Object actuator.


Edit Object
   Menu of options for Edit Object actuator

   - Dynamics
   - Track To
   - Replace Mesh
   - End Object
   - Add Object

.. figure:: /images/bge_actuator_edit_object_dynamics.png
   :width: 271px

   :menuselection:`Edit Object actuator --> Dynamics`.


Dynamics
   Provides a menu of *Dynamic Operations* to set up dynamics options for object.

   Set Mass
      Enables the user to set the mass of the current object for Physics (Range 0 - 10,000).
   Disable Rigid Body
      Disables the Rigid Body state of the object -- disables collision.
   Enable Rigid Body
      Disables the Rigid Body state of the object -- enables collision.
   Suspend Dynamics
      Suspends the object dynamics (object velocity).
   Restore Dynamics
      Resumes the object dynamics (object velocity).

.. figure:: /images/bge_actuator_edit_object_track_to.jpg
   :width: 271px

   :menuselection:`Edit Object actuator --> Track to`.


Track To
   Makes the object "look at" another object, in 2D or 3D.
   The Y-axis is considered the front of the object.

   Object
      Object to follow.
   Time
      No. of frames it will take to turn towards the target object (Range 0-2000).
   3D Button (toggle).
      Enable 2D (X,Y) or 3D (X,Y,Z) tracking.

.. figure:: /images/bge_actuator_edit_object_replace_mesh.jpg
   :width: 271px

   :menuselection:`Edit Object actuator --> Replace Mesh`.


Replace Mesh
   Replace mesh with another. Both the mesh and/or its physics can be replaced,
   together or independently.

   Mesh
      name of mesh to replace the current mesh.
   Gfx Button
      replace visible mesh.
   Phys Button
      replace physics mesh (not compound shapes)

.. figure:: /images/bge_actuator_edit_object_end_object.png
   :width: 271px

   :menuselection:`Edit Object actuator --> End Object`.


End Object
==========

Destroy the current object (Note, debug properties will display error Zombie Object in console)

.. figure:: /images/bge_actuator_edit_object_add_object.png
   :width: 271px

   :menuselection:`Edit Object actuator --> Add Object`.


Add Object
==========

Adds an object at the center of the current object.

The object that is added needs to be on another, hidden, layer.
   Object
      The name of the object that is going to be added.:
   Time
      The time (in frames) the object stays alive before it disappears.
      Zero makes it stay forever.
   Linear Velocity
      Linear Velocity, works like in the motion actuator but on the created object instead of the object itself.
      Useful for shooting objects, create them with an initial speed.
   Angular Velocity
      Angular velocity, works like in the motion actuator but on the created object instead of the object itself.
