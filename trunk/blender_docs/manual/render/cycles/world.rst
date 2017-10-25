.. _bpy.types.CyclesWorldSettings:

*****
World
*****

.. figure:: /images/render_cycles_world_environment-lighting.jpg
   :align: right

   Lighting with an HDR image.

The world environment can emit light, ranging from a single solid color,
physical sky model, to arbitrary textures.


Surface
=======

The surface shader defines the light emission from the environment into the scene.
The world surface is rendered as if it is very distant from the scene,
and as such there is no two-way interacting between objects in the scene and the environment,
only light coming in. The only shader accepted is the Background node with a color input and
strength factor for the intensity of the light.


Image Based Lighting
--------------------

For image based lighting,
use the Environment Texture node rather than the Image Texture node for correct mapping.
This supports *Equirectangular* (also known as Lat/Long) for environment maps,
and *Mirror Ball* mapping for converting photos of mirror balls to environment maps.


Volume
======

A volume shader can be applied to the entirely world, filling the entire space.

Currently this is most useful for night time or other dark scenes,
as the world surface shader or sun lamps will have no effect if a volume shader is used.
This is because the world background is assumed to be infinitely far away,
which is accurate enough for the sun for example.
However, for modeling effects such as fog or atmospheric scattering,
it is not a good assumption that the volume fills the entire space,
as most of the distance between the sun and the earth is empty space.
For such effects it is be better to create a volume object surrounding the scene.
The size of this object will determine how much light is scattered or absorbed.


Ambient Occlusion
=================

Ambient occlusion is a lighting method based on how much a point on a surface is occluded by
nearby surfaces. This is a trick that is not physically accurate,
but it is useful to emphasize shapes of surfaces,
or as a cheap way to get an effect that looks a bit like indirect lighting.

Factor
   The strength of the ambient occlusion; value 1.0 is like a white world shader.
Distance
   Distance from shading point to trace rays.
   A shorter distance emphasizes nearby features,
   while longer distances make it also take objects farther away into account.

Lighting from ambient occlusion is only applied to diffuse reflection BSDFs;
glossy or transmission BSDFs are not affected.
Transparency of surfaces will be taken into account, i.e.
a half-transparent surface will only half occlude.

An alternative method of using Ambient Occlusion on a per-shader basis is to use the
:doc:`Ambient Occlusion </render/cycles/nodes/types/shaders/ao>` shader.


.. _render-cycles-integrator-world-mist:

Mist Pass
=========

Shown when the Mist pass is enabled. Mist values will range from 0.0-1.0 and are available from the
RenderLayers node.

Start
   Defines the beginning of the mist range from the camera.
Depth
   Defines the length over which mist values will be provided.
Falloff
   The curve function that determines the mist values within its depth.

   Quadratic
      Uses the same calculation as light falloff (:math:`1\over{x^2}`) and provides the smoothest
      transition from transparent (0.0) to opaque (1.0).
   Linear
      Has a steeper start than quadratic (:math:`1\over{x}`).
   Inverse Quadratic
      Has the steepest start (:math:`1\over{\sqrt{x}}`) and approaches 1.0 faster than the other two
      functions.

.. tip::

   A visualization can be activated in the :menuselection:`Camera --> Display` panel.


.. _render-cycles-integrator-world-settings:

Settings
========

Surface
-------

Multiple Importance Sample
   Enabling this will sample the background texture such that lighter parts are favored,
   creating an importance map. It will producing less noise in the render in trade of artifacts (fireflies).
   It is almost always a good idea to enable this when
   using an image texture to light the scene, otherwise noise can take a very long time to converge.

   Below is a comparison between *Multiple Importance Sample* off and on.
   Both images are rendered for 25 seconds (Off: 1500 samples, On: 1000 samples).

   .. list-table::

      * - .. figure:: /images/render_cycles_world_mis-off.jpg

             Multiple Importance Sample Off.

        - .. figure:: /images/render_cycles_world_mis-on.jpg

             Multiple Importance Sample On.

Map Resolution
   Sets the resolution of the importance map.
   A higher resolution will better detect small features in the map and give more accurate sampling.
   but conversely will take up more memory and render slightly slower.
   Higher values also may produce less noise when using high-res images.
Max Bounces
   Maximal number of bounces the background light will contribute to the render.

.. seealso::

   See :doc:`Reducing Noise </render/cycles/optimizations/reducing_noise>`
   for more information on how to reduce noise.


.. _render-cycles-integrator-world-settings-volume:

Volume
------

Sampling Method
   Distance
      If you have got a pretty dense volume that is lit from far away
      then *Distance* sampling is usually more efficient.
   Equiangular
      If you have got a light inside or near the volume then *equiangular* sampling is better.
   Multiple Importance
      If you have a combination of both, then the multiple importance sampling will be better.

Interpolation
   Interpolation method to use for the volume.

   Linear
      Good smoothness and speed.
   Cubic
      Smoothed high quality interpolation, but slower.

Homogeneous Volume
   Assume volume has the same density everywhere (not using any textures), for faster rendering.
   For example absorption in a glass object would typically not have any textures,
   and by knowing this we can avoid taking small steps to sample the volume shader.


Ray Visibility
==============

As with other objects,
*Ray Visibility* allows you to control which other shaders can "see" the environment.


Tricks
======

Sometimes it may be useful to have a different background that is directly visible versus one
that is indirectly lighting the objects. A simple solution to this is to add a Mix node,
with the Blend Factor set to Is Camera Ray. The first input color is then the indirect color,
and the second the directly visible color. This is useful when using a high-res image for the
background and a low-res image for the actual lighting.

Similarly, adding the *Is Camera* and *Is Glossy* rays will mean that the high-res image
will also be visible in reflections.

.. figure:: /images/render_cycles_world_tricks.png

   Nodes for the trick above.
