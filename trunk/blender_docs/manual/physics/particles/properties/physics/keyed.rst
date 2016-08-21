
***************
Keyed Particles
***************

.. figure:: /images/keyed.jpg

   Keyed Physics Settings.

The particle paths of keyed particles are determined from the emitter to another particle
system's particles. This allows creation of chains of systems with keyed physics to create
long strands or groovy moving particles. Basically the particles have no dynamics but are
interpolated from one system to the next at drawtime.


Setup
=====

To setup Keyed particles you need at least two particle systems.

The first system has keyed physics, and it needs the option First activated.
This will be the system thats is visible.

The second system may be another keyed system but without the option First,
or a normal particle system. This second system is the target of the keyed system.

Loops
   Sets the number of times the keys are looped. Disabled if *Use Timing* is enabled.


Keys
====

Key Targets
   You have to enter the name of the object which bears the target system and if there are
   multiple particle systems the number of the system.

   Click the :kbd:`Plus` to add a key, then select the object.

If you use only one keyed system the particles will travel in their lifetime from the emitter
to the target. A shorter lifetime means faster movement.
If you have more than one keyed system in a chain, the lifetime will be split equally.
This may lead to varying particle speeds between the targets.


Timing
======

Use Timing
   Timing works together with the Time slider for the other keyed systems in a chain.
   The Time slider allows to define a fraction of particle lifetime for particle movement.

An example:
let us assume that you have two keyed systems in a chain and a third system as target.
The particle lifetime of the first system shall be 50 keys.
The particles will travel in 25 frames from the first keyed system to the second,
and in further 25 frames from the second system to the target.
If you use the Timed button for the first system,
the Time slider appears in the second systems panel. Its default value is 0.5,
so the time is equally split between the systems. If you set Time to 1,
the movement from the first system to the second will get all the lifetime
(the particles will die at the second system).

If you set Time to 0 the particles will start at the second system and travel to the target.
