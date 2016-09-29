
************
Introduction
************

Particles are lots of items emitted from mesh objects, typically in the thousands.
Each particle can be a point of light or a mesh, and be joined or dynamic.
They may react to many different influences and forces, and have the notion of a lifespan.
Dynamic particles can represent fire, smoke, mist,
and other things such as dust or magic spells.

:doc:`Hair </physics/particles/hair/index>` type particles are a subset of regular particles.
Hair systems form strands that can represent hair, fur, grass and bristles.

You see particles as a *Particle* modifier,
but all settings are done in the *Particle tab*.

.. figure:: /images/fur_example.jpg
   :width: 300px

   Some fur made from particles.

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

- :doc:`Halos </render/blender_render/materials/special_effects/halo>`
  (for Flames, Smoke, Clouds).
- Meshes which in turn may be animated (e.g. fish, bees, ...).
  In these cases, each particle "carries" another object.
- :doc:`Strands </render/blender_render/materials/properties/strands>`
  (for :doc:`Hair, Fur, Grass </physics/particles/hair/index>`);
  the complete way of a particle will be shown as a strand.
  These strands can be manipulated in the 3D View (combing, adding, cutting, moving, etc).

Every object may carry many particle systems. Each particle system may contain up to
100.000 particles. Certain particle types (*Hair* and *Keyed*)
may have up to 10.000 children for each particle
(children move and emit more or less like their respective parents).
The size of your memory and your patience are your practical boundaries.


Options
-------

Each system has the same basic sets of controls,
but options within those sets vary based on the system employed. These sets of controls are:

:doc:`Particle System Panel </physics/particles/particle_system_panel>`
   Basic Settings.
:doc:`Emission </physics/particles/properties/emission>`
   Settings for the initial distribution of particles on the emitter and the way they are born into the scene.
:doc:`Cache </physics/particles/properties/cache>`
   In order to increase realtime response and avoid unnecessary recalculation of particles,
   the particle data can be cached in memory or stored on disk.
:doc:`Velocity </physics/particles/properties/physics/index>`
   Initial speed of particles.
:doc:`Rotation </physics/particles/properties/physics/index>`
   Rotational behavior of particles.
:doc:`Physics </physics/particles/properties/physics/index>`
   How the movement of the particles behaves.
:doc:`Render </physics/particles/properties/render>`
   Rendering options.
:doc:`Display </physics/particles/properties/display>`
   Realtime display in the 3D View.
:doc:`Children </physics/particles/properties/children>`
   Control the creation of additional child particles.
:doc:`Field Weights </physics/particles/properties/physics/index>`
   Factors for external forces.
:doc:`Force Field Settings </physics/particles/properties/physics/index>`
   Makes particles force fields.
:doc:`Vertex Groups </physics/particles/properties/vertex_groups>`
   Influencing various settings with vertex groups.
