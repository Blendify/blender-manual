
************
Render Panel
************

.. figure:: /images/render_output_render-panel.png
   :align: right

   Render panel.

Render
   Starts rendering a still image.
Animation
   Starts rendering an animation.
   See :doc:`Rendering Animations </render/workflows/animations>` for more detail.
Audio
   Mixes all the the audio found in a scene and mixes into one file.

By default the biggest area is replaced with the UV/Image Editor and the render appears.

To chancel the rendering process click the chancel button ``X`` besides the progressbar in the Info Editor,
or press :kbd:`Esc`.


Display
=======

Renders are displayed in the UV/Image Editor. You can set the way this is displayed to several
different options in the Display menu:

Display
   Keep UI
      The image is rendered to the UV/Image Editor, but the UI remains the same.
      You will need to open the UV/Image Editor manually to see the render result.
   New Window
      A new floating window opens up, displaying the render.
   Image Editor
      One of the existing editors is replaced with the UV/Image Editor, showing the render.
   Full Screen
      The UV/Image Editor replaces the UI, showing the render.
Lock Interface
   Lock interface during rendering in favor of giving more memory to the renderer.
