
************
Introduction
************

Particles are lots of items emitted from mesh objects, typically in the thousands.
Each particle can be a point of light or a mesh, and be joined or dynamic.
They may react to many different influences and forces, and have the notion of a lifespan.
Dynamic particles can represent fire, smoke, mist,
and other things such as dust or magic spells.

:doc:`Hair </physics/particles/hair>` type particles are a subset of regular particles.
Hair systems form strands that can represent hair, fur, grass and bristles.

You see particles as a *Particle* modifier,
but all settings are done in the *Particle tab*.


.. figure:: /images/fur_example.jpg
   :width: 300px

   Some fur made from particles


Particles generally flow out from their mesh into space.
Their movement can be affected by many things, including:

- Initial velocity out from the mesh.
- Movement of the emitter (vertex, face or object) itself.
- Movement according to "gravity" or "air resistance".
- Influence of force fields like wind, vortexes or guided along a curve.
- Interaction with other objects like collisions.
- Partially intelligent members of a flock (herd, school, ...),
  that react to other members of their flock, while trying to reach a target or avoid predators.
- Smooth motion with softbody physics (only *Hair* particle systems).
- Or even manual transformation with :doc:`Lattices </modeling/modifiers/deform/lattice>`.

Particles may be rendered as:

- :doc:`Halos </render/blender_render/materials/special_effects/halo>` (for Flames, Smoke, Clouds).
- Meshes which in turn may be animated (e.g. fish, bees, ...).
  In these cases, each particle "carries" another object.
- :doc:`Strands </render/blender_render/materials/properties/strands>` (for :doc:`Hair, Fur,
  Grass </physics/particles/hair>`); the complete way of a particle will be shown as a strand.
  These strands can be manipulated in the 3D window (combing, adding, cutting, moving, etc).

Every object may carry many particle systems. Each particle system may contain up to 100.
000 particles. Certain particle types (*Hair* and *Keyed*)
may have up to 10.000 children for each particle
(children move and emit more or less like their respective parents).
The size of your memory and your patience are your practical boundaries.


Workflow
========

The process for working with standard particles is:

- Create the mesh which will emit the particles.
- Create one or more Particle Systems to emit from the mesh.
  Many times, multiple particle systems interact or merge with each other to achieve the overall desired effect.
- Tailor each Particle System's settings to achieve the desired effect.
- Animate the base mesh and other particle meshes involved in the scene.
- Define and shape the path and flow of the particles.
- For :doc:`Hair </physics/particles/hair>` particle systems: Sculpt the emitter's flow
  (cut the hair to length and comb it for example).
- Make final render and do physics simulation(s), and tweak as needed.


Creating a Particle System
==========================

.. figure:: /images/particlesystem_createnew.jpg

   Adding a particle system.


To add a new particle system to an object, go to the *Particles* tab of the object
*Settings* editor and click the small *+* button.
An object can have many Particle Systems.

Each particle system has separate settings attached to it.
These settings can be shared among different particle systems, so one doesn't have to copy
every setting manually and can use the same effect on multiple objects.
Using the *Random* property they can be randomized to look slightly different,
even when using the same settings.


Types of Particle systems
-------------------------

.. figure:: /images/particlesystem_selecttype.jpg

   Particle System Types.


After you have created a particle system,
the *Property* window fills with many panels and buttons.
But don't panic! There are two different types of particle systems,
and you can change between these two with the *Type* drop-down list:

Emitter
   This parallels the old system to the greatest extent.
   In such a system, particles are emitted from the selected object
   from the *Start* frame to the *End* frame and have a certain lifespan.

:doc:`Hair </physics/particles/hair>`
   This system type is rendered as strands and has some very special properties:
   it may be edited in the 3D window in realtime and you can also animate
   the strands with :doc:`Cloth Simulation </physics/cloth>`.

The settings in the *Particle System* panel are partially different for each system
type. For example, in *Image 3* they are shown for only system type *Emitter*.


Common Options
--------------

Each system has the same basic sets of controls,
but options within those sets vary based on the system employed. These sets of controls are:

:doc:`Emission </physics/particles/emission>`
   Settings for the initial distribution of particles on the emitter and the way they are born into the scene.
:doc:`Cache </physics/particles/cache_and_bake>`
   In order to increase realtime response and avoid unnecessary recalculation of particles,
   the particle data can be cached in memory or stored on disk.
:doc:`Velocity </physics/particles/physics/index>`
   Initial speed of particles.
:doc:`Rotation </physics/particles/physics/index>`
   Rotational behavior of particles.
:doc:`Physics </physics/particles/physics/index>`
   How the movement of the particles behaves.
:doc:`Render </physics/particles/visualization>`
   Rendering options.
:doc:`Display </physics/particles/visualization>`
   Realtime display in the 3D View.
:doc:`Children </physics/particles/children>`
   Control the creation of additional child particles.
:doc:`Field Weights </physics/particles/physics/index>`
   Factors for external forces.
:doc:`Force Field Settings </physics/particles/physics/index>`
   Makes particles force fields.
:doc:`Vertex Groups </physics/particles/vertexgroups>`
   Influencing various settings with vertex groups.


Links
=====

- `Tutorials <http://en.wikibooks.org/wiki/Blender_3D:_Noob_to_Pro/Particle_Systems>`__
- `Physics Caching and Baking
  <http://www.blender.org/development/release-logs/blender-246/physics-caching-and-baking/>`__
- `Particle Rewrite Documentation <http://wiki.blender.org/index.php/BlenderDev/Particles_Rewrite_Doc>`__
- `Thoughts about the particle rewrite code <http://wiki.blender.org/index.php/BlenderDev/Particles_Rewrite>`__
- `Static Particle Fur Library <http://cs.unm.edu/~sketch/gallery/resource/furlib.html>`__
