
************
Introduction
************

In CGI, texture mapping is a method to add detail to surfaces by projecting images and
patterns onto those surfaces.
The projected images and patterns can be set to affect not only color,
but also specularity, reflection, transparency, and even fake three-dimensional depth.
Most often, the images and patterns are projected during render time,
but texture mapping is also used to sculpt, paint and deform objects.

.. seealso::

   Texture processing for :doc:`Combined Textures </editors/texture_node/introduction>`
   in the Compositor.


Material Textures
=================

The material settings that we've seen so far produce smooth, *uniform* objects,
but such objects are not particularly true to reality,
where uniformity tends to be uncommon and out of place.
In order to deal with this unrealistic uniformity,
Blender allows the user to apply *textures* which can modify the reflectivity, specularity,
roughness and other surface qualities of a material.

.. figure:: /images/render_blender-render_textures_introduction_layers.jpg
   :width: 320px

   Textures layer on base material.

Textures are like additional layers on top of the base material.
Textures affect one or more aspects of the object's net coloring.
The net color you see is a sort of layering of effects, as shown in this example image.
The layers, if you will, are:

- Your object, lit with *ambient* light based on your world settings.
- Your base *material*, which colors the whole surface in a uniform color that reacts to light,
  giving different shades of the diffuse, specular,
  and mirror colors based on the way light passes through and into the surface of the object.
- A *primary texture* layer that overlays a purple marble coloring.
- A *second cloud texture* that makes the surface transparent
  in a misty/foggy sort of way by affecting the Alpha value.
- These two textures are *mixed* with the base material to provide the net effect: a cube of purplish-brown fog.

.. figure:: /images/render_blender-render_textures_introduction_somemetal.jpg
   :width: 320px

   Some metal textures.

This notion of using *more than one* texture, to achieve a combined effect,
is one of the "hidden secrets" of creating realistic-looking objects.
If you carefully "look at the light" while examining any real-world object,
you will observe that the final appearance of that object is best described as the combination,
in different ways and in different amounts, of several distinct underlying visual characteristics.
These characteristics might be more (or less) strongly apparent at different angles,
under different lighting conditions, and so forth.
Blender allows you to achieve this in many ways.

You can use "a stack of texture layers" as described
in :doc:`this section </render/shaders/textures/texture_panel>`,
or you can also use arbitrarily complex networks of "texture nodes"
as discussed :doc:`here </editors/texture_node/introduction>`.


UV Textures vs. Procedural Textures
===================================

A Material Texture, that has a Map Input of UV,
and is an image texture that is mapped to Color, is equivalent to a UV texture.
It provides much more flexibility, because it can be sized and offset, and the degree to which
it affects the color of your object can be controlled in the Map To panel. In addition,
you can have different images for each texture channel; one for color, one for alpha,
one for normals, one for specularity, one for reflectivity, *etc.* Procedural textures,
like Clouds, are incredibly simple and useful for adding realism and details to an image.

.. list-table::
   :header-rows: 1
   :class: valign
   :widths: 40 60

   * - UV Texture
     - Procedural Texture
   * - Image maps to precise coordinates on the selected faces of the mesh.
     - Pattern is generated dynamically, and is mapped to the entire mesh (or portion covered by that material).
   * - The Image maps once to a range of mesh faces specifically selected.
     - Maps once to all the faces to which that material is assigned; either the whole mesh or a portion.
   * - Image is mapped once to faces.
     - Size XYZ in the Map Input allows tiling the texture many times across faces.
       Number of times depends on size of mesh.
   * - Affect the color and the alpha of the object.
     - Can also affect normals (bumpiness), reflectivity, emit, displacement,
       and a dozen other aspects of the mesh's appearance; can even warp or stencil subsequent textures.
   * - Can have many for a mesh.
     - Can be layered, up to 10 textures can be applied, layering on one another.
       Many mix methods for mixing multiple channels together.
   * - Any Image type (still, video, rendered). Generated test grid available.
     - Many different types: clouds, wood grain, marble, noise, and even magic.
   * - Provides the UV layout for animated textures.
     - Noise is the only animated procedural texture.
   * - Takes very limited graphics memory
     - Uses no or little memory; instead uses CPU compute power.

So, in a sense, a single UV texture for a mesh is simpler but more limited than using multiple textures
(mapped to UV coordinates), because they do one specific thing very well:
adding image details to a range of faces of a mesh.
They work together if the procedural texture maps to the UV coordinates specified in your layout.
As discussed earlier, you can map multiple UV textures to different images using
the UV Coordinate mapping system in the Map Input panel.
