
*****************
Strip Input Panel
*****************

.. figure:: /images/editors_sequencer_properties_input.png
   :align: right

   Strip Input Settings.

The Strip Input panel is used to controls the duration of the strip along with some basic transforms.

Path
   A text field that lets you edit/update the path of the file used by a strip.
   When you moved the files, it avoids having to delete and re-create the strip.
File
   Same than before, but in case you renamed the source file, you can retreive it (or change it).
Input Color Space
   To specify the color space of the source file.
Alpha mode
   If the source file has an Alpha (transparency) channel, you can choose:

   :term:`Straight Alpha`, :term:`Premultiplied Alpha`
Change Data/File :kbd:`C`
   Same as the *Path* and *File* fields, but
   this time combined to open the file browser in order to find the file(s) you search.
MPEG Preseek
   Movie strip only -- Use the Preseek field to tell Blender to look backward and
   compose the image based on the n previous frames (e.g. 15 for Mpeg2 DVD).
Stream index
   Movie strip only -- For files with several movie streams, use the stream with the given index.


Image Offset
   Used to translate the frames along the X and Y axis.
   Additionally it disables the auto-scaling of the image.
Image Crop
   Used to crop the source image, use *Top*, *Left*,
   *Bottom*, and *Right* to control which part of the image is cropped.
Trim Duration (hard)
   Controls at what frame the source of the strip starts and ends at.
Trim Duration (soft)
   Can be used to either extend the strip beyond the end frame by repeating the last frame.
   Or it can be used to shorten the strip, as if you were cropping the end frame.
   This is the same has adjusting the strip handles.
