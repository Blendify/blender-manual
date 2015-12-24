
***********
Motion Blur
***********

Blender's animations are by default rendered as a sequence of *perfectly still* images.
While great for stop-motion and time-lapses, this is unrealistic, since fast-moving
objects do appear to be blurred in the direction of motion,
both in a movie frame and in a photograph from a real-world camera.

.. figure:: /images/render_cycles_settings_motion_blur_example.jpg

   Cycles Motion Blur Example

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
   Time taken in frames between when the shutter is open and closed.
Shutter Curve
   Curve defining how the shutter opens and closes.
