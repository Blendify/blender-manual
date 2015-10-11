**********
Collisions
**********

*Smoke Collision* objects are used to deflect smoke and influence airflow.


To define any mesh object as a *Smoke Collision* object,
add smoke physics by clicking *Smoke* in :menuselection:`Properties --> Physics`.
Then select *Collision* as the *Smoke Type*.


.. figure:: /images/smoke_collision_settings.png

   *Smoke Collision* settings


.. TODO, can't figure out what the differences between the collision types are :/
.. Wild speculation on SE: http://blender.stackexchange.com/q/1723/599

.. Lukas Toenne investigated this (https://developer.blender.org/T45842#329325) and it appears that rigid and static
   are the same.

Collision type
   Static
      Simple collision model which can be calculated quickly, but may be inaccurate for moving objects.

   Animated
      More complex collision model which takes into account impulse imparted to smoke when the collider is moving.
      Calculations are slower, but more accurate for moving objects.

   Rigid
      Identical to *Static* (unfinished code).

Forces
======

:doc:`Force Fields</physics/force_fields>` (such as wind or vortex) are supported, like most physics systems.
The influence individual force types have :ref:`can be controlled per domain object <smoke-field-weights>`.
