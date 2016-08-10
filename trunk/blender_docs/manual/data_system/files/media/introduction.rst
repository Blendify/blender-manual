
************
Introduction
************

Color Spaces
============

When loading and saving media formats it is important to color management in mind.
File formats such as PNG or JPEG will typically store colors in a color space ready for
display, not in a linear space. When they are, for example, used as textures in renders,
they need to be converted to linear first, and when saving renders for display on the web,
they also need to be converted to a display space. Other file formats like OpenEXR store
linear color spaces and as such are useful as intermediate files in production.

When working with image files, the default color space is usually the right one.
If this is not the case,
the color space of the image file can be configured in the image settings. A common situation
where manual changes are needed is when working with or baking normal maps or displacement
maps, for example. Such maps do not actually store colors, just data encoded as colors.
In such cases they should be marked as *Non-Color Data*.

Image data-blocks will always store float buffers in memory in the scene linear color space,
while a byte buffer in memory and files on disk are stored in the color space specified with
this setting:

Color Space
   The color space of the image on disk. This depends on the file format,
   for example PNG or JPEG images are often stored in sRGB, while OpenEXR images are stored in a linear color space.
   Some images such as normal, bump or stencil maps do not strictly contain 'colors',
   and on such values no color space conversion should ever be applied.
   For such images the color space should be set to None.

.. figure:: /images/render_post_cm_image_settings.jpg

   Image settings for color management.


By default only renders are displayed and saved with the render view transformations applied.
These are the Render Result and Viewer image data-blocks,
and the files saved directly to disk with the Render Animation operator.
However, when loading a render saved to an intermediate OpenEXR file,
Blender cannot detect automatically that this is a render (it could be e.g.
an image texture or displacement map).
We need to specify that this is a render and that we want the transformations applied,
with these two settings:

View as Render
   Display the image data-block (not only renders) with view transform, exposure, gamma, RGB curves applied.
   Useful for viewing rendered frames in linear OpenEXR files the same as when rendering them directly.
Save as Render
   Option in the image save operator to apply the view transform, exposure, gamma, RGB curves.
   This is useful for saving linear OpenEXR to e.g. PNG or JPEG files in display space.


OpenColorIO Configuration
=========================

Blender comes with a standard OpenColorIO configuration that contains a number of useful
display devices and view transforms.
The reference linear color space used is the linear color space with Rec.
709 chromaticities and D65 white point.

However, OpenColorIO was also designed to give a consistent user experience across
`multiple applications <http://opencolorio.org/CompatibleSoftware.html>`__,
and for this a single shared configuration file can be used. Blender will use the standard
OCIO environment variable to read an OpenColorIO configuration other than the default Blender
one. More information about how to set up such a workflow can be found on the
`OpenColorIO website <http://opencolorio.org/>`__.

We currently use the following color space roles:

scene_linear
   color space used for rendering, compositing, and storing all float precision images in memory.
default_sequencer
   default color space for sequencer, *scene_linear* if not specified
default_byte
   default color space for byte precision images and files, *texture_paint* if not specified.
default_float
   default color space for float precision images and files, *scene_linear* if not specified.

The standard Blender configuration also includes some support for
`ACES <https://www.oscars.org/science-technology/sci-tech-projects/aces>`__
(`code and documentation <https://github.com/ampas/aces-dev>`__),
even though we have a different linear color space.
It's possible to load and save EXR files with the Linear ACES color space,
and the RRT view transform can be used to view images with their standard display transform.
However, the ACES gamut is larger than the Rec. 709 gamut,
so for best results an ACES specific configuration file should be used.
OpenColorIO provides an `ACES configuration <http://opencolorio.org/configurations/index.html>`__,
though it may need a few more tweaks to be usable in production.
