************
Adjust Panel
************

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Sidebar region --> Strip --> Adjust`

The *Adjust* panel is used to control visual properties of strips.


Compositing
===========

Blend
   Mode of blending strip with lower channels
Opacity
   Set the opacity (alpha) of the strip.
Mute (eye/speaker icon)
   Strip will not produce any output


Video
=====

Strobe
   To only display each nth frame. For example, if you set this to 10,
   the strip will only display frames 1, 11, 21, 31, 41... of the source.
   *Strobe* is a float value -- this way you can get a strobe effect synced exactly to a beat,
   for example, by using non-integer values.
Reverse
   Plays the strip in reverse (time).
Deinterlace
   Removes fields in a video file. For example,
   if it is an analog video and it has even or odd interlacing fields.
X Flip
   Mirrors the image along the X axis (left to right).
Y Flip
   Mirrors the image along the Y axis (top to bottom).


Color
=====

Saturation
   Increase or decrease the saturation of an image.
Multiply
   Multiplies the colors by this value. This will increases the brightness.
Convert to Float
   Converts input to float data.


Image Offset
============

Used to translate the frames along the X and Y axis.
Additionally it disables the auto-scaling of the image.


Image Crop
==========

Used to crop the source image, use *Top*, *Left*,
*Bottom*, and *Right* to control which part of the image is cropped.


Sound
=====

Volume
   Sound Volume.
   This value, even if animated will be reflected in drawn waveform
Mute(speaker icon)
   Strip will not produce any output
Pitch
   Coefficient of playback speed.
   This value will affect length of the strip, that will not be represented in timeline.
Pan
   Used to pan the audio from left and right channels. Only works for mono sources. Values can be between -2 and 2, where 0 means front/center, -1 means to the left and 1 to the right. In case of multichannel audio (rear speakers) you can pan to those with the higher values: -2, 2 is back. So this value basically represents the angle at which it’s played.

.. _sequencer-sound-waveform:

Display Waveform
   Draw approximate waveform of the sound file inside of sound strip
   Waveform reflects strip volume and it's animation using :doc:`keyframes </animation/keyframes/introduction>`
Mono
   Mixdown all audio channels into single one