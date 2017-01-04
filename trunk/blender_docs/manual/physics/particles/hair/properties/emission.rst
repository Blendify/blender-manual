
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
