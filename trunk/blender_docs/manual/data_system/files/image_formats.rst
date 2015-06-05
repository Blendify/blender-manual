
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
   * - Cineon & DPX
     - |cross|
     - |cross|
     - ``.cin`` ``.dpx``
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

.. note:: Quicktime

   On OSX, Quicktime can be used to access file formats not natively supported (such as GIF).


Metadata
--------

Blender can save details such as render-time, marker, camera... etc, into the file.
See: :doc:`Render Metadata </render/post_process/stamp>`.

Only some files support this however.


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


Format Details
==============


Cineon & DPX
------------

Cineon is Kodak's standard for film scanning, 10 bits/channel and logarithmic.
DPX has been derived from Cineon as the ANSI/SMPTE industry standard.
DPX supports 16 bits color/channel, linear as well as logarithmic.
DPX is currently a widely adopted standard used in the film hardware/software industry.

DPX as well as Cineon only stores and converts the "visible" color range of values between 0.0
and 1.0 (as result of rendering or composite). No alpha is written.

The code has been gratefully copied from CinePaint. According to CinePaint's main developer
Robin Rowe the DPX code defaults to logarithmic colorspace.
We cannot find yet how to disable this, but it seems to read/write fine without visible loss.

Blender DPX files (entire Elephants Dream movie)
have been successfully imported in a Quantel IQ HD/2K finishing/grading set without problems,
so for now we assume it's compliant for professional usage.


OpenEXR
-------

`ILM's OpenEXR <http://www.openexr.com>`__ has become a software industry standard for HDR image files,
especially because of its flexible and expandable structure.

OpenEXR files can store values in the entire floating point space,
positive as well as negative numbers.

Apart from reading all OpenEXR file types, with RGBA and optional Z saved,
Blender supports OpenEXR in two ways:


Render Output
^^^^^^^^^^^^^

Available options for OpenEXR render output are:

Half
   Saves images in a custom 16 bits per channel floating point format.
   This reduces the actual "bit depth" to 10 bits, with a 5 bits power value and 1 bit sign.

Zbuf
   Save the depth information.
   In Blender this now is written in floats too,
   denoting the exact distance from the camera in "Blender unit" values.

Preview
   On rendering animations (or single frames via command line),
   Blender saves the same image also as a JPEG, for quick preview or download.

**Compression** (this button is below the Image menu button, default set to "None")


- PIZ, lossless wavelet compression. Compresses images with grain well.
- ZIP, standard lossless compression using zlib
- RLE, runlength encoded, lossless, works well when scanlines have same values.
- PXR24. lossy algorithm from Pixar, converting 32 bits floats to 24 bits floats.


Multi-layer, Multi-pass, tile-based files
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An OpenEXR file can hold unlimited layers and passes, stored hierarchically.
This feature now is in use for the "Save Buffers" render option.
This option doesn't allocate the entire final Render Result before render
(which can have many layers and passes), but saves for each tile the intermediate result to a
single OpenEXR file in the default Blender 'temp' directory.

When rendering is finished, after all render data has been freed,
this then is read back entirely in memory.


Radiance HDR
------------

Radiance is a suite of tools for lighting simulation originally written by Greg Ward.
Since Radiance had the first (and for a long time the only) HDR image format,
this format is supported by many other software packages.

Radiance (.hdr) files store colors still in 8 bits per component, but with an additional
(shared) 8 bits exponent value, making it 32 bits per pixel.
Only RGB can be stored in these files.

