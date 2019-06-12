****************
Viewport Shading
****************


XRay
    Show whole scene transparent. This option is not supported when using LookDev
    or Render mode


Wireframe
---------

Color
    *Single*
        Show the scene in a single color.
    
    *Object*
        Show the object color

    *Random*
        Show random object color


Background
    The way how to draw the background in the 3D Viewport.

    *Theme*
        Use the background of the theme.

    *World*
        Use the world viewport display options

    *Viewport*
        Select a custom color the draw the background of the 3D Viewport

X-Ray
   Render the scene transparent. With the slider you can control how
   transparent the scene should appear.

Outline
   Render the outline of objects in the viewport. The color of the outline can be adjusted.


Solid
-----

Show the scene using in solid mode. This mode uses the workbench engine to render
the 3D Viewport. For all options of the workbench engine look the 
:doc:`lighting </render/workbench/lighting>`, 
:doc:`color </render/workbench/color>` and 
:doc:`options </render/workbench/options>`.

Background
    The way how to draw the background in the 3D Viewport.

    *Theme*
        Use the background of the theme.

    *World*
        Use the world viewport display options

    *Viewport*
        Select a custom color the draw the background of the 3D Viewport

Look Dev
--------

Show the scene in the 3D View in Look Dev mode. This mode is specialized for
drawing materials. You can select different lighting conditions to test your
materials.

Lighting
    Scene Lights
        Use the lights in the scene when rendering the scene
    Scene World
        Use the world of the scene when rendering the scene. When turned off a 
        world will be constructed with the next options

        HDRI Environment
            The environment map used to render the scene in Look Dev mode.
        Rotation
            The rotation of the environment on the Z-Axis
        Background
            The opacity level of a very blurred version of the HDRI will be rendered
            as background in the 3D View.



Render
------

Show the scene in the 3D View using the render engine of the scene.