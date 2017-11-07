.. _bpy.types.VisibilityActuator:

*******************
Visibility Actuator
*******************

The *Visibility Actuator* allows the user to change the visibility of objects during runtime.

.. note::

   Using the visibility actuator will save on Rasterizer usage, however, not Physics,
   and so is limited in terms of Level of Detail (LOD). For LOD look at replace mesh,
   but be aware that the logic required can negate the effect of the LOD.

.. figure:: /images/game-engine_logic_actuators_types_visibility_node.jpg
   :width: 271px

   Visibility actuator.


Properties
==========

See :doc:`Actuator Common Options </game_engine/logic/actuators/common_options>` for common options.

Visible
   Toggle checkbox to toggle visibility.
Occlusion
   Toggle checkbox to toggle occlusion. Must be initialized from the *Physics* tab.
Children
   Toggle checkbox to toggle recursive setting -- will set visibility / occlusion state
   to all child objects, children of children (recursively).


Example
=======

TODO.
