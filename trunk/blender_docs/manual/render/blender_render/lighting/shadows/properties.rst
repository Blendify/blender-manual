
******************************
Common Shadowing Lamps Options
******************************

.. figure:: /images/Manual-Lighting-Shadow-Common-Properties.jpg
   :width: 310px

   Common shadowing options for lamps


All lamps able to cast shadows
(:doc:`Lamp </render/blender_render/lighting/lamps/point/introduction>`,
:doc:`Spot </render/blender_render/lighting/lamps/spot/introduction>`,
:doc:`Area </render/blender_render/lighting/lamps/area/introduction>` and
:doc:`Sun </render/blender_render/lighting/lamps/sun/introduction>`) share some options, described below:

This Layer Only
   When this option is enabled, only the objects on the same layer as the light source will cast shadows.
Only Shadow
   The light source will not illuminate an object but will generate the shadows that would normally appear.
   This feature is often used to control how and where shadows fall by having a light which
   illuminates but has no shadow,
   combined with a second light which doesn't illuminate but has *Only Shadow* enabled,
   allowing the user to control shadow placement by moving the "Shadow Only" light around.

Shadow color
   This color picker control allows you to choose the color of your cast shadows (black by default).
   The images below were all rendered with a white light and the shadow color was selected independently.

   .. list-table::

      * - .. figure:: /images/Manual_-_Shadow_and_Spot_-_Red_Buffer_Shadow.jpg
             :width: 190px

             Red colored shadow example

        - .. figure:: /images/Manual_-_Shadow_and_Spot_-_Green_Buffer_Shadow.jpg
             :width: 190px

             Green colored shadow example

        - .. figure:: /images/Manual_-_Shadow_and_Spot_-_Blue_Buffer_Shadow.jpg
             :width: 190px

             Blue colored shadow example


   Although you can select a pure white color for a shadow color, it appears to make a shadow disappear.


See Also
========

- :doc:`Shadows </render/blender_render/lighting/shadows/introduction>`
- :doc:`Common Raytraced Options </render/blender_render/lighting/shadows/raytraced_properties>`
- :doc:`Lamp Light Raytraced Shadows </render/blender_render/lighting/lamps/point/introduction>`
- :doc:`Spot Light Raytraced Shadows </render/blender_render/lighting/lamps/spot/introduction>`
- :doc:`Area Light Raytraced Shadows </render/blender_render/lighting/lamps/area/introduction>`
- :doc:`Sun Light Raytraced Shadows </render/blender_render/lighting/lamps/sun/introduction>`
- :doc:`Spot Light Buffered Shadows </render/blender_render/lighting/lamps/spot/buffered_shadows>`


