.. _bpy.types.ShaderNodeParticleInfo:

.. --- copy below this line ---

******************
Particle Info Node
******************

:guilabel:`Cycles Only`

.. figure:: /images/render_shader-nodes_input_particle-info_node.png
   :align: right

   Particle Info Node.

The *Particle Info* node can be used in the material node tree for objects that are used as the Dupli Objects,
when you use *Object* or *Group* :doc:`Render mode </physics/particles/emitter/render>` of a Particle System.

This node gives access to the data of the particle that spawned the object instance.
It can be useful to give some variation to a single material assigned to multiple instances of Dupli Object.

.. note::

   This node currently only supports parent particles. Info from child particles is not available.

   .. (TODO) is this still true? ^^


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
Random
   A random per-particle value in the range from 0 to 1.
   It can for example be used in combination with a color ramp, to randomize the particle color.
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
