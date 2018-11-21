
*******************
Reflection Cubemaps
*******************

Specular Indirect Lighting is stored into an array of cubemaps. Theses are defined by the Reflection Cubemap objects.
They specify where to sample the scene's lighting and where to apply it.

.. seealso::
   :doc:`Indirect Lighting </render/eevee/indirect_lighting>`.

*Screen Space Reflection* are much more precise than reflection cubemaps. If enabled, they are applied in priority and we only use cubemaps as fallback if a ray miss.

If *Ambient Occlusion* is enabled, it will be applied in a physically plausible manner to specular indirect lighting.

.. note::
   The cube probes are encoded into tetahedral maps. They may exhibit some distortion on the negative Z hemisphere. Thoses are more visible on higher roughness values.

Blending
========

The lighting values from an Reflection Cubemap will fade outwards until the volume bounds are reached. They will fade into the world's lighting or another Reflection Cubemap's lighting.
If multiple Reflection Cubemap overlaps, smaller (in volume) ones will always have more priority.
If an object is not inside any Reflection Cubemap influence, or if the indirect lighting has not been baked, the world's cubemap will be used to shade it.


.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Object Data --> Probe`

Distance
   A probe object only influences the lighting of nearby surfaces. This influence zone is defined by the Distance parameter and object scalling.
   It is a bit different, depending on the probe type.

   For Reflection Cubemaps the influence volume can either be a box or a sphere centered on the probe's origin.

Falloff
   Percentage of the influence distance during which the influence of a probe fades linearly.

Intensity
   Intensity multiplicator of the recorded lighting. Making this parameter anything other than 1.0 is not physically correct. Use it for tweaking or artistic purpose.

Clipping
   Define the near and far clip distances when capturing the scene.

Visibility Collection
   Sometimes, it is useful to limit which objects appear in the lightprobe's captured lighting. For instance, an object that is too close to a capture point might be better excluded.
   This is what the visibility collection does. Only objects that are in this collection will be visible when this probes will capture the scene.

   There is also an option to invert this behaviour and effectively hide the objects inside this collection.

   .. note:: This is only a filtering option. This means that if an object is not visible at render time it won't be visible in during the probe render.

Custom Parallax

   .. admonition:: Reference
      :class: refbox

      :Panel:     :menuselection:`Object Data --> Custom Parallax`

   By default, the influence volume is also the parallax volume.
   The parallax volume is a volume on which is projected the recorded lighting. It should roughly fit it surrounding.
   Sometimes it may be better to adjust the parallax volume without touching the influence parameters.
   In this case, just enable the *Custom Parallax* and change the shape and distance of the parallax volume independently.


Viewport Display
================

Influence
   Show the influence bounds in the 3D view. The inner sphere is where the falloff starts.

Clipping
   Show the clipping distance in the 3D view.

Parallax
   Show the *Custom Parallax* shape in the 3D view.