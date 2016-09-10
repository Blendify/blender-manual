
******************************
Common Shadowing Lamps Options
******************************

.. figure:: /images/lighting-shadow-common-properties.png
   :width: 310px

   Common shadowing options for lamps.


All lamps able to cast shadows
(:doc:`Lamp </render/blender_render/lighting/lamps/point>`,
:doc:`Spot </render/blender_render/lighting/lamps/spot/introduction>`,
:doc:`Area </render/blender_render/lighting/lamps/area/introduction>`, and
:doc:`Sun </render/blender_render/lighting/lamps/sun/introduction>`) share some options, described below:

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

      * - .. figure:: /images/shadow_and_spot-red_buffer_shadow.jpg
             :width: 190px

             Red colored shadow example.

        - .. figure:: /images/shadow_and_spot-green_buffer_shadow.jpg
             :width: 190px

             Green colored shadow example.

        - .. figure:: /images/shadow_and_spot-blue_buffer_shadow.jpg
             :width: 190px

             Blue colored shadow example.


   Although you can select a pure white color for a shadow color, it appears to make a shadow disappear.


.. seealso::

   - :doc:`Shadows </render/blender_render/lighting/shadows/introduction>`
   - :doc:`Common Raytraced Options </render/blender_render/lighting/shadows/raytraced_properties>`
   - :doc:`Lamp Light Raytraced Shadows </render/blender_render/lighting/lamps/point>`
   - :doc:`Spot Light Raytraced Shadows </render/blender_render/lighting/lamps/spot/introduction>`
   - :doc:`Area Light Raytraced Shadows </render/blender_render/lighting/lamps/area/introduction>`
   - :doc:`Sun Light Raytraced Shadows </render/blender_render/lighting/lamps/sun/introduction>`
   - :doc:`Spot Light Buffered Shadows </render/blender_render/lighting/lamps/spot/buffered_shadows>`
