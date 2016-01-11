
************
Smoke Domain
************

The domain object contains the entire simulation. Smoke and fire cannot leave the domain,
it will either collide with the edge or disappear, depending on the domain's settings.

Keep in mind that large domains require higher resolutions and longer bake times.
You'll want to make it just large enough that the simulation will fit inside it,
but not so large that it takes too long to compute the simulation.


To create a domain, add a cube (:kbd:`Shift-A` :menuselection:`Add --> Mesh --> Cube`)
and transform it until it encloses the area where you want smoke. Translation, rotation,
and scaling are all allowed. To turn it into a smoke domain, click *Smoke*
in :menuselection:`Properties --> Physics`, then select *Domain* as the *Smoke Type*.

.. note::

   You *can* use other shapes of mesh objects as domain objects,
   but the smoke simulator will use the shape's :term:`bounding box`
   as the domain bounds. In other words, the actual shape of the domain will still be rectangular.


.. figure:: /images/smoke_domain_settings.png

   *Smoke Domain* settings.


Settings
========

.. _smoke-resolution:

Resolution
   The smoke domain is subdivided into many "cells" called voxels (see :term:`voxel`) which make up "pixels" of smoke.
   This setting controls the number of subdivisions in the domain.
   Higher numbers of subdivisions are one way of creating higher resolution smoke (See `Smoke High Resolution`_)

   Since the resolution is defined in terms of *subdivisions*,
   larger domains will need more divisions to get an equivalent resolution to a small domain.


   Also see `Note on Divisions and High Resolution`_.


Time Scale
   Controls the speed of the simulation. Low values result in a "slow motion" simulation,
   while higher values can be used to advance the simulation faster
   (useful for generating smoke for use in still renders).

Border Collisions
   Controls which sides of the domain will allow smoke "through" the domain,
   making it disappear without influencing the rest of the simulation,
   and which sides will deflect smoke as if colliding with a
   :doc:`Collision Object</physics/smoke/collisions>`.

   Vertically Open
      Smoke disappears when it hits the top or bottom of the domain, but collides with the walls.

   Open
      Smoke disappears when it hits any side of the domain.

   Collide All
      Smoke collides with all sides of the domain.

Density
   Controls how much smoke is affected by density.

   * Values above 0 will cause the smoke to rise (simulating smoke which is lighter than ambient air).
   * Values below 0 will cause smoke to sink (simulating smoke which is heavier than ambient air).

.. _smoke-domain-temp-diff:

Temp. Diff.
   The *Temperature Difference* setting controls how much smoke is affected by temperature.

   The effect this setting has on smoke depends on the
   :ref:`per flow object *Temp. Diff.* setting <smoke-flow-temp-diff>`:

   - Values above 0 will result in the smoke rising when the flow object *Temp. Diff.* is set to a positive value,
     and smoke sinking when the flow object *Temp. Diff.* is set to a negative value.
   - Values below 0 will result in the opposite of positive values, i.e.
     smoke emitted from flow objects with a positive *Temp. Diff.* will sink,
     and smoke from flow objects with a negative *Temp. Diff.* will rise.

   Note that smoke from multiple flow objects with different temperatures
   will mix and warm up/cool down until an equilibrium is reached.


Vorticity
   Controls the amount of turbulence in the smoke. Higher values will make lots of small swirls,
   while lower values make smoother shapes.

   .. figure:: /images/smoke_domain_vorticity.jpg

      Comparison of different amounts of vorticity. The domain on the left has a vorticity of 3,
      while the domain on the right has a vorticity of .01.

Dissolve
   Allow smoke to dissipate over time.

Time
   Speed of smoke's dissipation in frames.

Slow
   Dissolve smoke in a logarithmic fashion. Dissolves quickly at first, but lingers longer.


Smoke Flames
============

Speed
   How fast fuel burns. Larger values result in smaller flames (fuel burns before it can go very far),
   smaller values result in larger flames (fuel has time to flow farther before being fully consumed).

Smoke
   Amount of extra smoke created automatically to simulate burnt fuel.

Vorticity
   Additional vorticity for flames.

Ignition
   Minimum temperature of flames.

Maximum
   Maximum temperature of flames.

Smoke Color
   Color of smoke created by burnt fuel.


Smoke Adaptive Domain
=====================

When enabled, the domain will adaptively shrink to best fit the smoke,
saving computation time by leaving voxels without smoke out of the simulation.
Unless the *Additional* option is used, the adaptive domain will not exceed the bounds of the original domain.

Additional
   Number of voxels to add around the outside of the domain.

Margin
   Amount of extra space to leave around smoke, measured in voxels.
   With very fast moving smoke larger margins may be required to prevent the smoke from being cut off by the adaptive
   boundary, but note this will increase the number of voxels which need to be computed.

Threshold
   Smallest amount of smoke a voxel can contain before it's considered empty and the adaptive domain is allowed to cut
   it out of the simulation.


.. _smoke-high-resolution:

Smoke High Resolution
=====================

The High Resolution option lets you simulate at low resolution and then uses noise techniques
to enhance the resolution without actually computing it. This allows animators to set up a low
resolution simulation quickly and later add details without changing the overall fluid motion.
Also see `Note on Divisions and High Resolution`_.

Resolution/Divisions
   Factor by which to enhance the resolution of smoke using the specified noise method.

Show High Resolution
   Show high resolution in the viewport (may cause viewport responsiveness to suffer).

Noise Method
   The two options, *Wavelet* and *FFT*, are very similar.

   .. figure:: /images/smoke_domain_high_resolution_method.jpg

      Comparison of noise methods. *Wavelet* on the left, *FFT* on the right.

   .. note::
      *Wavelet* is an implementation of `Turbulence for Fluid Simulation
      <https://graphics.ethz.ch/research/physics_animation_fabrication/simulation/turb.php>`__.

Strength
   Strength of noise.

   .. figure:: /images/smoke_domain_high_resolution_strength.jpg

      From left to right, the domains' high resolution strengths are set to 0, 2, and 6.


Smoke Groups
============

Flow Group
   If set, only objects in the specified :ref:`Group <grouping-objects>`
   will be allowed to act as flow objects in this domain.

Collision Group
   If set, only objects in the specified :ref:`Group <grouping-objects>`
   will be allowed to act as collision objects in this domain.


Smoke Cache
===========

See :doc:`Baking</physics/smoke/baking>`.

.. _smoke-field-weights:

Smoke Field Weights
===================

These settings determine how much gravity and :doc:`Force Fields</physics/force_fields>` affect the smoke.

Effector Group
   When set, smoke can only be influenced by force fields in the specified group.

Gravity
   How much the smoke is affected by Gravity.

All
   Overall influence of all force fields.

The other settings determine how much influence individual force field types have.

.. figure:: /images/smoke_domain_force_field_demo.jpg

   Smoke with a wind force field.


Note on Divisions and High Resolution
=====================================

:ref:`High Resolution Divisions <smoke-high-resolution>`
and :ref:`Domain Subdivisions <smoke-resolution>` are not equivalent.
By using different combinations of these resolution settings you can obtain a variety of different styles of smoke.

.. figure:: /images/smoke_domain_high_resolution_comparison.jpg

   Comparison between a domain with 24 divisions and 4 *High Resolution* divisions (left),
   and a domain with 100 divisions and 1 *High Resolution* division (right).

Low division simulations with lots of *High Resolution*
divisions generally appear smaller in real-world scale
(larger flames etc.) and can be used to achieve pyroclastic plumes such as this:

.. figure:: /images/smoke_domain_note_on_resolution.jpg

High *Domain Division* simulations tend to appear larger in real-world scale, with many smaller details.
