
.. _bpy.types.ShaderNodeEeveeSpecular:

*************
Specular BSDF
*************

The *Specular* :abbr:`BSDF (Bidirectional scattering distribution function)`
that combines multiple layers into a single easy to use node.

It is similar to the Principled :abbr:`BSDF (Bidirectional scattering distribution function)` node but uses the *specular* workflow instead of the metallic. It has much less parameters and supports less features. Both might be merged into one node in the future.

The specular workflow works by specifying the facing (along normal) reflection color.
The result may not be physically plausible because there is no energy conservation.

.. seealso::
   :doc:`Principled BSDF </render/cycles/nodes/types/shaders/principled>`.

Inputs
======

Base Color
   Diffuse surface color. For conductor materials (Metals) it should be black.

Specular Color
   Amount of specular reflection. Specifies facing (along normal)
   reflectivity. Conductor materials (Metals) can have colored specular reflection.

   .. hint::

      To compute this value for a realistic material with a known index of
      refraction, you may use this special case of the Fresnel formula:
      :math:`specular = ((ior - 1)/(ior + 1))^2`

      For example:

      - water: ior = 1.33, specular = 0.25
      - glass: ior = 1.5, specular = 0.5
      - diamond: ior = 2.417, specular = 2.15

Roughness
   Specifies microfacet roughness of the surface for diffuse and specular reflection.

   .. hint::

      When converting from the older *Glossy BSDF* node, use the square root of the original value.

Emissive Color
   Color of the emitted light. This light is added to the BSDF result.

Transparency
   Transparency factor. It is the inverse of the alpha channel (1 - alpha) you can find in an image. Use an Invert node to convert alpha to transparency. This will only have an effect if the material uses a blend mode other than opaque.

Normal
   Controls the normals of the base layers.

Clearcoat
   Extra white specular layer on top of others.
   This is useful for materials like car paint and the like.

Clearcoat Roughness:
   Roughness of clearcoat specular.

Clearcoat Normal
   Controls the normals of the *Clearcoat* layer.

Ambient Occlusion
   Amount of occlusion to apply to indirect lighting. Usually a bake ambient occlusion map. The final occlusion factor is the minimum of this input and the runtime ambient occlusion effect.


Outputs
=======

BSDF
   Standard shader output.
