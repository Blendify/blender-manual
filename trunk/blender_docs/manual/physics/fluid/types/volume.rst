
****************************
Controlling the Fluid Volume
****************************

To control the volume of the fluid simulation,
you can set objects in the scene to add or absorb fluid within the :doc:`Fluid Domain </physics/fluid/types/domain>`.


Inflow
======

.. figure:: /images/physics_fluid_types_inflow.png

   Fluid Inflow Settings

Volume Initialization Type
   See :ref:`Volume Initialization Type <fluid-initialization>`

This object will put fluid into the simulation, like a water tap.


Inflow Velocity
   Speed of the fluid that is created inside of the object.

Local Coords/Enable
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

.. figure:: /images/physics_fluid_types_outflow.png

   Fluid Outflow Settings


Any fluid that enters the region of this object will be deleted (think of a drain or a black hole).
This can be useful in combination with an inflow to prevent the whole domain from filling up.
When enabled, this is like a tornado (waterspout) or "wet vac" vacuum cleaner,
and the part where the fluid disappears will follow the object as it moves around.

Volume Initialization Type
   See :ref:`Volume Initialization Type <fluid-initialization>`
