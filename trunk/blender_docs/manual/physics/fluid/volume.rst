
****************************
Controlling the fluid volume
****************************

To control the volume of the fluid simulation,
you can set objects in the scene to add or absorb fluid within the :doc:`Fluid Domain </physics/fluid/domain>`.


Inflow
======

.. figure:: /images/fluids_inflow.jpg
   :width: 300px

   Fluid inflow settings

Volume initialization type

    Volume
       The inside of the object is initialized as fluid all . This works only if the closed mesh .
    Shell
       It is initialized as a thin fluid layer of the surface of the mesh . This can also be used in the mesh open.
    Both
       It is a state , such as the sum of the Volume and Shell. This also must be a closed mesh.

.. figure:: /images/physics_fluid_initialization.jpg

   Example of different types of initiation of volume

This object will put fluid into the simulation, like a water tap.


Inflow velocity
   Speed of the fluid that is created inside of the object.

Local Coords / Enable
   Use local coordinates for the inflow.
   This is useful if the inflow object is moving or rotating, as the inflow stream will
   follow/copy that motion. If disabled, the inflow location and direction do not change.

Animated Mesh/Export
   Click this button if the network is animated (e.g. Deformed by an armature,
   shape keys (shape keys) or lattice).
   It can become very slow and is not necessary if the network is animated IPO position and rotation
   (ie only object transformations).

Outflow
=======

.. figure:: /images/fluids_outflow.jpg
   :width: 300px

   Fluid outflow settings


Any fluid that enters the region of this object will be deleted (think of a drain or a black hole).
This can be useful in combination with an inflow to prevent the whole domain from filling up.
When enabled, this is like a tornado (waterspout) or "wet vac" vacuum cleaner,
and the part where the fluid disappears will follow the object as it moves around.

The Volume initializations are the same for Outflow as there are for Inflow.
