
************
Introduction
************

Physics allows you to simulate real world physical phenomena.
Blender offers a variety for different physics,
for example you can use Blender to simulate to following kinds of simulation.

- Smoke
- Rain
- Dust
- Cloth
- Water
- Jello

:doc:`Particle Systems </physics/particles/index>` can be used to simulate many things: hair, grass, smoke, flocks.

:doc:`Hair </physics/particles/hair/index>` is a subset of the particle system,
and can be used for strand-like objects, such as hair, fur, grass, quills, etc.

:doc:`Soft Bodies </physics/soft_body/index>` are useful for everything that tends to bend, deform,
in reaction to forces like gravity or wind, or when colliding with other objects...
It can be used for skin, rubber, and even clothes, even though there is separate
:doc:`Cloth Simulation </physics/cloth/index>` specific for cloth-like objects.

:doc:`Rigid Bodies </physics/rigid_body/index>` can simulate dynamic objects that are fairly rigid.

:doc:`Fluids </physics/fluid/index>`, which include liquids and gases, can be simulated,
including :doc:`Smoke </physics/smoke/index>`.

:doc:`Force Fields </physics/force_fields/index>` can modify the behavior of simulations.



.. _physics-intro-gravity:

Gravity
=======

Gravity is a global setting that is applied the same to all physics systems in a scene,
which can be found in the scene tab. This value is generally fine left at its default value,
at -9.810 in the Z-Axis, which is the force of gravity in the real world.
Lowering this value would simulate a lower or higher force of gravity.
Gravity denoted g, measurement *m* × *s*\ :sup:`-2`\).

Gravity is practically same around whole *Earth*.
For rendering scenes from *Moon* use value six times smaller, e.g. 1.622 *m* × *s*\ :sup:`-2`\.
The *Mars* has g = 3.69.

.. note::

   The gravity value per physics system can be scale down in the *Field Weights tab*.
