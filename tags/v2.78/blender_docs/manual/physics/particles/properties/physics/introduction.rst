
************
Introduction
************

The movement of particles may be controlled in a multitude of ways.
With particles physics: there are five different systems:

None (`No Physics`_)
   It does not give the particles any motion, which makes them belong to no physics system.
:doc:`Newtonian </physics/particles/properties/physics/newtonian>`
   Movement according to physical laws.
:doc:`Keyed </physics/particles/properties/physics/keyed>`
   Dynamic or static particles where the (animated) targets are other particle systems.
:doc:`Boids </physics/particles/properties/physics/boids>`
   Particles with limited artificial intelligence, including behavior and rules programming,
   ideal for flocks of birds or schools of fishes, or predators vs preys simulations.
:doc:`Fluid </physics/particles/properties/physics/fluid>`
   Movement according to fluid laws (based on Smoothed Particle Hydrodynamics technique).

Additional ways of moving particles:

- By softbody animation (only for Hair particle systems).
- By forcefields and along curves.
- By lattices.

Here we will discuss only the particle physics in the narrower sense, i.e.
the settings in the Physics panel.


Common Physics Settings
=======================

Size
   Sets the size of the particles.
Random Size
   Give the particles a random size variation.
Mass
   Specify the mass of the particles.
Multiply mass with particle size
   Causes larger particles to have larger masses.


No Physics
----------

At first a Physics type that makes the particles do nothing could seem a bit strange,
but it can be very useful at times.
None physics make the particles stick to their emitter their whole life time. The initial
velocities here are for example used to give a velocity to particles that are affected
by a harmonic effector with this physics type when the effect of the effector ends.

Moreover, it can be very convenient to have particles at disposal
(whose both Unborn and Died are visible on render)
to groom vegetation and/or ecosystems using Object, Group or Billboard types of visualization.
