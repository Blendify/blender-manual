
*******
Shading
*******

In the separate *Shading* tab six more options are available:


.. figure:: /images/material-shadingmenu.jpg

   Shading menu, default settings


Emit
   Amount of light to emit
Ambient
   Amount of global ambient color the material receives.
   Each material has an *Ambient* slider that lets you choose how much ambient light that object receives.
   Set to 1.0 by default.

   You should set this slider depending on the amount of ambient light you think the object will receive.
   Something deep in the cave will not get any ambient light, whereas something close to the entrance will get more.
   Note that you can animate this effect, to change it as the object comes out of the shadows and into the light.

Settings for *Ambient Occlusion* and *Environment Lighting* can be found
in the *World* menu, with parameters affecting both these lighting components found
in the *World* *Gather* menu.

Translucency
   Amount of diffuse shading on the back side
Shadeless
   Make this material insensitive to light or shadow; gives a solid, uniform color to the whole object.
Tangent Shading
   Use the material's tangent vector instead of the normal for shading - for anisotropic shading effects
   (e.g. soft hair and brushed metal).
   This shading was
   `introduced in 2.42 <http://www.blender.org/development/release-logs/blender-242/material-features/>`__,
   see also settings for strand rendering in the menu further down and in the Particle System menu.
Cubic Interpolation
   Use cubic interpolation for diffuse values. Enhances the contrast between light areas and shadowed areas


.. list-table::

   * - .. figure:: /images/Light-Lamps-Sphere_Non-Cubic_Shadow.jpg
          :width: 200px

          Without Cubic enabled.

     - .. figure:: /images/Light-Lamps-Sphere_Cubic_Shadow.jpg
          :width: 200px

          With Cubic enabled.


