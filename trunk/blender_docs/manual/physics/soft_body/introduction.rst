
************
Introduction
************

.. figure:: /images/HiddenTextSoftbody.jpg
   :width: 600px

   Image 1a: A softbody cloth uncovering a text.
   `Animation <https://vimeo.com/1865528>`__ -
   `Blend file <https://wiki.blender.org/index.php/Media:HiddenTextExample.blend>`__


A Soft Body in general, is a simulation of a soft or rigid deformable object.
In Blender, this system is best for simple cloth objects and closed meshes.
There is dedicated :doc:`Cloth Simulation </physics/cloth/index>` physics that use a different solver,
and is better for cloth.

This simulation is done by applying forces to the vertices or controlpoints of the object.
There are exterior forces like gravity or forcefields and interior forces that hold the
vertices together.
This way you can simulate the shapes that an object would take on in reality if it had volume,
was filled with something, and was acted on by real forces.

Soft Bodies can interact with other objects trough *Collision*. They can interact with themselves
trough *Self Collision*.

The result of the Soft Body simulation can be converted to a static object.
You can also *bake edit* the simulation, i.e.
edit intermediate results and run the simulation from there.


Typical scenarios for using Soft Bodies
=======================================

.. figure:: /images/WindConeSoftbody.jpg
   :width: 300px

   Image 1b: A wind cone. The cone is a Soft Body, as the suspension.
   `Animation <https://vimeo.com/1865817>`__ - `Blend file
   <https://wiki.blender.org/index.php/Media:WindConeExample.blend>`__


Soft Bodies are well suited for:

- Elastic objects with or without collision.
- Flags, fabric reacting to forces.
- Certain modeling tasks, like a cushion or a table cloth over an object.
- Blender has another simulation system for clothing (see :doc:`Clothes </physics/cloth/index>`).
  But you can sometimes use Soft Bodies for certain parts of clothing, like wide sleeves.
- Hair (as long as you minimize collision).
- Animation of swinging ropes, chains and the like.

The following videos may give you some more ideas:

- https://www.youtube.com/watch?v=qdusMZlBbQ4
- https://www.youtube.com/watch?v=3du8ksOm9Fo&hl


Creating a Soft Body
====================

Soft Body simulation works for all objects that have vertices or control points:

- Meshes.
- Curves.
- Surfaces.
- Lattices.

To activate the Soft Body simulation for an object:

- In the Properties editor, go to the *Physics* tab
  (it is all the way on the right, and looks like a bouncing ball).
- Activate the *Soft Body* button.

A lot of options appear.
For a reference of all the settings see :doc:`this page </physics/soft_body/settings>`.


- You start a Soft Body simulation with :kbd:`Alt-A`.
- You pause the simulation with :kbd:`Spacebar`, continue with :kbd:`Alt-A`.
- You stop the simulation with :kbd:`Esc`.


Simulation Quality
==================

The settings in the *Soft Body Solver* panel determine the accuracy of the
simulation.

Min Step
   Minimum simulation steps per frame. Increase this value, if the Soft Body misses fast moving collision objects.
Max Step
   Maximum simulation steps per frame.
   Normally the number of simulation steps is set dynamically
   (with the *Error Limit*) but you have probably a good reason to change it.
Auto-Step
   Use Velocities for automatic step sizes.

Error Limit
   Rules the overall quality of the solution delivered. Default 0.1.
   The most critical setting that says how precise the solver should check for collisions.
   Start with a value that is 1/2 the average edge length. If there are visible errors, jitter,
   or over-exaggerated responses, decrease the value. The solver keeps track of how "bad" it is doing and the
   *Error Limit* causes the solver to do some "adaptive step sizing".


Fuzzy
   Simulation is faster, but less accurate.
Choke
   Calms down (reduces the exit velocity of) a vertex or edge once it penetrates a collision mesh.


Diagnostics
-----------

Print Performance to Console
   Prints on the console how the solver is doing.
Estimate Matrix
   Estimate matrix. Split to ``COM``, ``ROT``, ``SCALE``


Cache and Bake
==============

Soft Bodies and other physic simulations use a unified system for caching and baking.
See :doc:`Particle Cache </physics/particles/cache_and_bake>` for reference.

The results of the simulation are automatically cached to disk when the animation is played,
so that the next time it runs,
it can play again quickly by reading in the results from the disk. If you *Bake* the
simulation the cache is protected and you will be asked when you're trying to change a setting
that will make a recalculating necessary.


.. tip:: Beware of the *Start* and *End* settings

   The simulation is only calculated for the frames in-between the *Start* and *End* frames
   (*Bake* panel), even if you don't actually bake the simulation!
   So if you want a simulation longer than the default setting of 250 frames you have the change the *End* frame.


- Caching:

  - As animation is played, each physics system writes each frame to disk,
    between the simulation start and end frames.
    These files are stored in folders with prefix ``blendcache``, next to the blend-file.
  - The cache is cleared automatically on changes - but not on all changes,
    so it may be necessary to free it manually, e.g. if you change a force field.
    Note that for the cache to fill up, one has to start playback before or on the frame that the simulation starts.
  - If you are not allowed to write to the required sub-directory caching will not take place.
  - The cache can be freed per physics system with a button in the panels,
    or with the :kbd:`Ctrl-B` shortcut key to free it for all selected objects.
  - You may run into trouble if your blend-file path is very long and your operating system
    has a limit on the path length that is supported.
- Baking:

  - The system is protected against changes after baking.
  - The *Bake* result is cleared also with
    :kbd:`Ctrl-B` for all selected objects or click on *Free Bake* for the current Soft Body system.
  - If the mesh changes the simulation is not calculated anew.

For renderfarms, it is best to bake all the physics systems,
and then copy the blendcache to the renderfarm as well.


Interaction in real time
========================

To work with a Soft Body simulation you will find it handy to use the Timeline editor.
You can change between frames and the simulation will always be shown in the actual state. 
The option *Continue Physics* in the *Playback* menu 
of the *Timeline* editor lets you interact in real time with the simulation,
e.g. by moving collision objects or shake a Soft Body object.


.. tip:: *Continue Physics* does not work while playing the animation with :kbd:`Alt-A`

   Right. This works only if you start the animation with the *Play* button of the Timeline editor.


You can than select the Soft Body object while running the simulation and *Apply*
the modifier in the *Modifiers* panel of the *Editing* context.
This makes the deformation permanent.


Tips
====


- Soft Bodies work especially well if the objects have an even vertex distribution.
  You need enough vertices for good collisions. You change the deformation
  (the stiffness) if you add more vertices in a certain region (see the animation of *Image 1b*).
- The calculation of collisions may take a long time. If something is not visible, why calculate it?
- To speed up the collision calculation it is often useful to collide with an additional,
  simpler, invisible, somewhat larger object (see the example to *Image 1a*).
- Use Soft Bodies only where it makes sense.
  If you try to cover a body mesh with a tight piece of cloth and animate solely with Soft Body,
  you will have no success. Self collision of Soft Body hair may be activated,
  but that is a path that you have to wander alone. We will deal with
  :doc:`Collisions </physics/soft_body/collisions>` in detail later.
- Try and use a *Lattice* or a *Curve Guide* Soft Body instead of the object itself. This may be magnitudes faster.
