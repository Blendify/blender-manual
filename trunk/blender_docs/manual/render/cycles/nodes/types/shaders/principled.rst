.. _bpy.types.ShaderNodeBsdfPrincipled:

***************
Principled BSDF
***************

.. figure:: /images/render_cycles_nodes_types_shaders_principled_node.png
   :align: right

   Principled BSDF.

The *Principled* :abbr:`BSDF (Bidirectional scattering distribution function)`
that combines multiple layers into a single easy to use node.
It is based on the Disney principled model also known as the "PBR" shader,
making it compatible with other software such as Pixar's Renderman\ :sup:`®`
and Unreal Engine\ :sup:`®`. Image textures painted or baked from
software like Substance Painter\ :sup:`®` may be directly linked to
the corresponding parameters in this shader.

This "Uber" shader includes multiple layers to create a wide variety of materials.
The base layer is a user controlled mix between diffuse, metal,
subsurface scattering and transmission.
On top of that there is a specular layer, sheen layer and clearcoat layer.

.. note::

   The emphasis on compatibility with other software means that it interprets
   certain input parameters differently from older Blender nodes.


Inputs
======

Base Color
   Diffuse or metal surface color.
Subsurface
   Mix between diffuse and subsurface scattering.
Subsurface Radius
   Average scattering distance for RGB channels.
Subsurface Color
   Subsurface scattering base color.
Metallic
   Mix between dielectric (diffuse and specular with possible transparency)
   and metallic (fully specular with complex Fresnel).
Specular
   Amount of dielectric specular reflection. Specifies facing (along normal)
   reflectivity in the most common 0 - 8% range.

   .. hint::

      To compute this value for a realistic material with a known index of
      refraction, you may use this special case of the Fresnel formula:
      :math:`specular = ((ior - 1)/(ior + 1))^2 / 0.08`

      For example:

      - water: ior = 1.33, specular = 0.25
      - glass: ior = 1.5, specular = 0.5
      - diamond: ior = 2.417, specular = 2.15

      Since materials with reflectivity above 8% do exist, the field allows values above 1.

Specular Tint
   Tints the facing specular reflection using the base color, while glancing reflection remains white.

   Normal dielectrics have colorless reflection, so this parameter is not technically physically correct
   and is provided for faking the appearance of materials with complex surface structure.
Roughness
   Specifies microfacet roughness of the surface for diffuse and specular reflection.

   .. hint::

      When converting from the older *Glossy BSDF* node, use the square root of the original value.

Anisotropic
   Amount of anisotropy for specular reflection.
Anisotropic Rotation
   Rotates the direction of anisotropy, with 1.0 going full circle.

   .. hint::

      Compared to the *Anisotropic BSDF* node, the direction of highlight elongation
      is rotated by 90°. Add 0.25 to the value to correct.

Sheen
   Amount of soft velvet like reflection near edges,
   for simulating materials such as cloth.
Sheen Tint
   Mix between white and using base color for sheen reflection.
Clearcoat
   Extra white specular layer on top of others.
   This is useful for materials like car paint and the like.
Clearcoat Roughness:
   Roughness of clear coat specular.
IOR
   Index of refraction for transmission.
Transmission
   Mix between fully opaque surface at zero and fully glass like transmission at one.
Transmission Roughness
   With **GGX** distribution controls roughness used for transmitted light.
Normal
   Controls the normals of the base layers.
Clearcoat Normal
   Controls the normals of the *Clearcoat* layer.
Tangent
   Controls the tangent for the *Anisotropic* layer.


Properties
==========

Distribution
   Microfacet distribution to use.

   GGX
      A method that is faster than *Multiple-scattering GGX*
      but is less physically accurate. Selecting it enables the *Transmission Roughness* input.
   Multiple-scattering GGX
      Takes multiple bounce (scattering) events between microfacets into account.
      This gives a more energy conserving results, which would otherwise be visible as excessive darkening.

Subsurface Method
   Rendering method to simulate subsurface scattering.

   Christensen-Burley
      Is an approximation to physically based volume scattering.
      Gives less blurry results than Cubic and Gaussian functions.
   Random Walk
      Provides the most accurate results for thin and curved objects.
      This comes at the cost of increased render time or noise for more dense media like skin, but also better geometry detail preservation.
      Random Walk uses true volumetric scattering inside the mesh, which means that it works best for closed meshes.
      Overlapping faces and holes in the mesh can cause problems.


Outputs
=======

BSDF
   Standard shader output.


Examples
========

Below are some examples of how all the Principled BSDF's
parameters interact with each other.

.. figure:: /images/render_cycles_nodes_types_shaders_principled_example-1a.jpg
.. figure:: /images/render_cycles_nodes_types_shaders_principled_example-2a.jpg
.. figure:: /images/render_cycles_nodes_types_shaders_principled_example-2b.jpg
