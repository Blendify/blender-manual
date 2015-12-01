
********************************
No Collision Physics Object Type
********************************

"No Collision" objects in the :doc:`Game Engine </game_engine/index>` are completely unaffected by
:doc:`Physics </game_engine/physics/index>`, and do cause physics reactions.
They are useful as pure display objects, such as the child of a *Custom Collision Hull*
(:ref:`game_engine-physics-object-collision_bounds`).

For more documentation, see the :doc:`Top BGE Physics page </game_engine/physics/index>`.


Options
=======

The only option available on No Collision types is:

Invisible
   Does not display, the same as setting the object to unrendered
   (such as unchecking the "Camera" icon in the Outliner). Python property: ``obj.use_render``
