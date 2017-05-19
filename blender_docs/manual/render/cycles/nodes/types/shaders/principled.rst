
***************
Principled Node
***************

.. figure:: /images/render_cycles_nodes_shaders_principled-bsdf.png
   :align: right

   Refraction Node.


The *Principled* :abbr:`BSDF (Bidirectional scattering distribution function)`
that combines multiple layers into a single easy to use node.
It is based on the Disney principled model also known as the "PBR" shader,
making it compatible with other software such as Pixar's Renderman\ :sup:`®`\
and Unreal Engine\ :sup:`®`\. Image textures painted or baked from
software like Substance Painter\ :sup:`®`\ may be directly linked to the
corresponding parameters in this shader.

This "Uber" shader includes multiple layers to create a wide variety of materials.
The base layer is a user controlled mix between diffuse, metal,
subsurface scattering and transmission.
On top of that there is a specular layer, sheen layer and clearcoat layer.


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
   Mix between dielectric (diffuse and specular)
   and metallic (fully specular with complex Fresnel).
Specular
   Amount of specular reflection.
Specular Tint
   Mix between white (typical for dielectric surfaces)
   and using base color for specular reflection.
Roughness
   Specular reflection rough from perfect sharp reflection
   at zero to almost diffuse at one.
Anisotropic
   Amount of anisotropy for specular reflection.
Anisotropic Rotation
   Rotate the anisotropic reflection.
Sheen
   Amount of soft velvet like reflection near edges,
   for simulating materials such as cloth.
Sheen Tint
   Mix between white and using base color for sheen reflection.
Clearcoat
   Extra white specular layer on top of others.
   This is useful for materials like car paint and the like.
Clearcoat Gloss:
   Roughness of clear coat specular,
   from zero almost diffuse to perfect sharp reflection at one.
IOR
   Index of refraction for transmission.
Transmission
   Mix between fully opaque surface at zero and fully glass like transmission at one.
Normal
   Controls the normals of the base layers
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
      but is less physically accurate and does not all for *Refraction Roughness*
   Multiple-scattering GGX
      Takes multiple bounce (scattering) events between microfacets into account.
      This gives a more energy conserving results, which would else be visible as excessive darkening.


Outputs
=======

BSDF
   Standard shader output.


Examples
========

Below are some examples of how all the Principled Node's
parameters interact with each other.

.. (todo) Add images
