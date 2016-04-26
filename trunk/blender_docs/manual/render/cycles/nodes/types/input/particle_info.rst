
*************
Particle Info
*************

.. figure:: /images/cycles_nodes_particle-info.png
   :align: right

   Particle Info Node.

The *Particle Info* node is for objects instanced from a :doc:`Particle System </physics/particles/index>`,
this node give access to the data of the particle that spawned the instance.
This node currently only supports parent particles, info from child particles is not available.

.. is this still true? ^^


Outputs
=======

Index
   Index number of the particle (from 0 to number of particles).
Age
   Age of the particle in frames.
Lifetime
   Total lifespan of the particle in frames.
Location
   Location of the particle.
Size
   Size of the particle.
Velocity
   Velocity of the particle.
Angular Velocity
   Angular velocity of the particle.
