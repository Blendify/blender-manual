
****************
Strip Properties
****************

The properties for the strip are examined and set in the properties panel,
shortcut kbd`N`.


- Edit Strip - change properties of the strip
- Strip Input - where to pull images from
- Effect - Settings for effects strips
- Filter - Image pre-processing
- Proxy - Use representatives of the real image, for low-powered PCs
- Scene - Settings for when a scene strip is selected
- Sound - Settings for a sound clip

The panels for each of these sets of options and controls are shown to the right


Edit Strip Panel
================

Name
   You can name or rename your strips here.
Type
   Displays the type of strip selected.
Blend Mode
   By default, a strip Replaces the output image of any lower-level strips. However,
   many other blending modes are available based on the strip type. For example,
   Alpha-Over automatically overlays the image on top of a lower level strip.
   Autoblending modes remove the need for separate effect strips.
   Blend percent controls how much of an effect the strip exerts, even over time.

Opacity
   Set the opacity of the strip.
Mute
   Hides the strip so that it does not participate in the final image computation
Lock
   Prevents the strip from being moved.
Channel
   Changes the channel number, or row, of the strip.
Start Frame
   Changes the starting frame number of the strip, which is the same as grabbing and moving the strip.
   Tip when you add a strip, I like to just drop it and then use this field to place it at the frame I want,
   rather that trying to drag and drop in exactly the right place.
Length
   Specify the number of frames to use for the strip.

Use the Convert to Premul button if a strip has an Alpha (transparency) channel.
Use FilterY if the strip is from broadcast video and has even or odd interlacing
fields. Enhance the color saturation through the Mul tiply field.
Play a strip backwards by enabling Reverse Frames.
Tell Blender to display every nth frame by entering a Strobe value. Finally,
when using MPEG video (VCD, DVD, XVid, DivX, ...),
an image is built up over the course of a few frames; use the Preseek field to
tell Blender to look backward and compose the image based on the n previous frames (e.g.
15 for Mpeg2 DVD).


Effect Strip
============

For all effects, use the Strip Properties panel to control the effects strip;
each effect has different controls, but they can all be set in the Properties panel.
Control the length of the strip to vary the speed with which the transform happens.
Regardless of whether they are built-in or plug-in,
all effect strips do some special image manipulation,
usually by operating on another strip or two in a different channel.
The effect strip is shown in some channel, but its resultant effect shows up as Channel 0.


Strip Input
===========

Controls the source of the strip. Fields include file path, file name, image offset,
crop settings.

This is here you can editupdate the path of the file used by a strip. Very useful when you
moved it one way or the other - this avoid you deleting and re-creating the strip!

You have two text fields for path, the first being the path of the parent directory
(Path), and the second the file name itself.


Filter
======

Enables you to quickly set common image pre-processing options.
Strobe

Flip
   X flips (reverses) the image left-to-right, Y reverses top-to-bottom.
Backwards
   Reverses strip image sequence
De-Interlace
   Removes fields in a video file.

Saturation
   Increase or decrease the saturation of an image.
Multiply
   Multiplies the colors by this value.
Premultiply
   Premultiply the Alpha channel.
Convert Float
   Converts input to float data.

Use Color Balance
   Provides three filters to adjust coloration Lift, Gamma, and Gain. Each pass can have a positive,
   or inverted effect by clicking the appropriate button.
   Set the amount of the effect by setting the color swatch; white (RGB 1,1,1) has no effect.


Proxy / Timecode Panel
======================

Once you've chosen the Proxy/Timecode parameters,
you need to use :menuselection:`Strip --> Rebuild Proxy and Timecode indices`
to generate the proxy clip and it will be available after Blender makes it.


Proxy
-----

.. figure:: /images/editors_sequencer_timecode.png
   :align: right

A proxy is a smaller image (faster to load) that stands in for the main image.
When you Rebuild proxy Blender computes small images (like thumbnails)
for the big images and may take some time. After computing them, though, editing functions
like scrubbing and scrolling and compositing functions like cross using these proxies is much
faster but gives a low-res result. Disable proxies before final rendering.

In order to actually use the proxies, the proper Proxy Render Size dropdown value must
be selected in the Properties panel of the Sequencer View (where the edit plays back).

Timecode Panel
--------------

When you're working with footage directly copied from a camera without pre-processing it,
there might be bunch of artifacts, mostly due to seeking a given frame in sequence.
This happens because such footage usually doesn't have correct frame rate values in their headers. So,
for Blender to calculate the position of a needed frame in the stream works inaccurately and can give errant result.
There are two possible ways to avoid this:

- Preprocess your video with, say, mencoder to repair file header and insert correct keyframes.
- Use Proxy/Timecode option in Blender. 

Options
^^^^^^^

:term:`Timecode`
   Timecode to use on the selected movie strip.

The following timecodes are supported:

- No TC in use- do not use any timecode
- Record Run
- Free Run
- Free Run (rec date)
- Record Run No Gaps

.. note::

   Record Run is the timecode which usually is best to use, but if the clip's file is totally damaged,
   'Record Run No Gaps' will be the only chance of getting acceptable result. 

Sound
=====

These settings are covered in the :doc:`Audio Stip </editors/sequencer/audio>` docs.

Scene
=====

Specify the scene to be linked to the current scene strip.

Sequencer
   Process the render (and composited) result through the video sequence editor pipeline,
   if sequencer strips exist. This is the same function as in the render settings.
Camera Override
   Change the camera that will be used.
