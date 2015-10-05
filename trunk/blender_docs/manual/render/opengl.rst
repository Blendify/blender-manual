
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


Rendering an image using ''OpenGL Render''
==========================================

Activating OpenGL render from the menu will render to active camera view.

.. figure:: /images/basics-starting-small-opengl-render-buttons.jpg
   :align: right

You can also render any view-port, from the header of the *3D View*,
using the small button showing a *Camera* (together with a small image showing a *slate*)

To abort or quit the render, press :kbd:`Esc`.


Rendering an animation using ''OpenGL Render''
==============================================

To Render an animation using *OpenGL Render*, you can use any of the following options:

.. figure:: /images/basics-starting-small-opengl-render-buttons.jpg
   :align: right 

- Click on the small button showing a *slate*
  (together with a small image showing a *camera*) in the header of the 3D View
- Go to :menuselection:`Render --> OpenGL Render animation` from the header of the *Info Window*
  (see: *Header of the Info Window* Image)

To abort or quit rendering the animation, press :kbd:`Esc`.


.. tip:: **Showing Only Rendered Objects**

   .. figure:: /images/basics-quick-render-display-only-render.jpg
      :align: right

      Display Panel.

   To access this option, enable the *Only Render* in the :doc:`Display Panel </editors/3dview/display>`.

   While this option is not spesific to OpenGL rendering,
   its often useful to enable, since it removes data such as rigs and empties
   that can be a distraction.

