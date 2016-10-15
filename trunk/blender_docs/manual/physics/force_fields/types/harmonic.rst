
********
Harmonic
********

.. figure:: /images/physics_force-fields_introduction_visual-1_empty.png

   Harmonic force field.

In a *Harmonic* force field,
the source of the force field is the zero point of a harmonic oscillator (spring, pendulum).
If you set the *Damping* parameter to 1,
the movement is stopped in the moment the object is reached.
This force field is really special if you assign it to particles.

.. figure:: /images/force_field_panel_harmonic.jpg

   UI for a Harmonic force field.

Rest Length
   Controls the rest length of the harmonic force.
Multiple Springs
   Causes every point to be affected by multiple springs.

Normally every particle of the field system influences every particle of the target system.
Not with *Harmonic* ! Here every target particle is assigned to a field particle.
So particles will move to the place of other particles, thus forming shapes.

Tutorial: `Particles forming Shapes
<https://en.wikibooks.org/wiki/Blender_3D:_Noob_to_Pro/Particles_forming_Shapes>`__.

.. vimeo:: 173822500
