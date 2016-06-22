
..    TODO/Review: {{review|partial=X|text=
      missing some words on options that are explain in lighting and no explanation about Gather}} .


************
Introduction
************

.. figure:: /images/render-internal_world_panel.png

   World Panel.


Blender provides a number of very interesting settings to complete your renderings by adding a
nice background, and some interesting 'depth' effects.
These are accessible via the *World* tab.
By default a very plain uniform world is present. You can edit it or add a new World.

You have:

:doc:`Background </render/blender_render/world/background>`
   The color and texture of the world background, with special settings for mapping coordinates.

:doc:`Mist </render/blender_render/world/mist>`
   Add a mist to your scene to enhance the feeling of depth.

While these world settings offers a simple way of adding effects to a scene,
:doc:`compositing nodes </compositing/index>` are often preferred, though more complex to master,
for the additional control and options they offer.
For example, filtering the Z value (distance from camera) or normals (direction of surfaces)
through compositing nodes can further increase the depth and spacial clarity of a scene.


.. note::

   Some of the settings under the World panel in Blender affect lighting so you find them under the
   :doc:`Lighting </render/blender_render/lighting/index>` chapter
   (see :doc:`Ambient Light </render/blender_render/lighting/ambient_light>`,
   :doc:`Exposure </render/blender_render/lighting/exposure>` and
   :doc:`Ambient Occlusion </render/blender_render/lighting/ambient_occlusion>`).
   When using a *Sun Lamp* options for *Sky & Atmosphere*
   are available in the *Lamp* menu.
