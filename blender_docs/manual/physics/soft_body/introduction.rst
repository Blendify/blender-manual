
************
Introduction
************

Soft body simulation is used for simulating soft deformable objects. It was
designed primarily for adding secondary motion to animation, like jiggle
for body parts of a moving character.

It also works for simulating more general soft objects that bend, deform and
react to forces like gravity and wind, or collide with other objects.

While it can simulate cloth and other stiff types of deformable objects to an
extent, the :doc:`Cloth Simulation </physics/cloth/index>` can do it better
with a solver specifically designed for this purpose.


The simulation works by combining existing animation on the object with forces
acting on it. There are exterior forces like gravity or force fields and
interior forces that hold the vertices together.
This way you can simulate the shapes that an object would take on in reality if it had volume,
was filled with something, and was acted on by real forces.

Soft bodies can interact with other objects through *Collision*.
They can interact with themselves through *Self-Collision*.

The result of the soft body simulation can be converted to a static object.
You can also *bake edit* the simulation, i.e.
edit intermediate results and run the simulation from there.


Typical Scenarios for using Soft Bodies
=======================================

.. _fig-softbody-intro-cone:

.. figure:: /images/physics_soft-body_introduction_windcone.jpg
   :width: 300px

   A wind cone. The cone is a soft body, as the suspension.

   `Animation <https://vimeo.com/1865817>`__ --
   `blend-file <https://wiki.blender.org/index.php/Media:WindConeExample.blend>`__.

Soft bodies are well suited for:

- Jiggle on moving characters.
- Elastic and deformable objects made of materials like rubber or gelatin.
- Tree branches moving in the wind, swining ropes, and the like.
- Flags, wide sleeves, cushions or other simple fabric reacting to forces.

The following videos may give you some more ideas:

- https://www.youtube.com/watch?v=hLnY-OFUBzM
- https://www.youtube.com/watch?v=qdusMZlBbQ4


Creating a Soft Body
====================

Soft body simulation works for all objects that have vertices or control points:

- Meshes.
- Curves.
- Surfaces.
- Lattices.

To activate the soft body simulation for an object:

- In the Properties editor, go to the *Physics* tab
  (it is all the way on the right, and looks like a bouncing ball).
- Activate the *Soft Body* button.

A lot of options appear.
For a reference of all the settings see :doc:`this page </physics/soft_body/settings>`.

- You start a soft body simulation with :kbd:`Alt-A`.
- You pause the simulation with :kbd:`Spacebar`, continue with :kbd:`Alt-A`.
- You stop the simulation with :kbd:`Esc`.


Soft Body Solver
================

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Physics --> Soft Body Solver`

The settings in the *Soft Body Solver* panel determine the accuracy of the simulation.


Step Size
---------

Min Step
   Minimum simulation steps per frame. Increase this value, if the soft body misses fast-moving collision objects.
Max Step
   Maximum simulation steps per frame.
   Normally the number of simulation steps is set dynamically
   (with the *Error Limit*) but you have probably a good reason to change it.
Auto-Step
   Use Velocities for automatic step sizes.


Error Limit
-----------

Rules the overall quality of the solution delivered. Default 0.1.
The most critical setting that says how precise the solver should check for collisions.
Start with a value that is 1/2 the average edge length. If there are visible errors, jitter,
or over-exaggerated responses, decrease the value. The solver keeps track of how "bad" it is doing and
the *Error Limit* causes the solver to do some "adaptive step sizing".


Helpers
-------

Choke
   Calms down (reduces the exit velocity of) a vertex or edge once it penetrates a collision mesh.
Fuzzy
   Simulation is faster, but less accurate.


Diagnostics
-----------

Print Performance to Console
   Prints on the console how the solver is doing.
Estimate Matrix
   Estimate matrix. Split to ``COM``, ``ROT``, ``SCALE``


Cache
=====

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Physics --> Soft Body Cache`

Soft bodies and other physic simulations use a unified system for caching and baking.
See :doc:`Particle Cache </physics/particles/emitter/cache>` for reference.

The results of the simulation are automatically cached to disk
when the animation is played, so that the next time it runs,
it can play again quickly by reading in the results from the disk.
If you *Bake* the simulation the cache is protected and
you will be asked when you are trying to change a setting
that will make a recalculating necessary.

.. tip:: Beware of the *Start* and *End* settings

   The simulation is only calculated for the frames in between the *Start* and *End* frames
   (*Bake* panel), even if you do not actually bake the simulation!
   So if you want a simulation longer than the default setting of 250 frames you have the change the *End* frame.


.. rubric:: Caching

- As animation is played, each physics system writes each frame to disk,
  between the simulation start and end frames.
  These files are stored in folders with prefix ``blendcache``, next to the blend-file.
- The cache is cleared automatically on changes. But not on all changes,
  so it may be necessary to free it manually, e.g. if you change a force field.
  Note that for the cache to fill up, one has to start playback before or on the frame that the simulation starts.
- If you are not allowed to write to the required subdirectory caching will not take place.
- The cache can be freed per physics system with a button in the panels,
  or with the :kbd:`Ctrl-B` shortcut key to free it for all selected objects.
- You may run into trouble if your blend-file path is very long and your operating system
  has a limit on the path length that is supported.


.. rubric:: Baking

- The system is protected against changes after baking.
- The *Bake* result is cleared also with
  :kbd:`Ctrl-B` for all selected objects or click on *Free Bake* for the current soft body system.
- If the mesh changes the simulation is not calculated anew.

For render farms, it is best to bake all the physics systems,
and then copy the blendcache to the render farm as well.


Interaction in Real-Time
========================

To work with a soft body simulation, you will find it handy to use the Timeline editor.
You can change between frames and the simulation will always be shown in the actual state.
The option *Continue Physics* in the *Playback* menu
of the *Timeline* editor lets you interact in real-time with the simulation,
e.g. by moving collision objects or shaking a soft body object.

.. tip::

   *Continue Physics* does not work while playing the animation with :kbd:`Alt-A`.
   It will work only if you start the animation with the *Play* button of the Timeline editor.

You can then select the soft body object while running the simulation and *Apply*
the modifier in the *Modifiers* tab of the Properties editor.
This makes the deformation permanent.


Tips
====

- Soft bodies work especially well if the objects have an even vertex distribution.
  You need enough vertices for good collisions. You change the deformation
  (the stiffness) if you add more vertices in a certain region
  (see the animation of Fig. :ref:`fig-softbody-intro-cone`).
- The calculation of collisions may take a long time. If something is not visible, why calculate it?
- To speed up the collision calculation it is often useful to collide with an additional,
  simpler, invisible, somewhat larger object.
- Use soft bodies only where it makes sense.
  If you try to cover a body mesh with a tight piece of cloth and animate solely with soft body,
  you will have no success. Self-collision of soft body hair may be activated,
  but that is a path that you have to wander alone. We will deal with
  :doc:`Collisions </physics/soft_body/collision>` in detail later.
- Try and use a *Lattice* or a *Curve Guide* soft body instead of the object itself. This may be magnitudes faster.
