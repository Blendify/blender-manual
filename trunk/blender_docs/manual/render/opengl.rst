
*************
OpenGL Render
*************

OpenGL rendering uses the 3d-views drawing for quick *preview* renders.

This allows you to inspect your animatic
(for object movements, alternate angles, etc.).

This can also be used to preview your animations -
in the event your scene is too complex for your system to play back in real-time in the 3d-view.

You can use OpenGL to render both images and animations.

Below is a comparison between the OpenGL render and a final render using
the Blender Internal engine.

.. list-table::

   * - .. figure:: /images/OpenGL_rendered.jpg
          :width: 300px

          OpenGL Render

     - .. figure:: /images/Full_render.jpg
          :width: 300px

          Full Render

.. tip::

   .. figure:: /images/basics-quick-render-display-only-render.jpg
      :align: right

      Display Panel.

   **Showing Only Rendered Objects**

   To access this option, enable the *Only Render* in the :doc:`Display Panel </editors/3dview/display>`.

   While this option is not specific to OpenGL rendering,
   its often useful to enable, since it removes data such as rigs and empties
   that can be a distraction.


Settings
========

For the most part, *OpenGL Render* uses view-port,
however some render settings are used too.

- Render Dimensions
- Render Aspect
- Anti-Aliasing, Samples & Full Sample (for slower, higher quality output).
- Alpha (*Sky* background is only used when the 3D view has *World Background* enabled).
- File Format & Output (file-path, format, compression settings... etc).


Rendering
=========

Activating OpenGL render from the menu will render from the active camera.

.. figure:: /images/basics-starting-small-opengl-render-buttons.jpg
   :align: right

You can also render any view-port, from the header of the *3D View*,
using the small button showing a *Camera* (together with a small image showing a *slate*)

As with a normal render, you can abort it with :kbd:`Esc`.

Render a Still Image
   Click on the small button showing a *camera* in the header of the 3D View.

   Or from the menu: :menuselection:`Render --> OpenGL Render Image`
   from the header of the *Info Window*
Render an Animation
   Click on the small button showing a *slate* in the header of the 3D View.

   Or from the menu: :menuselection:`Render --> OpenGL Render Animation`
   from the header of the *Info Window*
Render from the Sequencer
   Click on the small button showing a *slate* in the header of *Sequencer* preview window.

   Using scene strips in the sequencer you can edit together scenes to quickly render an entire sequence of shots.

   This can be activated using the render icons in the sequencer's playback window header.


Known Limitations
=================


OpenGL Anti-Aliasing Support
----------------------------

Some graphics cards don't support this feature
(known as the frame-buffer multi-sample OpenGL extensions).

In this case rendering works but no anti-aliasing is performed.

Enabling *Full Sample*, can be used to workaround this limit,
because it doesn't rely on hardware multi-sample support.

.. hint::

   Exact extensions needed, as listed in output from :ref:`help-system_info` (OpenGL section).

   - ``GL_ARB_texture_multisample``
   - ``GL_EXT_framebuffer_blit``
   - ``GL_EXT_framebuffer_multisample_blit_scaled``
   - ``GL_EXT_framebuffer_multisample``

