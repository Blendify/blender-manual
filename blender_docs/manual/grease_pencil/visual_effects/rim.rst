
*****************
Rim Visual Effect
*****************

The *Rim* Visual Effect shows a simulated rim light on the object contour.

For simulating the rim light, a masked color silhouette of the object is
displaced in horizontal and/or vertical direction.

Many blending modes can be applied to the resulting mask.


Options
=======

.. figure:: /images/grease_pencil_visual_effects_rim_panel.png
   :align: right

   Rim Visual Effect.

Offset
   Control the color mask displacement in pixels for X and Z axis.

   X, Z

Rim Color
   Defines the rim light color.

Mask Color
   Defines a color to keep unaltered.

Mode
   The mask blending operation to perform. See :term:`Color Blend Modes`.

Blur
   Control the blur scale in pixels on the X and Z axis.

   X, Z

   Samples
      Number of blur samples (0 disabled the blur effect).


Example
=======

.. list-table:: Rim Effect samples (Mode: Add).

   * - .. figure:: /images/grease_pencil_visual_effects_rim_0.png
          :width: 200px

          Original image.

     - .. figure:: /images/grease_pencil_visual_effects_rim_1.png
          :width: 200px

          No blur.

     - .. figure:: /images/grease_pencil_visual_effects_rim_2.png
          :width: 200px

          Blur.

     - .. figure:: /images/grease_pencil_visual_effects_rim_3.png
          :width: 200px

          Mask color: Black.
