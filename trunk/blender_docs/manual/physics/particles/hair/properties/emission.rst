
*******
Options
*******

.. figure:: /images/physics_particle_system_hairsettings.jpg

   Hair particle system settings.


Regrow
   Regrows the hair for each frame. This is useful when you are animating options.
Advanced
   Enables advanced settings which reflect the same ones as working in Emitter mode.

   .. note::

      This manual assumes that this option is enabled.

Segments
   Controls the number of parts a hair is made of.
   Increasing this value will improve the quality of animations.


Emission
========

Amount
   Set the amount of hair strands. Use as little particles as possible,
   especially if you plan to use softbody animation later.
   But you need enough particles to have good control.
   For a "normal" haircut I found some thousand (very roughly 2000) particles to give enough control.
   You may need a lot more particles if you plan to cover a body with fur.
   Volume will be produced later with *Children*.
Hair Length
  Controls how long the hair are.


.. _hair-dynamics:

Hair Dynamics
=============


Hair particles can have dynamic properties using physics.

To enable hair physics, click the check box beside *Hair Dynamics*.

.. Particle type: you can also animate the strands with :doc:`Cloth Simulation </physics/cloth/index>`.


Structure
---------

Mass
   Value for the mass of the hair.
Stiffness
   Controls how stiff the root of the hair strands are.

   Random
      Random stiffness of hair.

Damping
   Damping of bending motion.


Volume
------

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


Display
=======

Rendered
   Draw hair as curves.
Path
   Draw just the end points if the hairs.

Steps
   The number of segments (control points minus 1) of the hair strand.
   In between the control points the segments are interpolated. The number of control points is important:

   - For the softbody animation, because the control points are animated like vertices,
     so more control points mean longer calculation times.
   - For the interactive editing, because you can only move the control points
     (but you may recalculate the number of control points in *Particle Edit Mode*).

   .. hint:: Segments

      Ten Segments should be sufficient even for very long hair,
      five Segments are enough for shorter hair, and two or three segments should be enough for short fur.


Children
========

See :doc:`Children </physics/particles/properties/children>`.


Render
======

Hair can be rendered as a Path, Object, or Group.
See :doc:`Particle Visualization </physics/particles/properties/display>` for descriptions.

.. seealso::

   `Blender Hair Basics <https://www.youtube.com/watch?v=kpLaxqemFU0>`__,
   a thorough overview of all of the hair particle settings.
