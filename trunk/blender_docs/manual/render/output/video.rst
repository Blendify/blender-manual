
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

.. figure:: /images/render-dimensions-presets.jpg

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
