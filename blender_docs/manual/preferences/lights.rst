
******
Lights
******

Studio Lights
=============

TODO 2.8.

.. _bpy.types.UserSolidLight:

Editor
------

*Solid OpenGL Lights* are used to light the 3D View,
mostly during *Solid view*. Lighting is constant and position "world" based.
There are three virtual light sources, also called OpenGL auxiliary lamps,
used to illuminate 3D View scenes, which will not display in renders.

The Lamp icons allow the user to enable or disable OpenGL lamps.
At least one of the three auxiliary OpenGL Lamps must remain enabled for the 3D View.
The lamps are equal, their difference is their positioning and colors.
You can control the direction of the lamps, as well as their diffuse and specular colors.

Light
   Use Light
      Toggles the specific lamp.
   Diffuse
      This is the constant color of the lamp.
   Specular
      This is the highlight color of the lamp.
   Smooth
      TODO 2.8.
   Direction
      Clicking with :kbd:`LMB` in the sphere and dragging the mouse cursor
      let us the user change the direction of the lamp by rotating the sphere.
      The direction of the lamp will be the same as shown at the sphere surface.

Ambient Color
   TODO 2.8.

MatCaps
=======

TODO 2.8.

LookDev HDRIs
=============

TODO 2.8.
