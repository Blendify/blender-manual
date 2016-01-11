..    TODO/Review: {{review}} .

************
Introduction
************

Smoke simulation is used to simulate the fluid movement of air and generate animated :term:`voxel`
textures representing the density, heat, and velocity of other fluids or suspended particles
(i.e. smoke) which can be used for rendering.

.. add pretty smoke/fire render here?

Smoke and fire are emitted into a :doc:`Domain </physics/smoke/types/domain>`
from a mesh object or particle system. Smoke movement is controlled by airflow inside the domain,
 which can be influenced by :doc:`smoke collision objects </physics/smoke/types/collisions>`.
Smoke will also be affected by scene gravity and :doc:`force fields</physics/force_fields>`.
Airflow inside the domain can affect other physics simulations via the smoke flow force field.

Workflow
========

At least a :doc:`Domain Object </physics/smoke/types/domain>` object and
one :doc:`Flow object </physics/smoke/types/flow_object>` are required to create a smoke simulation.
A basic workflow looks like this:

1. Create a :doc:`Domain Object </physics/smoke/types/domain>` that defines the bounds of the simulation volume.
2. Define a :doc:`Flow object </physics/smoke/types/flow_object>` or objects which will emit smoke and fire.
3. Set :doc:`Collision objects </physics/smoke/types/collisions>` to make the smoke interact with objects in the scene.
4. Assign a :doc:`Volumetric material </physics/smoke/material>` to the domain object.
5. Save the .blend.
6. :doc:`Bake </physics/smoke/baking>` the simulation.

.. note::

   There is a *Quick Smoke* operator which will automatically create a domain object with a basic smoke/fire material.
   It can be found in :menuselection:`3D View --> Object --> Quick Effects --> Quick Smoke`,
   or in the :kbd:`Spacebar` search box.

Technical information
=====================

Blender's smoke simulation is based on the paper
`Wavelet Turbulence for Fluid Simulation <http://www.cs.cornell.edu/~tedkim/wturb>`__
and associated sample code.

It has been implemented in Blender by Daniel Genrich and Miika Hamalainen.
