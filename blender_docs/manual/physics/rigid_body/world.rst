
****************
Rigid Body World
****************

Rigid Body World panel.

The rigid body world is a group of Rigid Body objects, which holds settings that apply to all rigid bodies in this
simulation and can be found in *Rigid Body World* panel of *Scene* context.

When you add Rigid Body physics on an object,
primary there is created a group of objects with default "RigidBodyWorld" name.
Rigid body objects automatically are added to this group when you add Rigid Body physics for them.

You can be create several Rigid Body World groups and allocate there yours Rigid Body objects with *Groups* panel in
*Object* context.

Rigid body objects and constraints are only taken into account by the simulation if they are in the groups specified
in *Group* field of the *Rigid Body World* panel in the *Scene* context.

*Rigid Body World* checkbox
   Enable/disable evaluation of the Rigid Body simulation based on the rigid body objects
   participating in the specified group of Rigid Body World.
*Remove Rigid Body World* button
   Remove Rigid Body simulation from the current scene.
*Group*
   Containing rigid body objects participating in this simulation.
*Constraints*
   Containing rigid body object constraints participating in the simulation.

Simulation quality and timing settings:

*Speed*
   Can be used to speed up/slow down the simulation.
*Split Impulse*
   Enable/disable reducing extra velocity that can build up when objects collide (lowers simulation stability a little
   so use only when necessary).
   Limits the force with which objects are separated on collision, generally produces nicer
   results, but makes the simulation less stable (especially when stacking many objects).
*Steps Per Second*
   Number of simulation steps made per second (higher values are more accurate but slower). This only influences the
   accuracy and not the speed of the simulation.
*Solver Iterations*
   Amount of constraint solver iterations made per simulation step (higher values are more accurate but slower).
   Increasing this makes constraints and object stacking more stable.


Rigid Body caching and baking
=============================

Rigid Body Cache panel.

Specifies the frame range in which the simulation is active. Can be used to bake the simulation.

*Start*/*End*
   First and last frame of the simulation.
*Bake*
   Calculates the simulation and protects the cache. You need to be in *Object* mode to bake.

   *Free Bake*
      Active after the baking of simulation. Clears the baked cache.
*Calculate to Frame*
   Bake physics to current frame.
*Current Cache to Bake*
   Bake from Cache.
*Bake All Dynamics*
   Bake all physics.
*Free All Bakes*
   Free all baked caches of all objects in the current scene.
*Update All To Frame*
   Update cache to current frame.

If you haven’t saved the blend file, the cache is created in memory,
so save your file first or the cache may be lost.


External Force Influence on Rigid Body
======================================

Rigid Body Cache panel.

As other physics dynamics systems, Rigid Body simulation are also influenced by external force effectors.
