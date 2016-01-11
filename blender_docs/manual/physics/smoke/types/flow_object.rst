
*****************
Smoke Flow Object
*****************

*Smoke Flow* objects are used to add or remove smoke and fire
to a :doc:`Smoke Domain </physics/smoke/types/domain>` object.

To define any mesh object as a *Smoke Flow* object, add smoke physics by clicking *Smoke*
in :menuselection:`Properties --> Physics`. Then select *Flow* as the *Smoke Type*.
Now you should have a default smoke flow source object. You can test this by playing the animation
(:kbd:`Alt-A`) from the first frame. If your source object is inside your domain, you should see smoke.


Settings
========

.. figure:: /images/smoke_flow_settings.png

   *Smoke Flow* settings


Flow Type
---------

Fire
   Emit only fire. Note that the domain will automatically create some smoke to simulate smoke left by burnt fuel.

Smoke
   Emit only smoke.

Fire + Smoke
   Emit both fire and smoke.

Outflow
   Remove smoke and fire. Note that the shape of the outflow will use the object's :term:`bounding box`.

Flow Source
-----------

Source
   This setting defines the method used to emit smoke and fire.

   Mesh
      Create smoke/fire directly from the object's mesh.
      With this option selected there two additional settings, *Surface* and *Volume*.

         .. _smoke-flow-surface:

         Surface
            Maximum distance in voxels from the surface of the mesh in which smoke is created (see :term:`voxel`).
            Since this setting uses voxels to determine distance,
            results will vary depending on the domain's resolution.

         Volume
            Amount of smoke to emit inside the emitter mesh, where 0 is none and 1 is
            Note that emitting smoke based on volume may have unpredictable results
            if your mesh is :term:`non-manifold`.

   Particle System
      Create smoke/fire from a particle system on the flow object. Note that only *Emitter* type particle systems
      can add smoke.
      See :doc:`Particles </physics/particles/introduction>` for information on how to create a particle system.

      With this option selected there is a box to select a particle system and one addition setting, *Set Size*.

         Set Size
            When this setting is enabled it allows the *Size* setting to define
            the maximum distance in voxels at which particles can emit smoke,
            similar to the :ref:`*Surface* <smoke-flow-surface>` setting for mesh sources.

            When disabled, particles will fill the nearest :term:`voxel` with smoke.

Initial Velocity
   When enabled, smoke will inherit the momentum of the flow source.

   Source
      Multiplier for inherited velocity. A value of 1 will emit smoke moving at the same speed as the source.

   Normal
      When using a mesh source,
      this option controls how much velocity smoke is given along the source's :term:`normal`.


Initial Values
--------------

Smoke Color
   Color of emitted smoke. When smoke of different colors are mixed they will blend together,
   eventually settling into a new combined color.

   .. figure:: /images/smoke_flow_color_blending.jpg

Flame Rate:
   Amount of "fuel" being burned per second. Larger values result in larger flames,
   smaller values result in smaller flames:

   .. figure:: /images/smoke_flow_flame_rate.jpg

      Example showing two fire sources.
      The object on the left has a *Flame Rate* of 5, while the one on the right has 0.3.

Absolute Density
   Maximum density of smoke allowed within range of the source.

Density
   Amount of smoke to emit at once.

.. _smoke-flow-temp-diff:

Temp. Diff.
   Difference between the temperature of emitted smoke and the domain's ambient temperature.
   This setting's effect on smoke depends on the :ref:`domain's *Temp. Diff.* setting <smoke-domain-temp-diff>`.

Sampling
   Number of sub-frames used to reduce gaps in emission of smoke from fast-moving sources.

   .. figure:: /images/smoke_flow_subframes.jpg

      Example showing two fast moving sources.
      The object on the left uses 0 subframes, while the one on the right uses 6.


Smoke Flow Advanced
-------------------

.. figure:: /images/smoke_flow_advanced.png

When using a mesh as the *Flow Source*, you can use these settings to control where on the
mesh smoke can be emitted from. These settings have no effect on outflow objects.

Use Texture
   When enabled, use the specified texture to control where smoke is emitted.

Vertex Group
   When set, use the specified :doc:`Vertex Group </modeling/meshes/vertex_groups/vertex_groups>`
   to control where smoke is emitted.

These settings are useful for effects like this:

.. figure:: /images/smoke_flow_texture_usecase.jpg
