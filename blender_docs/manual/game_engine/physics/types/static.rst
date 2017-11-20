
**************
Static Physics
**************

Static objects participates in the simulation, affecting other objects, but are not affected by it.
Meaning they do not react to physics, including gravity and collisions and this way
will remain unresponsive in terms of location, rotation, or deformation.

It will, however, give collision reactions. Objects will bounce off of Static Objects,
and rotational inertia will transfer to objects capable of rotating (that is,
Rigid Body Objects will spin in response, though Dynamic Objects will not).

Note that none of this prevents you from transforming the Static Objects with
:doc:`Logic Bricks </game_engine/logic/index>` or Python code.
The visual objects will correctly move and their physics representation will update in the engine as well.

Another important note is that the default
`Collision Bounds`_
is a Triangle Mesh, meaning it is higher in computational requirements but also in detail.
This in turn means the "Radius" option has no effect by default.

For more documentation, see the :doc:`Top BGE Physics page </game_engine/physics/index>`.


Options
=======

.. note::  bpy Access

   Note that most of these properties are accessible through the non-
   BGE scripting API via ``bpy.data.objects["ObjectName"].game``,
   which is of type ``bpy.types.GameObjectSetting``. This is useful so you can,
   for example, set a range of objects to have gradated values via a for-loop.

Actor
   Enables detection by Near and Radar Sensors.
Ghost
   Disables collisions completely, similar to No Collision.
Invisible
   Does not display, the same as setting the object to unrendered
   (such as unchecking the "Camera" icon in the Outliner).
Radius
   If you have the "Collision Bounds: Sphere"
   set explicitly (or implicitly through having the Collision Bounds subpanel unchecked),
   this will multiply with the Object's (unapplied) Scale. Note that none of the other bounds types are affected.
   Also note that in the 3D View the display will show this for all types,
   even though it is only actually used with Sphere.

.. list-table::
   :header-rows: 1

   * - Basic
     - Radius= 1.5
     - Unapplied Scale
     - Applied Scale
     - Collision Bounds

   * - Rolls, radius of 1 BU
     - Rolls, radius of 1.5 BU (after "popping" upward)
     - Rolls, radius of 1.5 BU
     - Rolls, radius of 1 BU (!)
     - Default (which is Sphere)

   * - Slides, extent of 1 BU
     - Slides, extent of 1 BU
     - Slides, extent of 1 BU
     - Slides, extent of 1 BU
     - Box

   * - ""
     - ""
     - ""
     - ""
     - Convex Hull

   * - Slides, extent of 1 BU (but with more friction than above)
     - Slides, extent of 1 BU (but with more friction than above)
     - Acts insane
     - Slides extent of 1.5 BU
     - Triangle Mesh

Anisotropic Friction
   Isotropic friction is identical at all angles. Anisotropic is directionally-dependant.
   Here you can vary the coefficients for the three axes individually, or disable friction entirely.
   Python properties: ``obj.game.use_anisotropic_friction``
   (boolean) and ``obj.game.friction_coefficients`` (a 3-element array).


Collision Bounds
================

The Static type differs from the others in that it defaults to a Triangle Mesh bounds,
instead of a simple sphere.
See :ref:`rigid body <game-engine-physics-object-collision-bounds>`.


Create Obstacle
===============

.. link also to rigid body if done

Todo
