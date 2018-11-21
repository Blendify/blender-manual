
*************
Nodes Support
*************

Most nodes are taken from Cycles. However some features are missing and may (or may not) be implemented in Eevee in the future.

.. seealso::
  :doc:`Material </render/cycles/nodes/index>`.


Eevee only Nodes
================

Theses nodes are only available if Eevee is the active render engine. These nodes will not work in Cycles.

Shader to RGB
-------------

Eevee supports the conversion of BSDF outputs into color inputs to make any kind of custom shading. This is supported using the "Shader to RGB" node.

.. seealso::
  :doc:`Material </render/eevee/materials/nodes/shader_to_rgb>`.


Specular BSDF
-------------

This node implement the specular workflow found in other render engine.

.. seealso::
  :doc:`Material </render/eevee/materials/nodes/specular_bsdf>`.


Other Nodes Support
===================

If something is not listed here, it is supported.


Shaders Nodes
-------------

In the general case, shader nodes should behave more or less like in Cycles. So be sure to checkout Cycles manual for that.

.. seealso::
  :doc:`Material </render/cycles/nodes/types/shaders/index>`.

Although most BSDFs are supported, most of them are approximations and are not feature complete.

Diffuse BSDF
   Roughness is not supported. Only lambertian diffusion is supported.

Emission
   It is treated as indirect lighting and will only show up in SSR and Probes.

Glass / Refraction BSDF
   Does not refract lamps. Does not support Beckmann and GGX Multiscatter distribution. See limitation of Refraction.

Glossy BSDF
   Does not support Beckmann, Ashikhmin-Shirley and GGX Multiscatter distribution.

SubSurface Scattering 
   Random Walk sampling is not supported. Per color channel Radius is specified by the default socket value. Any link pluged into this socket gets ignored. If Separate Albedo is off Texture Blur will be treated as always 1.0. Texture Blur is not accurate for any value other than 0.0 and 1.0.

Transparent BSDF
   Only monochromatic transparency is supported. The color input will be converted to float and used as alpha value. Transparency will only have an effect if the Material blend mode is not Opaque.

Translucent BSDF
   Does not diffuse the light inside the object. It only lights the object with reversed normals.

Principled BSDF
   Cumulate limitations from Diffuse BSDF, Glossy BSDF, Refraction BSDF and SubSurface Scattering. Anisotropy is not supported. The Sheen layer is a crude approximation.

Volume Absorption
   See volume Limitation.

Volume Scatter
   The anisotropy parameter will be mixed and average for all overlappping volumetric objects, which is not physically correct and differs from Cycles. Also see Volume Limitation.

Principled Volume
   Same as Volume Scatter. Also see volume Limitation.

Holdout
   Not supported.

Anisotropic BSDF
   Not supported.

Toon BSDF
   Not supported.

Hair BSDF
   Not supported.

Velvet BSDF
   Not supported.

Principled Hair BSDF
   Not supported.


Input Nodes
-----------

Ambient Occlusion
   All parameters will have no effects except for Normal and Color. This is because the AO is computed before evaluating this node and it uses the scene settings for that.

Camera Data
   Everything is compatible.

Geometry
   Pointiness is not supported.

Attribute
   Defaults to active UV layer. Only "density", "color", "flame" and "temperature" builtin attributes are supported. UVs and Vertex Color layers are supported.

Bevel
   Not supported.

Fresnel
   Everything is compatible.

Hair Info
   The Random output uses a different RNG algorithm. Range and statistical distribution of the values should be the same but the values will be different.

Layer Weight
   Everything is compatible.

Light Path
   Eevee has no real concept of Rays. But in order to ease the workflow between Cycles and Eevee, some of the outputs are supported in particular cases.
   This node makes it possible to tweak indirect lighting in the shader.

   Only a subset of the outputs is supported and the ray depth has not exactly
   the same meaning:

   * *Is Camera* : Supported.
   * *Is Shadow* : Supported.
   * *Is Diffuse* : Supported.
   * *Is Glossy* : Supported.
   * *Is Singular* : Not supported. Same as Is Glossy.
   * *Is Reflection* : Not supported. Same as Is Glossy.
   * *Is Transmission* : Not supported. Same as Is Glossy.
   * *Ray Length* : Not supported. Defaults to 1.0.
   * *Ray Depth* : Indicate the current bounce when baking the light cache.
   * *Diffuse Depth* : Same as Ray Depth but only when baking diffuse light.
   * *Glossy Depth* : Same as Ray Depth but only when baking specular light.
   * *Transparent Depth* : Not supported. Defaults to 0.
   * *Transmission Depth* : Not supported. Same as Glossy Depth.

   NOTE: Is Glossy does not work with Screen Space Reflections/Refractions but does work with reflection planes (when used with SSR or not).

Object Info
   Everything is compatible.

Particle Info
   Not supported.

Tangent
   Everything is compatible.

Texture Coordinate
   From Dupli and coordinate from custom Object is not supported.

UV Map
   From Dupli is not supported.

Wireframe
   Pixel size option does not give exactly the same output as Cycles. The width can be a bit different.


Other Nodes
-----------

Light Falloff
   Not supported.

Bump
   Imprecision due to less precise derivatives.

Displacement/Vector Displacement
   Not supported.

IES Texture
   Not supported.

Sky Texture
   Not supported.

Image Texture
   Smart Interpolation always uses Cubic interpolation.
   Artifact present using Tube or Sphere projection with linear interpolation. This is due to hardware mipmaping and Anisotropic filtering. This kind of artifacts will be also visible if the texture coordinates provided are not continuous.
   Using Box projection with Extend type set to Clip or Extend is not supported. It will always use Repeat instead.

Material Output
   Displacement output behaviour is broken compared to cycles.
