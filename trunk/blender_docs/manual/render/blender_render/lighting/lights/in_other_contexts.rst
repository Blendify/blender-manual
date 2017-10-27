
**********************
Lamps Related Settings
**********************

Here are some options closely related to light sources, without being lamps settings.


Lighting Groups
===============

Materials
---------

.. figure:: /images/render_blender-render_lighting_lights_in-other-contexts_materials.png

   Light Group options for Materials.


By default, materials are lit by all lamps in all visible layers, but a material
(and thus all objects using that material) can be limited to a single group of lamps.
This sort of control can be incredibly useful, especially in scenes with complex lighting setups.
To enable this, navigate to the *Material* menu's *Options*
panel and select a group of lamps in the *Light Group* field.
Note that a :doc:`light group </editors/3dview/object/properties/relations/groups>` must be created first.

If the *Exclusive* button is enabled,
lights in the specified group will *only* affect objects with this material.


Render Layers
-------------

.. figure:: /images/render_blender-render_lighting_lights_in-other-contexts_render-layers.png

   Light Group options for Render Layers.


There is a similar control located in the *Layer panel* of the
:doc:`Render Layers </render/post_process/layers>` tab.
If a light group name is selected in this *Light* field,
the scene will be lit exclusively by lamps in the specified group.

.. seealso::

   - :doc:`Lamps Introduction </render/blender_render/lighting/lamps/introduction>`
   - :doc:`Shadows </render/blender_render/lighting/shadows/introduction>`
   - :doc:`Materials Introduction </render/blender_render/materials/index>`
