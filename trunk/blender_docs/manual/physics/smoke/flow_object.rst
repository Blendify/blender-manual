..    TODO/Review: {{review|im=need the settings panel image}} .


*****************
Smoke Flow object
*****************

Create a Flow Object
====================

Once you have defined the volume that will contain smoke,
we'll add an object from which the smoke will be emitted. Add another cube and make sure it's
inside the domain cube :kbd:`Shift-A`:menuselection:`pop-up --> Mesh --> Cube`;
3D view must be selected).

While in edit mode go to physics and add smoke to the small cube, too. This time chose Flow.

The smoke will not be emitted from the object itself but from particles the object emits.
So we need to set up a particle system.
With the small cube still selected go to the particle tab. Add a new particle system and turn
off the physics because we want our smoke emit from stationary place.
We also don't want to see the particles so turn off the render, too.


.. list-table::

   * - .. figure:: /images/Particles_tab.jpg
          :width: 200px

          The particles tab is right next to the physics tab

     - .. figure:: /images/No_physics.jpg
          :width: 200px

          We don't want the particles to be affected by physics

     - .. figure:: /images/No_render.jpg
          :width: 200px

          We also don't want to see the particles


Now go back to the physics tab and chose the particle system in the smoke section. There
should be a list with just one system to chose from that is called 'ParticleSystem' since we
did not change the name.
Now you can scrub through the timeline to see smoke coming from the cube.
Another way to preview the smoke is starting the animation by :kbd:`Alt-A`
(stop it the same way).


.. list-table::

   * - .. figure:: /images/Chose_particle_system.jpg
          :width: 200px

          Select the newly created particle system here

     - .. figure:: /images/Scrub_timeline.jpg
          :width: 200px

          Either scrub on the timeline or use Alt+A

     - .. figure:: /images/Smoke_viewport.jpg
          :width: 200px

          Now there should be smoke in the viewport


Settings
========

Outflow
   Delete smoke from simulation.
Particle System
   Particle system emitted from the object.
Initial Velocity
   Smoke inherits its velocity from the emitter particle.
Multiplier
   Multiplier to adjust velocity passed to smoke.


**Initial Values**

Absolute Density
   Only allow given density value in emitter area.
Density
   Initial density value.
Temp. Diff.
   Temperature to ambient temperar.

