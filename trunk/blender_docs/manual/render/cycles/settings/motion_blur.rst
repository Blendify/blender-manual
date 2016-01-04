
***********
Motion Blur
***********

Blender's animations are by default rendered as a sequence of *perfectly still* images.
While great for stop-motion and time-lapses, this is unrealistic, since fast-moving
objects do appear to be blurred in the direction of motion,
both in a movie frame and in a photograph from a real-world camera.

.. figure:: /images/render_cycles_settings_motion_blur_example.jpg

   Cycles Motion Blur Example

.. note::

     If there are particles or other physics system in a scene,
     be sure to bake them before rendering,
     otherwise you might not get correct or consistent motion.


Options
=======

.. figure:: /images/render_cycles_settings_motion_blur_settings.png
   :width: 175px
   :align: right

   Cycles Motion Blur Settings

Position
   Controls at what point the shutter opens in relation to the frame.

   - End on frame
   - Center on frame
   - Start on frame

Shutter Speed
   Time between frames over which motion blur is computed. Shutter time 1.0 blurs over the length of 1 frame,
   2.0 over the length of two frames, from the previous to the next.
Shutter Curve
   Curve defining how the shutter opens and closes.

Shutter Type
   Replicates CMOS cameras by rendering a rolling shutter effect using scanlines.

   - Top Bottom: Renders rolling shutter from the top of the image from the bottom.

Rolling Shutter Duration
   Controls balance between pure rolling shutter effect and pure motion blur effect.
   With zero being no rolling shutter and one being all rolling shutter.

.. warning::

   An object modifier setup that changes mesh topology over time will cause severe problems.

   Common examples of this are animated booleans, defomation before edge-split, remesh, skin or decimate modifiers.
