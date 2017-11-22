
************
Introduction
************

Force Fields offer a way to influence a simulation, in example to add extra movement.
:doc:`Particles </physics/particles/index>`, :doc:`Soft Bodies </physics/soft_body/index>`,
`Rigid Bodies </physics/rigid_body/index>`, and :doc:`Cloth objects </physics/cloth/index>`
can all be affected by forces fields.
Force Fields automatically affect everything.
To remove a simulation or particle system from their influence,
simply turn down the influence of that type of Force Field in its Field Weights panel.

- All types of objects and particles can generate fields,
  but only curve object can bear *Curve Guides* fields.
- Force Fields can also be generated from particles.
  See :doc:`Particle Physics </physics/particles/emitter/physics/index>`
- The objects need to share at least one common layer to have effect.

You may limit the effect on particles to a group of objects
(see the :doc:`Particle Physics </physics/particles/emitter/physics/index>` page).

.. list-table:: Force field types

   * - .. figure:: /images/physics_force-fields_introduction_empty.png

     - .. figure:: /images/physics_force-fields_types_vortex_visualzation.png

   * - .. figure:: /images/physics_force-fields_types_wind_visualzation.png

     - .. figure:: /images/physics_force-fields_types_force_visualzation.png

.. Force, Wind, Vortex, Magnetic, Harmonic, Charge, Lennard Jones,
   Texture, Curve Guide, Boid, Turbulence, Drag, and Smoke Flow.


Creating a Force Field
======================

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Panel:    :menuselection:`Physics --> Fields`

To create a single Force Field,
you can select :menuselection:`Add --> Force Field` and select the desired force field.
This method creates an Empty with the force field attached.

To create a field from an existing object you have to select the object and change to the
*Physics* tab. Select the field type in the *Fields* menu.

The fields have many options in common,
these common options are explained for the *Spherical* field.

.. note::

   After changing the fields *Fields* panel or deflection
   *Collision* panel settings, you have to recalculate the particle,
   softbody or cloth system by *Free Cache*, this is not done automatically. You can
   clear the cache for all selected objects with :kbd:`Ctrl-B` :menuselection:`--> Free cache selected`.

   Particles react to all kinds of *Force Fields*,
   Soft Bodies only to *Spherical*, *Wind*, *Vortex*
   (they react on *Harmonic* fields but not in a useful way).


Common Field Settings
=====================

Most Fields have the same settings, even though they act very differently.
Settings unique to a field type are described below.
Curve Guide and Texture Fields have very different options.

Shape
   The field is either a:

   Point
      Point with omni-directional influence.
   Plane
      Constant in the XY-plane, changes only in Z direction.
   Surface
      ToDo.
   Every Point
      ToDo.
Strength
   The strength of the field effect.
   This can be positive or negative to change the direction that the force operates in.
   A force field's strength is scaled with the force object's scale,
   allowing you to scale up and down scene, keeping the same effects.
Flow
   Convert effector force into air flow velocity.
Noise
   Adds noise to the strength of the force.
Seed
   Changes the seed of the random noise.
Effect Point
   You can toggle the field's effect on particle *Location* and *Rotation*.

Collision Absorption
   Force gets absorbed by collision objects.


Falloff
-------

Here you can specify the shape of the force field
(if the *Fall-off* Power is greater than 0).

Falloff Type
   Sphere
      Falloff is uniform in all directions, as in a sphere.
   Tube
      Fall off results in a tube shaped force field.
      The Field's *Radial falloff* can be adjusted,
      as well as the *Minimum* and *Maximum* distances of the field.
   Cone
      Fall off results in a cone shaped force field. Additional options are the same as those of *Tube* options.

Z Direction
   *Fall-off* can be set to apply only in the direction of the positive Z Axis, negative Z Axis, or both.
Power (Power)
   How the power of the force field changes with the distance from the force field.
   If *r* is the distance from the center of the object, the force changes with 1/ *r*\ :sup:`power`.
   A *Fall-off* of 2 changes the force field with 1/ *r*\ :sup:`2`,
   which is the falloff of gravitational pull.

Max Distance
   Makes the force field only take effect within a specified maximum radius
   (shown by an additional circle around the object).
Min Distance
   The distance from the object center, up to where the force field is effective with full strength.
   If you have a *Fall-off* of 0 this parameter does nothing,
   because the field is effective with full strength up to *Max Distance* (or the infinity).
   Shown by an additional circle around the object.
