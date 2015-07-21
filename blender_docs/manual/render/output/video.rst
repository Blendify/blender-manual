
************
Video Output
************

Preparing your work for video
=============================

Once you have mastered the trick of animation you will surely start to produce wonderful
animations, encoded with your favorite codecs,
and possibly you'll share them on the Internet with the rest of the community.

Sooner or later you will be struck with the desire to build an animation for television,
or maybe burn your own DVDs. To spare you some disappointment,
here are some tips specifically targeted at Video preparation.
The first and principal one is to remember the double-dashed white lines in the camera view!

If you render for PC then the whole rendered image which lies within the *outer* dashed
rectangle will be shown. For television, some lines and some part of the lines will be lost
due to the mechanics of the electron beam scanning in your TV's cathode ray tube. You are
guaranteed that what is within the *inner* dashed rectangle in camera view will be visible
on the screen. Everything within the two rectangles may or may not be visible,
depending on the given TV set that your audience watches the video on.

.. _render_output_dimensions_presets:

Dimensions Presets
==================

.. figure:: /images/Render-Dimensions-Presets.jpg

The rendering size is strictly dictated by the TV standard.
There are various popular presets included, more can be added for your convenience.

Saved information is:

:Resolution: X, Y & percentage scale
:Aspect ratio: pixel aspect ratio
:Frame rate: frames per second, for animation

See also :ref:`render_output_dimensions`


Pixel Aspect Ratio
==================

Unlike regular computer monitors, some screens (typically older TV sets)
do *not* have the square pixels making it it necessary to generate
*pre-distorted* images which will look stretched on a computer but which will display correctly on a TV set.
It is important that you use the correct pixel aspect ratio when rendering to prevent re-scaling,
resulting in lowered image quality.


Color Saturation
================

Most video tapes and video signals are not based on the RGB model but on the YCrCb model:
more precisely, the YUV in Europe (PAL), and the YIQ in the USA (NTSC),
the latter being quite similar to the former. Hence some knowledge of this is necessary too.

The YCrCb model sends information as 'Luminance', or intensity (Y)
and two 'Crominance' signals, red and blue (Cr and Cb).
Actually a Black and White TV set shows only luminance,
while color TV sets reconstruct color from Crominances (and from luminance).
Construction of the YCrCb values from the RGB ones takes two steps
(the constants *in italics* depend on the system: PAL or NTSC):

First, the Gamma correction (*g* varies: 2.2 for NTSC, 2.8 for PAL):

- R' = R :sup:`1/g` :\*G' = G :sup:`1/g`
- B' = B :sup:`1/g`

Then, the conversion itself:

- Y = 0.299R' + 0.587G' + 0.114B'
- Cr = *a* :sub:`1` (R' - Y) + *b* :sub:`1` (B' - Y)
- Cb = *a* :sub:`2` (R' - Y) + *b* :sub:`2` (B' - Y)

Whereas a standard 24 bit RGB picture has 8 bits for each channel, to keep bandwidth down,
and considering that the human eye is more sensitive to luminance than to chrominance,
the luminance signal is sent with more bits than the two chrominance signals.
This bit expansion results in a smaller dynamic of colors in video,
than what you are used to on monitors.
You hence have to keep in mind that not all colors can be correctly displayed.

A rule of thumb is to keep the colors as 'grayish' or 'unsaturated' as possible;
this roughly means keeping the dynamics of your colors within 80% of one another.
In other words,
the difference between the highest RGB value and the lowest RGB value should not exceed 0.8
([0-1] range) or 200 ([0-255] range).

This is not strict - something more than 0.8 is acceptable - but an RGB display with color
contrast that ranges from 0.0 to 1.0 will appear to be very ugly (over-saturated) on video,
while appearing bright and dynamic on a computer monitor.


Rendering to fields
===================

.. figure:: /images/Manual-Part-XI-Fields02.jpg

   Field Rendering result.


The TV standards prescribe that there should be 25 frames per second (PAL)
or 30 frames per second (NTSC).
Since the phosphors of the screen do not maintain luminosity for very long,
this could produce a noticeable flickering.

To minimize this, a TV does not represent frames as a computer does ('progressive' mode),
but rather represents half-frames, or *fields* at a double refresh rate,
hence 50 half frames per second on PAL and 60 half frames per second on NTSC.
This was originally bound to the frequency of power lines in Europe (50Hz) and the US (60Hz).

In particular, fields are "interlaced" in the sense that one field presents all the even lines
of the complete frame and the subsequent field the odd ones.

Since there is a non-negligible time difference between each field (1/50 or 1/60 of a second)
merely rendering a frame the usual way and splitting it into two half frames does not work.
A noticeable jitter of the edges of moving objects would be present.


Options
-------

.. figure:: /images/Render-to-Fields.jpg

   Field Rendering setup.


Fields
   Enable field rendering. When the *Fields* button in the *Render* Panel is pressed
   (*Post Processing* section), Blender prepares each frame in two passes.
   On the first it renders only the even lines,
   then it *advances in time by half a time step* and renders all the odd lines.
   This produces odd results on a PC screen *(Field Rendering result)*. but will show correctly on a TV set.


Upper First / Lower First
   Toggles between rendering the even and odd frames first.
Still
   Disables the half-frame time step between fields (*x*).


.. note:: Setting up the correct field order

   Blender's default setting is to produce Even fields *before*
   Odd fields; this complies with European PAL standards. Odd fields are scanned
   first on NTSC.

   Of course, if you make the wrong selection things are even worse than if no Field rendering at
   all was used!

   If you are really confused, a simple trick to determine the correct field order is to render a
   short test animation of a white square moving from left to right on a black background.
   Prepare one version with odd field order and another with even field order,
   and look at them on a television screen.
   The one with the right field order will look smooth and the other one horrible.
   Doing this simple test will save you *hours* of wasted rendering time...


.. note:: Fields and Composite Nodes

   Nodes are currently not field-aware. This is partly due to the fact that in fields,
   too much information is missing to do good neighborhood operations (blur, vector blur etc.).
   The solution is to render your animation at double the frame rate without fields and do the
   interlacing of the footage afterwards.


Home-made Render Farm
---------------------

.. figure:: /images/Homemade-Render-Farm.jpg

An easy way to get multiple machines to share the rendering workload is to:

- Set up a shared directory (such as a Windows Share or an NFS mount)
- Un-check "Overwrite" and check "Placeholders"
- Start as many machines as you wish rendering to that directory -- they will not step on each other's toes.
