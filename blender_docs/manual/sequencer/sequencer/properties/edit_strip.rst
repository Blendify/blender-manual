vse-todo 2.8 rename file to Adjust
****************
Adjust Panel
****************

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
   Hides the strip so that it does not participate in the final image computation.


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
