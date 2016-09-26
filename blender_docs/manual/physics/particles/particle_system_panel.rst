
*********************
Particle System Panel
*********************

.. figure:: /images/physics_particle_system_panel.png

   Particle System Panel.

Active Particle System
   The :ref:`List View <ui-list-view>` of the objects Particle Modifier(s).

Particle Settings
   The :ref:`Data-Block menu <ui-data-block>` for settings.

Type
   Main selector of the system type.

   Emitter
      In such a system particles are :doc:`emitted </physics/particles/properties/emission>` from the object.
   Hair
      The :doc:`Hair </physics/particles/hair/index>` type is rendered as strands.
Seed
   This initial value for random properties can be used to create a look, which is slightly different,
   even when using the same settings.


Workflow
========

The process for working with standard particles is:

- Create the mesh which will emit the particles.
- Create one or more Particle Systems to emit from the mesh.
  Many times, multiple particle systems interact or merge with each other to achieve the overall desired effect.
- Tailor each Particle System's settings to achieve the desired effect.
- Animate the base mesh and other particle meshes involved in the scene.
- Define and shape the path and flow of the particles.
- For :doc:`Hair </physics/particles/hair/index>` particle systems: Sculpt the emitter's flow
  (cut the hair to length and comb it for example).
- Make final render and do physics simulation(s), and tweak as needed.


Creating a Particle System
--------------------------

.. figure:: /images/physics_particle_system_createnew.jpg

   Adding a particle system.


To add a new particle system to an object, go to the *Particles* tab of the 
Properties editor and click the small ``+`` button.
An object can have many Particle Systems.

Each particle system has separate settings attached to it.
These settings can be shared among different particle systems, so one does not have to copy
every setting manually and can use the same effect on multiple objects.


Types of Particle systems
^^^^^^^^^^^^^^^^^^^^^^^^^

.. _fig-particle-intro-system-type:

.. figure:: /images/physics_particle_system_selecttype.jpg

   Particle System Types.

After you have created a particle system,
the Properties editor fills with many panels and buttons.
But do not panic! There are two different types of particle systems,
and you can change between these two with the *Type* drop-down list:
Emitter and Hair.

The settings in the *Particle System* tab are partially different for each system type.
For example, in :ref:`fig-particle-intro-system-type` they are shown for only system type *Emitter*.
