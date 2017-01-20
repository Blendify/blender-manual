
************
Shadow Panel
************

.. figure:: /images/lighting-shadow-common-properties.png
   :width: 310px

   Common shadowing options for lamps.


All lamps able to cast shadows. Share some options, described below:

Shadow Method
   No Shadow
      The lamp casts no shadow.
   Buffered Shadow
      The :doc:`Spot lamp </render/blender_render/lighting/lamps/spot/buffered_shadows>`
      is the only lamp able to cast buffered shadows.
   Raytraced Shadows
      :doc:`Ray-traced Properties </render/blender_render/lighting/shadows/raytraced_properties>`.
This Layer Only
   When this option is enabled, only the objects on the same layer as the light source will cast shadows.
Only Shadow
   The light source will not illuminate an object but will generate the shadows that would normally appear.
   This feature is often used to control how and where shadows fall by having a light which
   illuminates but has no shadow,
   combined with a second light which does not illuminate but has *Only Shadow* enabled,
   allowing the user to control shadow placement by moving the "Shadow Only" light around.

Shadow color
   This color picker control allows you to choose the color of your cast shadows (black by default).
   The images below were all rendered with a white light and the shadow color was selected independently.

   .. list-table::

      * - .. figure:: /images/render_blender-render_lighting_shadow_spot-red_buffer_shadow.jpg
             :width: 190px

             Red colored shadow example.

        - .. figure:: /images/render_blender-render_lighting_shadow_spot-green_buffer_shadow.jpg
             :width: 190px

             Green colored shadow example.

        - .. figure:: /images/render_blender-render_lighting_shadow_spot-blue_buffer_shadow.jpg
             :width: 190px

             Blue colored shadow example.


   Although you can select a pure white color for a shadow color, it appears to make a shadow disappear.
