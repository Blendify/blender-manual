.. _bpy.types.CollisionModifier:
.. _bpy.types.CollisionSettings:

**********
Collisions
**********

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Panel:    :menuselection:`Physics --> Collision`

:doc:`Particles </physics/particles/index>`, :doc:`Soft Bodies </physics/soft_body/index>`
and :doc:`Cloth objects </physics/cloth/index>` may collide with mesh objects.
:doc:`Boids </physics/particles/emitter/physics/boids>` try to avoid *Collision* objects.

- The objects need to share at least one common layer to have effect.
- You may limit the effect on particles to a group of objects
  (in the :doc:`Field Weights panel </physics/particles/emitter/physics/index>`).
- *Deflection* for softbody objects is difficult, they often penetrate the colliding objects.
- Hair particles ignore deflecting objects
  (but you can animate them as softbodies which take deflection into account).

If you change the deflection settings for an object you have to recalculate the particle,
softbody or cloth system by *Free Cache*, this is not done automatically. You can
clear the cache for all selected objects with :kbd:`Ctrl-B` :menuselection:`--> Free cache selected`.


Options
=======

.. figure:: /images/physics_collision.png

   Collision Panel.


Particle
--------

Permeability
   Fraction of particles passing through the mesh.
Stickiness
   How much particles stick to the object.
Kill Particles
   Deletes Particles upon impact.

Damping Factor
   Damping during a collision (independent of the velocity of the particles).
Random damping
   Random variation of damping.

Friction Factor
   Friction during movements along the surface.
Random friction
   Random variation of friction.

.. only:: builder_html

   .. _fig-collision-soft-plane:

   .. figure:: /images/physics_soft-body_collision_vertex-plane1.gif

      A softbody vertex colliding with a plane.

.. only:: latex or epub

   An example image can be found at:
   https://docs.blender.org/manual/en/dev/_images/physics_soft-body_collision_vertex-plane1.gif


Soft Body and Cloth
-------------------

Outer
   Size of the outer collision zone.
Inner
   Size of the inner collision zone (padding distance).

Outside and inside is defined by the face normal, depicted as blue arrow in Fig. :ref:`fig-collision-soft-plane`.


Soft Body Damping
-----------------

Damping Factor
   Damping during a collision.

*Softbody* collisions are difficult to get perfect. If one of the objects move too fast,
the soft body will penetrate the mesh. See also the section about :doc:`Soft Bodies </physics/soft_body/index>`.


Force Field
-----------

Absorption
   A deflector can also deflect effectors. You can specify some collision/deflector objects which deflect a specific
   portion of the effector force using the *Absorption* value. 100% absorption results in no force getting
   through the collision/deflector object at all. If you have three collision object behind each other with e.g.
   10%, 43% and 3%, the absorption ends up at around 50% :math:`100 × (1 - 0.1) × (1 - 0.43) × (1 - 0.03)`.


Examples
========

.. figure:: /images/physics_collision_defected_particles.jpg

   Deflected Particles.

Here is a *Meta* object, dupliverted to a particle system emitting downwards, and deflected by a mesh cube:


Hints
=====

- Make sure that the normals of the mesh surface are facing towards the particles/points for correct deflection.
- Hair particles react directly to force fields,
  so if you use a force field with a short range you do not need necessarily collision.
- Hair particles avoid their emitting mesh if you edit them in *Particle Edit Mode*.
  So you can at least model the hair with collision.
