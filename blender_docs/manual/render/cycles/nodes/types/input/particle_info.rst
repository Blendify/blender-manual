
******************
Particle Info Node
******************

.. figure:: /images/render_cycles_nodes_input_particle-info.png
   :align: right

   Particle Info Node.

The *Particle Info* node is for objects instanced from a :doc:`Particle System </physics/particles/index>`,
this node give access to the data of the particle that spawned the instance.

.. note::

   This node currently only supports parent particles, info from child particles is not available.

   .. is this still true? ^^


Inputs
======

This node has no inputs.


Properties
==========

This node has no properties.


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
