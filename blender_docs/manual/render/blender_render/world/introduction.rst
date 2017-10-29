..    TODO/Review: {{review|partial=X|text=
      missing some words on options that are explain in lighting and no explanation about Gather}}.

************
Introduction
************

.. figure:: /images/render_blender-render_world_introduction_world-panel.png

   World tab.

The world buttons let you set up the shading of your scene in general.
It can provide ambient color, and special effects such as mist,
but a very common use of a *World* is to shade a background color.

These are accessible via the *World* tab.

You have:

:doc:`Background </render/blender_render/world/world_panel>`
   The color and texture of the world background, with special settings for mapping coordinates.
:doc:`Mist </render/blender_render/world/mist>`
   Add a mist to your scene to enhance the feeling of depth.

While these world settings offer a simple way of adding effects to a scene,
:doc:`compositing nodes </compositing/index>` are often preferred, though more complex to master,
for the additional control and options they offer.
For example, filtering the Z value (distance from camera) or normals (direction of surfaces)
through compositing nodes can further increase the depth and spacial clarity of a scene.
