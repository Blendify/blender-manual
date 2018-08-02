
**********
Smoke Flow
**********

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Physics --> Force Fields`
   :Type:      Smoke Flow

The *Smoke Flow* force field create a force based on :doc:`Smoke simulation </physics/smoke/index>` air flow.

It applies smoke simulation air flow velocity as a force to other Blender simulations that use force fields.
To use it you need to add a *Smoke Flow* force field and select domain object for it.

For example fire sparkles could realistically flow along the air turbulence near fire.


Options
=======

.. figure:: /images/physics_force-fields_types_smoke-flow_panel.png

   UI for a Smoke Flow force field.

Domain Object
   An object that is used as a domain for smoke simulation.
Apply Density
   Adjust force strenght based on smoke density.
