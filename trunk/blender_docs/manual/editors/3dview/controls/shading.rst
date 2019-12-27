.. _view3d-viewport-shading:

****************
Viewport Shading
****************

The shading of the 3D Viewport can be adjusted to match the task at hand.
There are several modes to choose from.

.. note::

   The Material Preview option is not available when the render engine of
   the scene is set to Workbench.


Wireframe
=========

Shows the full scene by only displaying the edges of the objects (Wireframe).

Color
   Single
      Render the whole scene using a single color.

   Object
      Use the color that can be set per object
      in the Viewport Display :ref:`properties-object-viewport-display` panel.

   Random
      A random color will be selected for every object in the scene.

Background
   How the background is displayed in the 3D Viewport.

   Theme
      Use the background of the theme.
   World
      Use the world viewport display options.
   Viewport
      Select a custom color for the background of the 3D Viewport.

Options
   .. _3dview-shading-xray:

   X-Ray
      Render the scene transparent. With the slider you can control how
      transparent the scene should appear. In wireframe mode the opacity
      of the back wires can be adjusted.

   Outline
      Render the outline of objects in the viewport. The color of the outline can be adjusted.


Solid
=====

Show the scene using in solid mode. This mode utilized the Workbench engine to
render the 3D Viewport. The :doc:`lighting </render/workbench/lighting>`,
:doc:`color </render/workbench/color>` and :doc:`options </render/workbench/options>`
can be found at Workbench render engine section.

Background
   The way the background is displayed in the 3D Viewport.

   Theme
      Use the background of the theme.
   World
      Use the world viewport display options.
   Viewport
      Select a custom color for the background of the 3D Viewport.


.. _3dview-material-preview:

Material Preview
================

Render the 3D Viewport with :doc:`Eevee </render/eevee/index>` and a HDRI environment.
This mode is particularly suited for previewing materials and texture painting.
You can select different lighting conditions to test your materials.

Lighting
   Scene Lights
      Use the lights in the scene when rendering the scene.
   Scene World
      Use the world of the scene when rendering the scene.
      When turned off a world will be constructed with the next options.

      HDRI Environment
         The environment map used to light the scene.
      Rotation
         The rotation of the environment on the Z axis.
      Strength
         Light intensity of the environment.
      Background
         The opacity level of a very blurred version of the HDRI will be rendered as
         background in the 3D View.

Render Pass
   Instead of the combined render, show another render pass.
   Useful to analyze and debug geometry, materials and lighting.


.. _3dview-rendered:

Rendered
========

Render the 3D Viewport with the scene *Render Engine*, for interactive rendering.
By default the scene lights are used for lighting.
A HDRI environment can be used as well, with the same options as Material Preview mode.

Render Pass
   Instead of the combined render, show another render pass.
   Useful to analyze and debug geometry, materials and lighting.
