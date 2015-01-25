
***************************
Material Textures Influence
***************************

Not only can textures affect the color of a material,
they can also affect many of the other properties of a material. The different aspects of a
material that a texture influences are controlled in the *Influence* panel.

.. note::

   Texture options for *Surface* and *Wire* materials and in some cases also for *Volume* and *Halo* materials.


Surface and Wire materials
==========================

.. figure:: /images/25-Manual-Textures-Influence-Surface.jpg
   :width: 308px

   Texture Influence panel for a Surface material


Diffuse
^^^^^^^

Intensity
   Amount texture affects affects diffuse reflectivity
Color
   Amount texture affect the basic color or RGB value of the material
Alpha
   Influences the opacity of the material.
   See :doc:`Use Alpha for Object Transparency </ls/textures/use_alpha_for_object_transparency>`.
   Also use *Z Transparency* for light and if combining multiple channels.
Translucency
   Influences the Translucency amount.


Specular
^^^^^^^^

Intensity
   Amount texture affect specular reflectivity
Color
   Influences the *Specular* color, the color of the reflections created by the lamps on a glossy material.
Hardness
   Influences the specular hardness amount.
   A DVar of 1 is equivalent to a Hardness of 130, a DVar of 0.5 is equivalent to a Hardness of 65.


Shading
^^^^^^^

Ambient
   Influences the amount of Ambient light the material receives.
Emit
   Influences the amount of light Emitted by the material.
Mirror
   Influences the mirror color. This works with environment maps and raytraced reflection.
Ray Mirror
   Influences the strength of raytraced mirror reflection.


Geometry
^^^^^^^^

Normal
   Commonly called bump mapping, this alters the direction of the surface normal.
   This is used to fake surface imperfections or unevenness via bump mapping, or to create reliefs.
Warp
   *Warp* allows textures to influence/distort the texture coordinates of a next texture channel.
   The distortion remains active over all subsequent channels, until a new Warp has been set.
   Setting the factor at zero cancels out the effect.
Displace
   Influences the Displacement of vertices,
   for using :doc:`Displacement Maps </render/blender_render/textures/influence/material/displacement>`.


Other Controls
--------------

Blend
   Blending operation to perform.
   See :doc:`Texture Blending Modes </render/blender_render/textures/influence/material/blending_modes>` for details.
RGB to intensity
   With this option enabled, an RGB texture (affects color) is used as an intensity texture (affects a value).
Blend Color
   If the texture is mapped to Col,
   what color is blended in according to the intensity of the texture? Click on the swatch or set the RGB sliders.
Negative
   The effect of the Texture is negated. Normally white means on, black means off, *Negative* reverses that.
Stencil
   The active texture is used as a mask for all following textures.
   This is useful for semitransparent textures and "Dirt Maps".
   Black sets the pixel to "untexturable". The *Stencil* mode works similar to a layer mask in a 2D program.
   The effect of a stencil texture can not be overridden, only extended. You need an intensity map as input.
DVar
   Destination Value (not for RGB).
   The value with which the Intensity texture blends with the current value. Two examples:


- The *Emit* value is normally 0. With a texture mapped to *Emit* you will get maximal effect,
  because *DVar* is 1 by default. If you set *DVar* to 0 no texture will have any effect.


- If you want transparent material, and use a texture mapped to *Alpha*,
  nothing happens with the default settings, because the *Alpha* value in the *Material* panel is 1.
  So you have to set *DVar* to 0 to get transparent material (and of course *Z Transparency* also).
  This is a common problem for beginners. Or do it the other way round - set *Alpha* to 0 and leave *Dvar* on 1.
  Of course the texture is used inverted then.

Bump Mapping
   Settings for bump mapping.
   *Method*
   *Best Quality*, *Default*, *Compatible*, *Original*
   *Space*

      *Texture Space*, *Object Space*, *View Space*


Volume materials
================

.. figure:: /images/25-Manual-Textures-Influence-Volume.jpg
   :width: 308px

   Texture Influence panel for Volume material


Special texture options for *Volume* materials

Density
   Causes the texture to affect the volume's density.
Emission
   Causes the texture to affect the volume's emission.
Scattering
   Amount the texture affects scattering.
Reflection
   Amount the texture affects brightness of out-scattered light
Emission Color
   Amount the texture affects emission color.
Transmission
   Amount the texture affects result color after light has been scattered/absorbed.
Reflection Color
   Amount the texture affects color of out-scattered light.


Halo materials
==============

.. figure:: /images/25-Manual-Textures-Influence-Halo.jpg
   :width: 308px

   Texture Influence panel for a Halo material


Special texture options for *Halo* materials

Size
   Amount the texture affects ray mirror.
Hardness
   Amount the texture affects hardness.
Add
   Amount the texture affects translucency.

