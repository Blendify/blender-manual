.. _hair-dynamics:

*************
Hair Dynamics
*************


Hair particles can have dynamic properties using physics.
To enable hair physics, click the check box beside *Hair Dynamics*.


Structure
---------

Mass
   Value for the mass of the hair.
Stiffness
   Controls the bending stiffness of the hair strands.

   Random
      Random stiffness of hair.

Damping
   Damping of bending motion.


Volume
------

Some phenomena of real world hair can be simulated more efficiently using a volumetric model instead
of the basic geometric strand model. This means constructing a regular grid such as those used in
fluid simulations and interpolating hair properties between the grid cells.

Air Drag
   Controls how thick the hair is around the hair causing the hair to flow slower.
Internal Friction
   Amount of friction between individual hairs.

Density Target
   Maximum density if the hair.

   Strength
      The influence that the *Density Target* has on the simulation.

Voxel Grid Cell Size
   Size of the voxel grid cells for interaction effects.


Pinning
-------

Goal Strength
   Spring stiffness of the vertex target position.


Quality
-------

Steps
   Quality of the simulation in steps per frame. (higher is better quality but slower).
Hair Grid
   Show hair simulation grid.

.. warning::

   If you use motion blur in your animation,
   you will need to bake one extra frame past the last frame which you will be rendering.
