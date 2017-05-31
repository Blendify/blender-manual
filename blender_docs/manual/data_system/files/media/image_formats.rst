
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
   :class: valign
   :widths: 25 25 10 10 10 20

   * - Format
     - `Channel Depth`_
     - Alpha
     - :doc:`Metadata </render/output/metadata>`
     - DPI
     - Extensions
   * - BMP
     - 8bit
     - |cross|
     - |cross|
     - |tick|
     - ``.bmp``
   * - Iris
     - 8bit
     - |tick|
     - |cross|
     - |cross|
     - ``.sgi`` ``.rgb`` ``.bw``
   * - PNG
     - 8, 16bit
     - |tick|
     - |tick|
     - |tick|
     - ``.png``
   * - JPEG
     - 8bit
     - |cross|
     - |tick|
     - |tick|
     - ``.jpg`` ``.jpeg``
   * - JPEG 2000
     - 8, 12, 16bit
     - |tick|
     - |cross|
     - |cross|
     - ``.jp2`` ``.jp2`` ``.j2c``
   * - Targa
     - 8bit
     - |tick|
     - |cross|
     - |cross|
     - ``.tga``
   * - `Cineon & DPX`_
     - 8, 10, 12, 16bit
     - |tick|
     - |cross|
     - |cross|
     - ``.cin`` ``.dpx``
   * - `OpenEXR`_
     - float 16, 32bit
     - |tick|
     - |tick|
     - |tick|
     - ``.exr``
   * - `Radiance HDR`_
     - float
     - |tick|
     - |cross|
     - |cross|
     - ``.hdr``
   * - TIFF
     - 8, 16bit
     - |tick|
     - |cross|
     - |tick|
     - ``.tif`` ``.tiff``

.. hint::

   If you are not interested in technical details,
   a good rule of thumb for selecting output formats for your project is:

   Use OpenEXR
      if you intend to do compositing or color-grading on these images.
   Use PNG
      if you intend on-screen output or encoding into multiple video formats.
   Use JPEG
      for on-screen output where file size is a concern and quality loss is acceptable.

   *All these formats support compression which can be important when rendering out animations.*


Channel Depth
-------------

Image file formats support a varying number of bits per pixel.
This affects the color quality and file-size.

Commonly used depths:

8 bit (256 levels)
   Most common for on-screen graphics and video
10, 12, 16 bit (1024, 4096, 65536 levels)
   Used for some formats focusing on photography and digital films
   (such as DPX and JPEG 2000).
16 bit half float
   Since full 32bit float is often more than enough precision,
   half float can save drive space while still providing a high dynamic range.
32 bit float
   Highest quality color depth.

Internally Blender's image system supports either:

- 8 bit per channel (4 x 8 bits).
- 32 bit float per channel (4 x 32 bits) - *using 4x as much memory.*

Images higher than 8 bits per channel will be converted into a float on loading into Blender.

.. note::

   Floating point is often used for :term:`HDRI`.

   When an image has float colors, all imaging functions in Blender default to use that.
   This includes the Video Sequence Editor, texture mapping, background images,
   and the Compositor.


Export
------

Save As Render
   ToDo.
Copy
   The Copy checkbox will define if the data-block will reference the newly created file
   or the reference will be unchanged, maintaining it with the original one.


Format Details
==============

Cineon & DPX
------------

Cineon is Kodak's standard for film scanning, 10 bits/channel and logarithmic.
DPX has been derived from Cineon as the ANSI/SMPTE industry standard.
DPX supports 16 bits color/channel, linear as well as logarithmic.
DPX is currently a widely adopted standard used in the film hardware/software industry.

DPX as well as Cineon only stores and converts the "visible" color range of values between 0.0
and 1.0 (as a result of rendering or composite).


OpenEXR
-------

`ILM's OpenEXR <http://www.openexr.com/>`__ has become a software industry standard for HDR image files,
especially because of its flexible and expandable structure.

An OpenEXR file can store multiple layers and passes.
This means OpenEXR images can be loaded into a compositor keeping render layers, passes intact.


Output Options
^^^^^^^^^^^^^^

Available options for OpenEXR render output are:

Color Depth
   Saves images in a custom 16 bits per channel floating point format.
   This reduces the actual "bit depth" to 10 bits, with a 5 bits power value and 1 bit sign.

   Float (Half), Float (Full)
Codec
   ``PIZ``
      Lossless wavelet compression. Compresses images with grain well.
   ``ZIP``
      Standard lossless compression using Zlib.
   ``RLE``
      Run-length encoded, lossless, works well when scanlines have same values.
   ``PXR24``
      Lossy algorithm from Pixar, converting 32 bits floats to 24 bits floats.
Z Buffer
   Save the depth information.
   In Blender, this now is written in floats too,
   denoting the exact distance from the camera in "Blender unit" values.
Preview
   On rendering animations (or single frames via command line),
   Blender saves the same image also as a JPEG, for quick preview or download.


Radiance HDR
------------

Radiance is a suite of tools for lighting simulation.
Since Radiance had the first (and for a long time the only) HDR image format,
this format is supported by many other software packages.

Radiance (.hdr) files store colors still in 8 bits per component, but with an additional
(shared) 8 bits exponent value, making it 32 bits per pixel.
