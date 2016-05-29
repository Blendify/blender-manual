*****************
Particle Emission
*****************

The *Emitter* system works just like its name says: it emits/produces particles for a certain amount of time.
In such a system, particles are emitted from the selected object from the *Start*
frame to the *End* frame and have a certain lifespan.
These particles are rendered default as :doc:`Halos </render/blender_render/materials/special_effects/halo>`,
but you may also render these kind of particles as objects
(depending on the particle system's render settings, see :doc:`Visualization </physics/particles/visualization>`).


Options
=======

.. figure:: /images/particle_emission_settings.png

   Particle Emission Settings.


The buttons in the *Emission* panel control the way particles are emitted over time:

Amount
   The maximum amount of parent particles used in the simulation.
Start
   The start frame of particle emission. You may set negative values,
   which enables you to start the simulation before the actual rendering.
End
   The end frame of particle emission.
Lifetime
   The lifetime (in frames) of the particles.
Random
   A random variation of the lifetime of a given particle.
   The shortest possible lifetime is *Lifetime* × (1 - *Rand*).
   Values above 1.0 are not allowed.
   For example with the default *Lifetime* value of 50 a *Random* setting of 0.5
   will give you particles with lives ranging from 50 frames to ``50 × (1.0 - 0.5)`` = 25 frames, and with a
   *Random* setting of 0.75 you'll get particles with lives ranging from 50 frames to
   ``50 × (1.0 - 0.75)`` = 12.5 frames.


Emission Location
-----------------

*Emit From* parameters define how and where the particles are emitted,
giving precise control over their distribution. You may use vertex groups to confine the emission,
that is done in the *Vertexgroups* panel.

Verts
   Emit particles from the vertices of a mesh.
Faces
   Emit particles from the surface of a mesh's faces.
Volume
   Emit particles from the volume of an enclosed mesh.


Distribution Settings
---------------------

These settings control how the emissions of particles are distributed throughout the emission
locations

Random
   The emitter element indices are gone through in a random order instead of linearly (one after the other).

For Faces and Volume, additional options appear:

Even Distribution
   Particle distribution is made even based on surface area of the elements,
   i.e. small elements emit less particles than large elements, so that the particle density is even.

Jittered
   Particles are placed at jittered intervals on the emitter elements.

   Particles/Face
      Number of emissions per face (0 = automatic).
   JitteringAmount
      Amount of jitter applied to the sampling.

Random
   Particles are emitted from random locations in the emitter's elements.

Grid
   Particles are set in a 3d grid and particles near/in the elements are kept.

   Invert Grid
      Invert what is considered the object and what is not.
   Hexagonal
      Uses a hexagonal shaped grid instead of a rectangular one.
   Resolution
      Resolution of the grid.
   Random
      Add a random offset to grid locations.


.. tip:: Your mesh must be :term:`manifold` to emit particles from the volume.

   Some modifiers like *Edge Split* break up the surface,
   in which case volume emission will not work correctly!

Use Modifier Stack
   Take any :doc:`Modifiers </modeling/modifiers/introduction>` above the particle modifier in the
   :ref:`Modifier Stack <modifier-stack>` into account when emitting particles.

   .. note::

      Note that particles may differ in the final render if these modifiers
      generate different geometry between the viewport and render.
