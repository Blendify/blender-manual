
************
Introduction
************

.. _render_cycles_settings_scene_simplify:
.. _bpy.types.CyclesRenderSettings.texture_limit:
.. _bpy.types.CyclesRenderSettings.use_camera_cull:
.. _bpy.types.CyclesRenderSettings.camera_cull_margin:
.. _bpy.types.CyclesRenderSettings.use_distance_cull:
.. _bpy.types.CyclesRenderSettings.distance_cull_margin:

Simplify
========

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`Properties editor --> Scene --> Simplify`

.. figure:: /images/render_cycles_settings_scene_simplify.png


Texture Limit
   Automatically scales textures down textures so they are no larger than the values chosen.
   This can help large scenes that use huge textures to still fit into the computer's memory resources.

Use Camera Cull
   Automatically culls objects based on the camera frustum defined by the *Margin*.
Use Distance Cull
   Automatically culls objects based on their distance from the active camera.
   This is set via the *Distance* property.

.. seealso::

   There are also several non render engine specific settings which
   are documented :ref:`here <data-system_scenes_properties_simplify>`.
