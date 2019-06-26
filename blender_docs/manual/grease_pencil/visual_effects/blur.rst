
******************
Blur Visual Effect
******************

The *Blur* Visual Effect applies a gaussian blur to the object.


Options
=======

.. figure:: /images/grease_pencil_visual_effects_blur_panel.png
   :align: right

   Blur Visual Effect.

Factor
   Control the blurriness distance in pixels for X and Z axis.

   X, Z

Samples
   Number of Blur samples (0 disabled the blur effect).

Lock Focal Plane
   When enabled, the blur effect uses the focal plane distance of the actual camera
   to simulate a depth of field effect. Only available in camera view.

Example
=======

.. list-table:: Blur Effect samples (Blur Samples: 8).

   * - .. figure:: /images/grease_pencil_visual_effects_blur_factor_0.png
          :width: 200px

          Original Model.

     - .. figure:: /images/grease_pencil_visual_effects_blur_factor_10.png
          :width: 200px

          Factor: 10,10.          

     - .. figure:: /images/grease_pencil_visual_effects_blur_factor_50.png
          :width: 200px

          Factor: 50,50.          

     - .. figure:: /images/grease_pencil_visual_effects_blur_factor_100.png
          :width: 200px

          Factor: 100,100.          
