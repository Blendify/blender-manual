.. _bpy.types.EffectSequence:

************
Filter Panel
************

.. admonition:: Reference
   :class: refbox

   | Panel:    :menuselection:`Properties region --> Strip --> Filter`

.. figure:: /images/editors_sequencer_properties_filter.png
   :align: right

Enables you to quickly set common image pre-processing options.


Video
=====

Strobe
   To only display each nth frame. For example, if you set this to 10,
   the strip will only display frames 1, 11, 21, 31, 41... of the source.
   *Strobe* is a float value -- this way you can get a strobe effect synced exactly to a beat,
   for example, by using non-integer values.

Backwards
   Plays the strip in reverse (time).
Deinterlace
   Removes fields in a video file.
   In example if it is a broadcast video and it has even or odd interlacing fields.

X Flip
   Mirrors the image along the X axis (left-to-right).
Y Flip
   Mirrors the image along the Y axis (top-to-bottom).


Color
=====

Saturation
   Increase or decrease the saturation of an image.
Multiply
   Multiplies the colors by this value. This will increases the brightness.

Convert Float
   Converts input to float data.
