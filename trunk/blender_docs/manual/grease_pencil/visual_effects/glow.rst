
******************
Glow Visual Effect
******************

The *Glow* Visual Effect add a glowing aura around the object.


Options
=======

.. figure:: /images/grease_pencil_visual_effects_glow_panel.png
   :align: right

   Glow Visual Effect.

Mode
   Determines the mode for the glow effect.

   Luminance
      The glow light illuminates the entire object.

   Color
      The glow light only affect a single color.

Glow Color
   Defines the glow color.

   Color
      When Color Mode is selected, allows to select a single color to apply the glow light.

   Threshold
      When Luminance Mode is selected, limits the colors affected by the glow light.
      (value of 1 means no colors affected)

Radius
   Adds blurriness to the glow. If 0 no blur is used.

Samples
   Number of Blur samples (0 disabled the blur effect).

Use Alpha Mode
   When enabled, glow only affects alpha areas.

Example
=======

.. list-table:: Glow Effect samples.

   * - .. figure:: /images/grease_pencil_visual_effects_glow_0.png
          :width: 200px

          Original image

     - .. figure:: /images/grease_pencil_visual_effects_glow_1.png
          :width: 200px

          Mode: Luminance.

     - .. figure:: /images/grease_pencil_visual_effects_glow_2.png
          :width: 200px

          Mode: Luminance (Alpha mode).

     - .. figure:: /images/grease_pencil_visual_effects_glow_3.png
          :width: 200px

          Mode: Color (Black lines)
