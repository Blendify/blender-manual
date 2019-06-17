.. TODO2.8(sequencer): rename file to info

**********
Info Panel
**********

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Sidebar region --> Strip --> Info`

The Info panel is used to control source and timeline position of the strip

Type
   Displays the type of strip selected.
Name
   You can name or rename your strips here.
Lock (padlock icon)
   Prevents the strip from being moved.


Input
=====

Path
   A text field that lets you edit/update the path of the file used by a strip.
   When you moved the files, it avoids having to delete and re-create the strip.
File
   Same than before, but in case you renamed the source file, you can retrieve it (or change it).
Color Space
   To specify the color space of the source file.
Alpha mode
   If the source file has an Alpha (transparency) channel, you can choose:

   :term:`Straight Alpha` or :term:`Premultiplied Alpha`
Change Data/Files
   Same as the *Path* and *File* fields, but
   this time combined to open the File Browser in order to find the file(s) you search.
   :menuselection:`Strip --> Inputs --> Paths/files`
MPEG Preseek
   Movie strip only -- Use the Preseek field to tell Blender to look backward and
   compose the image based on the n previous frames (e.g. 15 for Mpeg2 DVD).
Stream index
   Movie strip only -- For files with several movie streams, use the stream with the given index.


Timecodes
=========

Channel
   Changes the channel number, or row, of the strip.
Start
   Changes the starting frame number of the strip, which is the same as grabbing and moving the strip.
End
   Changes the ending frame number of the strip, which is the same as grabbing and moving the strip right handle.
Duration
   Specify the number of frames to use for the strip.
Strip offset (soft)
   Can be used to either extend the strip beyond the end frame by repeating the last frame.
   Or it can be used to shorten the strip, as if you were cropping the end frame.
   This is the same has adjusting the strip handles.

.. _sequencer-duration-hard:

Hold offset (hard)
   Controls at what frame the source of the strip starts and ends at.
   .. TODO2.8(sequencer):
Playhead position
   .
   .. TODO2.8(sequencer):
Resolution
   Resolution of the image
