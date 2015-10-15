
*************
OpenGL Render
*************

Introduction
============


OpenGL rendering allows you to quickly inspect your animatic
(for things like object movements, alternate angles, etc.),
by giving you a draft quality rendering of the current view-port.

Because it is only rendered using OpenGL, it is much faster to generate,
even if it only looks as good as what you see in the 3D view-port.

This allows you to preview your animation with fluid playback,
which you would otherwise not be able to do in real time due to scene complexity (i.e.,
pressing :kbd:`Alt-A` results in too low of a *Frames Per Second* to get a good feel
for the animation).

You can use OpenGL to render both images and animations,
and change dimensions using the same instructions explained above. As with a normal render,
you can abort it with :kbd:`Esc`.

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
- Anti-Aliasing Samples
- File Format & Output (file-path, format, compression settings... etc).


Rendering
=========

Activating OpenGL render from the menu will render from the active camera.

.. figure:: /images/basics-starting-small-opengl-render-buttons.jpg
   :align: right

You can also render any view-port, from the header of the *3D View*,
using the small button showing a *Camera* (together with a small image showing a *slate*)

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

