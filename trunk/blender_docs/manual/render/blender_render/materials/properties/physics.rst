
..    TODO/Review: {{review|partial=x}} .

.. note::

   **Incomplete Page.** Descriptions of some controls either very brief or missing.
   If you have more information, please update this page (and remove this note when you feel the page is complete).


************
Game Physics
************

.. figure:: /images/materials-properties-game-physics-settings.jpg

   Panel Physics in Material context


This panel contains physical properties that control how the object surfaces that use the
material are rendered in real time by the Blender Game Engine.

Physics settings are visible when using the game engine for rendering.
Game physics usage is described :doc:`Here </game_engine/physics/index>`

Friction
   Coulomb friction coefficient when inside the physics distance area.

Elasticity
   The elasticity of collisions determines how much of the kinetic
   energy is retained after the collision. A value of 1 will result in
   a collision where objects bounce off each other, and the kinetic
   energy after the collision is the samea s before. A value of 0 will
   result in a collision where the objects stick together after the
   collision, as all energy will have been converted to heat (or other
   energy forms that Blender also does not model).

   In macroscopic nature (so bigger than atomic particles) an
   elasticity of 1 is never seen, as at least some energy is converted
   to heat, sound, etc. An elastic (elasticity=high) collision occurs
   when two metal balls collide. An inelastic (elasticity=low)
   collision is seen when two half-inflated beach balls collide.

Force Field
   Controls force field settings.

   Force
      Upward spring force when inside the physics distance area.
   Distance
      Distance of physics area.
   Damping
      Damping of the spring force when inside the physics distance area.
   Align to Normal
      Align dynamic game objects along the surface normal when inside the physics distance area.


