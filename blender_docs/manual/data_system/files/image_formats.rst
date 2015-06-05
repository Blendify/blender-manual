
**************************
Supported Graphics Formats
**************************

Image Formats
=============

This is the list of image file formats supported internally by Blender:

.. |tick|  unicode:: U+2713
.. |cross| unicode:: U+2717

.. list-table::
   :header-rows: 1

   * - Format
     - Metadata
     - DPI
     - Extensions
   * - BMP
     - |cross|
     - |tick|
     - ``.bmp``
   * - Iris
     - |cross|
     - |cross|
     - ``.sgi`` ``.rgb`` ``.bw``
   * - PNG
     - |tick|
     - |tick|
     - ``.png``
   * - JPEG
     - |tick|
     - |tick|
     - ``.jpg`` ``.jpeg``
   * - JPEG 2000
     - |cross|
     - |cross|
     - ``.jp2`` ``.jp2`` ``.j2c``
   * - Targa
     - |cross|
     - |cross|
     - ``.tga``
   * - Cineon
     - |cross|
     - |cross|
     - ``.cin``
   * - DPX
     - |cross|
     - |cross|
     - ``.dpx``
   * - OpenEXR
     - |tick|
     - |tick|
     - ``.exr``
   * - Radiance HDR
     - |cross|
     - |cross|
     - ``.hdr``
   * - TIFF
     - |cross|
     - |tick|
     - ``.tif`` ``.tiff``


More information information about specific formats has been written here:

- :doc:`OpenEXR (Multilayer) </data_system/files/formats/openexr>`
- :doc:`DPX and Cineon </data_system/files/formats/dpx_cineon>`
- :doc:`Radiance HDR </data_system/files/formats/hdr>`


.. note:: Quicktime

   On OSX, Quicktime can be used to access file formats not natively supported (such as GIF).


High Dynamic Range
------------------

Blender's image input/output system transparently support regular 32 bits graphics
(4 x 8 bits) or floating point images storing 128 bits per pixel (4 x 32 bits).

On reading High Dynamic Range Images (`HDRI <http://http://en.wikipedia.org/wiki/HDRI>`__),
even when they're for example 3 x 10 bits,
the pixels are always converted internally to RGBA float values. Optionally,
like while displaying the image in the UV Image editor,
this then gets converted to regular 32 bits for faster display.

When an image has float colors, all imaging functions in Blender default to use that.
This includes the Video Sequence Editor, texture mapping, background images,
and the Compositor.

For hints how to manipulate or view HDR images, please check the Curves UI page.


Color Modes
===========

- BW, Images get saved in 8 bits grayscale (only PNG, JPEG, TGA, TIFF)
- RGB, Images are saved with RGB (color)
- RGBA, Images are saved with RGB and an Alpha channel (if supported)


Color Depths
============

- 8 bit color channels
- 12 bit color channels
- 16 bit color channels
- 32 bit color channels
