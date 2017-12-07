
******************
Motion Blur & Film
******************

Motion Blur
===========

.. admonition:: Reference
   :class: refbox

   | Panel:    :menuselection:`Render --> Motion Blur`

Blender's animations are by default rendered as a sequence of *perfectly still* images.
While great for stop-motion and time-lapses, this is unrealistic, since fast-moving
objects do appear to be blurred in the direction of motion,
both in a movie frame and in a photograph from a real-world camera.

.. figure:: /images/render_cycles_settings_scene_render_motion-blur_example.jpg

   Cycles Motion Blur Example.

.. note::

   If there are particles or other physics system in a scene,
   be sure to bake them before rendering,
   otherwise you might not get correct or consistent motion.


Options
-------

.. figure:: /images/render_cycles_settings_scene_render_motion-blur_settings.png
   :width: 175px
   :align: right

   Cycles Motion Blur Settings.

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

   - Top Bottom: Renders rolling shutter from the top of the image to the bottom.

Rolling Shutter Duration
   Controls balance between pure rolling shutter effect and pure motion blur effect.
   With zero being no rolling shutter and one being all rolling shutter.

.. warning::

   An object modifier setup that changes mesh topology over time will cause severe problems.

   Common examples of this are animated Booleans, Deformation before Edge Split, Remesh, Skin or Decimate modifiers.

.. seealso::

   Each object has its own settings to control motion blur.
   These options can be found in the Object tab of the Properties editor.
   See :ref:`object setting <render-cycles-settings-object-motion-blur>` for more information.


Film
====

.. admonition:: Reference
   :class: refbox

   | Panel:    :menuselection:`Render --> Film`

Exposure
   This can be used to change the brightness of an image.
   Different than the *Exposure* option found in the :ref:`Color management <render-post-color-management>`
   panel this exposure option works *on the data* while the Color management exposure is *on the view*.
Transparent
   ToDo ~2.40.
Pixel Filter
   .. Sensor simulation or Anti-aliasing.

   Blackman-Harris, Box, Gaussian

   Width
      ToDo 2.77.
