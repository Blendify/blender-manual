.. This is for 3D View painting, image editor painting belongs in the image editor section.

************
Introduction
************

A UV Texture is a picture (image, sequence or movie)
that is used to color the surface of a mesh.
The UV Texture is mapped to the mesh through one or more UV maps.
There are three ways to establish the image used by the UV Texture:


- Paint a flat image in the UV/Image Editor onto the currently selected UV Texture,
  using its UV map to transfer the colors to the faces of the mesh.
- Paint the mesh in the 3D View, and let Blender use the currently selected UV map to update the UV Texture
  (see :ref:`Projection Painting <painting_texture-index>`).
- Use any image-editing (paint) program to create an image.
  In the UV/Image Editor, select the UV Texture and load the image.
  Blender will then use that texture's UV map to transfer the colors to the faces of the mesh

Blender features a built-in paint mode called Texture Paint which is designed specifically to
help you edit your UV Textures and images quickly and 
easily in either the UV/Image or the 3D View Editor. 
Since a UV Texture is just a special-purpose image,
you can also use any external paint program. For example,
GIMP is a full-featured image manipulation program that is also open-source.


.. figure:: /images/texture-painting.jpg
   :width: 400px

   Texture painting in Blender.


Since a mesh can have layers of UV Textures, there may be many images that color the mesh.
However, each UV Texture only has one image.

Texture Paint works in both a 3D View and the UV/Image Editor.
In the 3D View in Texture Paint Mode, you paint directly on the mesh by
:ref:`projecting onto the UVs <painting_texture-index>`.


Getting Started
===============

Once you have unwrapped your model to a UV Map (as explained in previous pages),
you can begin the texturing process.
You cannot paint on a mesh in Texture Paint Mode without **first** unwrapping your mesh,
**and** doing one of the following steps. Either:

See: :doc:`Applyin Image </editors/uv_image/uv_editing/applying_image>`.

After you have done one of these two things,
you can modify the image using the Texture Paint Mode:


.. figure:: /images/texture-painting-paintmode.jpg
   :width: 250px

   Enabling paint mode.


- In the 3D View, select Texture Paint Mode from the mode selector in the header,
  and you can paint directly onto the mesh.
- In the UV/Image Editor, switch the mode from View to Paint (shown to the right).


.. note:: Square Power of 2

   Texture paint is very fast and responsive when working in the 3D View and when your image is sized as a
   square where the side lengths are a power of two, e.g. 256×256, 512×512, 1024×1024, etc.


Once you enable Texture Painting, your mouse becomes a brush. To work with the UV layout
(for example, to move coordinates) you must go back to "View" mode.

As soon as you enable Texture Painting or switch to Texture Paint Mode,
brush settings become available in the Tool Shelf :kbd:`T`.

In the UV/Image Editor,
you paint on a flat canvas that is wrapped around the mesh using UV coordinates.
Any changes made in the UV/Image Editor show up immediately in the 3D View,
and vice versa.

A full complement of brushes and colors can be selected from 
the Properties region in the UV/Image Editor.
Brush changes made in either panel are immediately reflected in the other panel. However,
the modified texture will **not** be saved automatically;
you must explicitly do so by :menuselection`Image --> Save` in the UV/Image Editor.


Texture Preview
===============

If your texture is already used to color, bump map, displace, alpha-transparent, etc.,
a surface of a model in your scene (in other technical words,
is mapped to some aspect of a texture via a texture channel using UV as a map input),
you can see the effects of your painting in the context of your scene as you paint.

To do this, set up side-by-side areas, one area in 3D View set to *Texture* shading option,
and in the second area the UV/Image Editor loaded with your image.
Position the 3D View to show the object that is UV mapped to the loaded image.
In the image to the right, the texture being painted is mapped to the "Normal" attribute,
and is called "bump mapping",
where the gray-scale image is used to make the flat surface appear bumpy.
See Texture Mapping Output for more information on bump mapping.


Saving
======

If the header menu item Image has an asterisk next to it,
it means that the image has been changed, but not saved. 
Use the :menuselection`Image --> Save Image`
option to save your work with a different name or overwrite the original image.

.. note:: UV Textures

   Since images used as UV Textures are functionally different from other images,
   you should keep them in a directory separate from other images.


The image format for saving is independent of the format for rendering.
The format for saving a UV image is selected in the header of the File browser,
and defaults to ``PNG`` (``.png``).

If Packing is enabled in the File browsers header, 
or if you manually :menuselection`Image --> Pack Image`,
saving your images to a separate file is not necessary.


Using an External Image Editor
==============================

If you use an external program to edit your UV Texture, you must:

- run that paint program (GIMP, Photoshop\ :sup:`®` \, etc.)
- load the image or create a new one
- change the image, and
- re-save it within that program.
- Back in Blender, you reload the image in the UV/Image Editor.

You want to use an external program if you have teams of people using different programs that
are developing the UV textures,
or if you want to apply any special effects that Texture Paint does not feature,
or if you are much more familiar with your favorite paint program.


Known Limitations
=================

UV Overlap
----------

In general overlapping UVs are not supported (as with texture baking).

However, this is only a problem when a single brush stroke paints onto multiple faces that share a texture.


Perspective View & Faces Behind the View
----------------------------------------

When painting onto a face which is partially behind the view (in perspective mode), the face cannot be painted on.
To avoid, this zoom out or use an Ortho mode viewport.


Perspective View & Low Poly
---------------------------

When painting onto a face in perspective mode onto a low poly object with normals pointing away from the view,
painting may fail; to workaround disable the *Normal* option in the paint panel.

Typically this happens when painting onto the side of a cube 
(see `Bug report T34665 <https://developer.blender.org/T34665>`__).
