.. _view3d-viewport-shading:

****************
Viewport Shading
****************

Shading Modes
=============

Wireframe
---------

TODO2.8.

Solid
-----

Show the scene using in solid mode. This mode uses the Workbench engine to render the 3D Viewport.
For all options of the Workbench engine look the :doc:`lighting </render/workbench/lighting>`,
:doc:`color </render/workbench/color>` and :doc:`options </render/workbench/options>`.


.. _3dview-lookdev:

Look Dev
--------

Show the scene in the 3D View in LookDev mode.
This mode is specialized for drawing materials.
You can select different lighting conditions to test your materials.

Lighting
   Scene Lights
      Use the lights in the scene when rendering the scene.
   Scene World
      Use the world of the scene when rendering the scene.
      When turned off a world will be constructed with the next options.

      HDRI Environment
         The environment map used to render the scene in Look Dev mode.
      Rotation
         The rotation of the environment on the Z axis.
      Background
         The opacity level of a very blurred version of the HDRI will be rendered as
         background in the 3D View.


Render
------

An accurate representation using the selected *Render Engine* and lit with the visible scene lights.


Color
=====

Material
   TODO2.8.
Object
   Show the object color.
Vertex
   TODO2.8.
Single
   Show the scene in a single color.
Random
   Show a random object color.
Texture
   TODO2.8.


Background
==========

The way how to draw the background in the 3D Viewport.

Theme
   Use the background of the theme.
World
   Use the world viewport display options.
Viewport
   Select a custom color the draw the background of the 3D Viewport.


Options
=======

Backface Culling
   TODO2.8.

.. _3dview-shading-xray:

X-Ray
   Render the scene transparent. With the slider you can control how
   transparent the scene should appear.
Shadow
   TODO2.8
Outline
   Render the outline of objects in the viewport. The color of the outline can be adjusted.
Cavity
   TODO2.8.
Depth Of Field
   TODO2.8.
Outline
   TODO2.8.
