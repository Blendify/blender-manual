
********************
Constraints Actuator
********************

Adds a constraint to the location, orientation.

See :doc:`Actuator Common Options </game_engine/logic/actuators/common_options>` for common options.

Special Options:


Constraint Mode
===============

Menu specifying type of constraint required.

- Force Field Constraint
- Orientation Constraint
- Distance Constraint
- Location Constraint

.. figure:: /images/bge_actuator_constraint_forcefield.png
   :width: 271px

   :menuselection:`Constraint actuator --> Force Field`.


Force Field Constraint
   Create a force field buffer zone along one axis of the object.

   Damping
      Damping factor of the Fh spring force.
   Distance
      Height of Fh area.
   Rot Fh
      Make game object axis parallel to the normal of trigger object.
   Direction
      Axis in which to create force field (can be + or -, or None).
   Force
      Force value to be used.
   N
      When on, use a horizontal spring force on slopes.
   M/P
      Trigger on another Object will be either Material (M) or Property (P).
   Property
      Property/Material that triggers the Force Field constraint (blank for **all** Properties/Materials).
   Per
      Persistence button
      When on, force field constraint always looks at Property/Material;
      when off, turns itself off if it cannot find the Property/Material.
   Time
      Number of frames for which constraint remains active.
   RotDamp
      Damping factor for rotation.

.. figure:: /images/bge_actuator_constraint_orientation.png
   :width: 271px

   :menuselection:`Constraint Actuator --> Orientation`.


.. rubric:: Orientation Constraint

Constrain the specified axis in the Game to a specified direction in the World axis.

   Direction
      Game axis to be modified (X, Y, Z or none).
   Damping
      Delay (frames) of the constraint response.
   Time
      Time (frames) for the constraint to remain active.
   ReferenceDir
      Reference direction (global coordinates) for the specified game axis.
   MinAngle
      Minimum angle for the axis modification.
   MaxAngle
      Maximum angle for the axis modification.

.. figure:: /images/bge_actuator_constraint_distance.jpg
   :width: 271px

   :menuselection:`Constraint actuator --> Distance`.


Distance Constraint
===================

Maintain the distance the Game Object has to be from a surface.

   Direction
      Axis Direction (X, Y, Z, -X, -Y, -Z, or None).
   L
      If on, use local axis (otherwise use World axis).
   N
      If on, orient the Game Object axis with the mesh normal.
   Range
      Maximum length of ray used to check for Material/Property on another game object.
   Force Distance
      Distance to be maintained between object and the Material/Property that triggers the
      Distance Constraint(-2000 to +2000 Blender Units).
   Damping
      Delay (frames) of the constraint response.
   M/P
      Trigger on another Object will be either Material (M) or Property (P).
   Property
      Property/Material that triggers the Force Field constraint (blank for **all** Properties/Materials).
   Per
      Persistence button: When on, force field constraint always looks at Property/Material;
      when off, turns itself off if it cannot find the Property/Material.
   Time
      Number of frames for which constraint remains active.
   RotDamp
      Damping factor for rotation.

.. figure:: /images/bge_actuator_constraint_location.png
   :width: 271px

   :menuselection:`Constraint actuator --> Location`.


Location Constraint
===================

Limit the position of the Game Object within one World Axis direction.
To limit movement within an area or volume, use two or three constraints.

   Limit
      Axis in which to apply limits (LocX, LocY, LocZ or none).
   Min
      Minimum limit in specified axis (Blender Units).
   Max
      Maximum limit in specified axis (Blender Units).
   Damping
      Delay (frames) of the constraint.
