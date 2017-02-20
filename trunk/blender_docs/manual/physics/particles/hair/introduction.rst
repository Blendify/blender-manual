
************
Introduction
************

When set to hair type, particle system creates only static particles,
which may be used for hair, fur, grass and the like.

.. figure:: /images/physics_particles_hair_example.jpg

   Particle hair systems example. Used for the grass and fur.


Growing
=======

The first step is to create the hair, specifying the amount of hair strands and their lengths.

The complete path of the particles is calculated in advance.
So everything a particle does a hair may do also.
A hair is as long as the particle path would be for a particle with a lifetime of 100 frames.
Instead of rendering every frame of the particle animation point by point there are calculated
control points with an interpolation, the segments.


Styling
=======

The next step is to style the hair. You can change the look of base hairs by changing the
:doc:`Physics Settings </physics/particles/emitter/physics/index>`.

A more advanced way of changing the hair appearance is to use
:doc:`Children </physics/particles/emitter/children>`.
This adds child hairs to the original ones, and has settings for giving them different types of shapes.

You can also interactively style hairs in :doc:`Particle Edit Mode </physics/particles/mode>`.
In this mode, the particle settings become disabled, and you can comb, trim, lengthen, etc. the hair curves.


Animating
=========

Hair can now be made dynamic using the cloth solver.
This is covered in the :ref:`Hair Dynamics <hair-dynamics>` page.


Rendering
=========

Blender can render hairs in several different ways. Materials have a Strand section,
which is covered in the materials section in the
:doc:`Strands Page </render/blender_render/materials/properties/strands>`.

Hair can also be used as a basis for the
:doc:`Particle Instance Modifier </modeling/modifiers/simulate/particle_instance>`,
which allows you to have a mesh be deformed along the curves,
which is useful for thicker strands, or things like grass, or feathers, which may have a more specific look.
