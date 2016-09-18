..    TODO/Review: {{review|partial=X|im=needs images}}.

****************
Color Management
****************

.. figure:: /images/render_post-processing_different-exposures.jpg
   :width: 300px
   :align: right

   Different views and exposures of the same render.


`OpenColorIO <http://opencolorio.org/>`__ is integrated into Blender,
meaning many color spaces are supported with fine control over which color transformations are used.


Scene Linear Color Space
========================

For correct results, different color spaces are needed for rendering,
display and storage of images.
Rendering and compositing is best done in scene *linear* color space,
which corresponds more closely to nature, and makes computations more physically accurate.

.. figure:: /images/render_post-processing_linear-workflow.png

   Example linear workflow.


If the colors are linear, it means that if in reality we double the amount of photons,
the color values are also doubled. Put another way,
if we have two photos/renders each with one of two lights on, and add those images together,
the result would be the same as a render/photo with both lights on. It follows that such a
radiometrically linear space is best for photo-realistic rendering and compositing.

However, these values do not directly correspond to human perception or the way display devices
work, and image files are often stored in different color spaces,
so we have to take care to do the right conversion into and out of this linear color space.


.. _render-post-color-management:

Settings
========

.. figure:: /images/render_post-processing_color-management-panel.png

   Scene settings for color management.


These settings are found in the :menuselection:`Properties Editor --> Scene --> Color Management`


Display
-------

Correct display of renders requires a conversion to the display device color space,
which can be configured here.
A computer monitor works differently from a digital cinema project or HDTV.
The scene properties have these settings:

Display Device
   The device that the image is being viewed on.

   Most computer monitors are configured for the sRGB color space,
   and so when working on a computer usually this option should just be left to the default.
   It would typically be changed when viewing the image on another display device connected to the computer,
   or when writing out image files intended to be displayed on another device.

   Rec709 is commonly used for HDTVs, while XYZ and DCI-P3 are common for digital projectors.

   Color management can be disabled by setting the device to None.

.. figure:: /images/render_post-processing_linear-display-space.png

   Conversion from linear to display device space.


Render
------

There is also an artistic choice to be made for renders. Partially that is
because display devices cannot display the full spectrum of colors and only have limited
brightness, so we can squeeze the colors to fit in the gamut of the device.
Besides that it can also be useful to give the renders a particular look, e.g.
as if they have been printed on real film.

Another common use case is when you want to inspect renders,
to see details in dark shadows or bright highlights, or identify render errors.
Such settings would be only used temporarily and not get used for final renders.

View
   These are different ways to view the image on the same display device.

   Default
      Does no extra conversion besides the conversion for the display device.
   RRT
      Uses the ACES Reference Rendering Transform, to simulate a film-like look.
   Film
      This option is another film-like look.
   Raw and Log
      Intended for inspecting the image but not for final export.
      Raw gives the image without any color space conversion,
      while Log gives a more "flat" view of the image without very dark or light areas.
Exposure
   Used to control the image brightness (in stops) applied before color space conversion.
Gamma
   Extra gamma correction applied after color space conversion. Note that the default sRGB or Rec709 color space
   conversions already include a gamma correction of approximately 2.2 (except the Raw and Log views),
   so this would be applied in addition to that.
Look
   Choose an artistic effect from set of measured film response data which
   roughly emulates the look of certain film types. Applied before color space conversion.
Use Curves
   Adjust RGB Curves to control image colors before color space conversion.
   Read more about using the :ref:`ui-curve-widget`.


Sequencer
---------

Color Space
   The color space that the sequencer operates in. By default the sequencer operates in sRGB space,
   but it can also be set to work in Linear space like the Compositing nodes, or another color space.
   Different color spaces will give different results for color correction, cross fades, and other operations.
