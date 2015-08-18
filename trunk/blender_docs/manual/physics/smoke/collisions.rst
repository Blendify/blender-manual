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

Collision type
	Type of collision object



Forces
======

:doc:`Force Fields</physics/force_fields>` (such as wind or vortex) are supported, like most physics systems.
The influence individual force types have :ref:`can be controlled per domain object <smoke-field-weights>`.
