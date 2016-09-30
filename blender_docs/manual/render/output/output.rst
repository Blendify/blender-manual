
**************
Output Options
**************

The first step in the rendering process is to determine and set the output options.
This includes render size, frame rate, pixel aspect ratio, output location, and file type.


.. _render-tab-dimensions:

Dimensions panel
================

.. figure:: /images/render_output_dimensions-panel.png

   Dimensions Panel.

Render Presets
   Common format presets for TVs and screens.

Resolution
   X/Y
      The number of pixels horizontally and vertically in the image.
   Percentage
      Slider to reduce or increase the size of the rendered image relative to the X/Y values above.
      This is useful for small test renders that are the same proportions as the final image.

Aspect Ratio
   Older televisions may have non-square pixels,
   so this can be used to control the shape of the pixels along the respective axis.
   This will *pre-distorted* the images which will look stretched on a computer screen,
   but which will display correctly on a TV set.
   It is important that you use the correct pixel aspect ratio when rendering to prevent re-scaling,
   resulting in lowered image quality.

   See :doc:`Video Output </render/output/video>` for details on pixel aspect ratio.

Border
   You can render just a portion of the view instead of the entire frame. While in Camera View,
   press :kbd:`Ctrl-B` and drag a rectangle to define the area you want to render.
   :kbd:`Ctrl-Alt-B` is the shortcut to disable the border.

   .. note::

      This disables the *Save Buffers* option in *Performance* and *Full Sample* option in *Anti-Aliasing*.

   Enabling *Crop* will crop the rendered image to the *Border* size,
   instead of rendering a black region around it.

Frame Range
   Set the *Start* and *End* frames for :doc:`Rendering Animations </render/workflows/animations>`.
   *Step* controls the number of frames to advance by for each frame in the timeline.

Frame Rate
   For an :doc:`Animation </render/workflows/animations>`
   the frame rate is how many frames will be displayed per second.

Time Remapping
   Use to remap the length of an animation.


.. _render-tab-output:

Output Panel
============

.. figure:: /images/render_output_output-panel.png

   Output panel.

This panel provides options for setting the location of rendered frames for animations,
and the quality of the saved images.

File Path
   Choose the location to save rendered frames.

   When rendering an animation,
   the frame number is appended at the end of the file name with four padded zeros (e.g. ``image0001.png``).
   You can set a custom padding size by adding the appropriate number of ``#`` anywhere in the file name
   (e.g. ``image_##_test.png`` translates to ``image_01_test.png``).

   This settings expands :doc:`relative paths </data_system/files/relative_paths>`
   where a ``//`` prefix represents the directory of the current blend-file.
Overwrite
   Overwrite existing files when rendering
Placeholders
   Create empty placeholder frames while rendering
File Extensions
   Adds the correct file extensions per file type to the output files
Cache Result
   Saves the rendered image to your hard drive. This is helpful for heavy compositing.
Output Format
   Choose the file format to save to.
   Based on which format is used, other options such as channels, bit-depth and compression level are available.

.. TODO - 'Cache Result' definition is very similar to the tooltip and should be improved.

.. hint:: Primitive Render-Farm

   An easy way to get multiple machines to share the rendering workload is to:

   - Set up a shared directory over a network file-system.
   - Disable *Overwrite*, enable  *Placeholders* in the Render *Output* panel.
   - Start as many machines as you wish rendering to that directory
