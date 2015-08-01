
************************
Render Layers and Passes
************************

Layers
======

This section covers only the Render Layer settings appropriate for the Blender Render engine.
For the engine-independent settings, see :doc:`this section </render/post_process/layers>`.

Exclude
   Scene layers are shared between all render layers;
   however sometimes it's useful to leave out some object influence for a particular render layer.
   That's what this option allows you to do.


Lighting Passes
===============

Diffuse Direct
   Direct lighting from diffuse BSDFs. We define direct lighting as coming from lamps, emitting surfaces,
   the background, or ambient occlusion after a single reflection or transmission off a surface.
   BSDF color is not included in this pass.
Diffuse Indirect
   Indirect lighting from diffuse BSDFs. We define indirect lighting as coming from lamps,
   emitting surfaces or the background after more than one reflection or transmission off a surface.
   BSDF color is not included in this pass.
Diffuse Color
   Color weights of diffuse BSDFs. These weights are the color input socket for BSDF nodes,
   modified by any Mix and Add Shader nodes.
Glossy Direct, Indirect, Color
   Same as above, but for glossy BSDFs.
Transmission Direct, Indirect, Color
   Same as above, but for transmission BSDFs.
Subsurface Direct, Indirect, Color
   Same as above, but for subsurface BSDFs.
Emission
   Emission from directly visible surfaces.
Environment
   Emission from the directly visible background. When the film is set to transparent,
   this can be used to get the environment color and composite it back in.
Shadow
   Shadows from lamp objects.
Ambient Occlusion
   Ambient occlusion from directly visible surfaces. BSDF color or AO factor is not included; i.e.
   it gives a 'normalized' value between 0 and 1.

Note that :doc:`transparent BSDFs are given special treatment </render/cycles/settings/light_paths>`
a fully transparent surface is treated as if there is no surface there at all;
a partially transparent surface is treated as if only part of the light rays can pass through.
This means it is not included in the Transmission passes;
for that a glass BSDF with index of refraction 1.0 can be used.


Combining
^^^^^^^^^

All these lighting passes can be combined to produce the final image as follows:


.. figure:: /images/Cycles_passes_combine.png


Data Passes
===========

Combined
   The final combination of render passes with everything included.
Z
   The
Mist
   Mist value between 0.0 and 1.0, using settings from the Mist Pass panel in world properties.
Normal
   Surface normal used for shading.
Vector
   Motion vectors for the vector blur node. The four components consist of 2D vectors giving the motion towards the
   next and previous frame position in pixel space.
UV
   Default render UV coordinates.
Object Index
   Pass index of object.
Material Index
   Pass index of material.

The Z, Object Index and Material Index passes are not anti-aliased.
This is done intentionally because such values can't really be blended correctly.

Alpha Threshold
   Z, Index, normal,
   UV and vector passes are only affected by surfaces with alpha transparency equal to or higher than this threshold.
   With value 0.0 the first surface hit will always write to these passes, regardless of transparency.
   With higher values surfaces that are mostly transparent can be skipped until an opaque surface is encountered.
