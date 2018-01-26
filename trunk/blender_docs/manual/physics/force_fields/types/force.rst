
*****
Force
*****

.. admonition:: Reference
   :class: refbox

   | Panel:    :menuselection:`Physics --> Force Fields`
   | Type:     Force

.. figure:: /images/physics_force-fields_types_force_visualzation.png

   Force force field.

The *Force* field is the simplest of the fields. It gives a constant force towards
(positive strength) or away from (negative strength) the object's center.
Newtonian particles are attracted to a field with negative strength,
and are blown away from a field with positive strength.

.. figure:: /images/physics_force-fields_types_force_panel.png

   UI for a Force force field.

For :doc:`Boids Particles </physics/particles/emitter/physics/index>`
a field with positive strength can be used as a *Goal*,
a field with negative strength can be used as *Predator*.
Whether *Boids* seek or fly goals/predators depends on the *Physics* settings of the Boids.

.. vimeo:: 173807488
