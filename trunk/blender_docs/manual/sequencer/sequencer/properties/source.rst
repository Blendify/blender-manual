************
Source Panel
************

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Sidebar region --> Strip --> Source`

The Source panel is used to control 

Path
   A text field that lets you edit/update the path of the file used by a strip.
   When you moved the files, it avoids having to delete and re-create the strip.
File
   Same than before, but in case you renamed the source file, you can retrieve it (or change it).
Change Data/Files
   Same as the *Path* and *File* fields, but
   this time combined to open the File Browser in order to find the file(s) you search.
   :menuselection:`Strip --> Inputs --> Paths/files`

MPEG Preseek
   Movie strip only – Use Preseek field to tell Blender to look backward and compose an image
   based on n previous frames (e.g. 15 for Mpeg2 DVD).
Color Space
   To specify the color space of the source file.
Alpha mode
   If the source file has an Alpha (transparency) channel, you can choose:

   :term:`Straight Alpha` or :term:`Premultiplied Alpha`

   Movie strip only -- Use the Preseek field to tell Blender to look backward and
   compose the image based on the n previous frames (e.g. 15 for MPEG-2 DVD).
Stream index
   Movie strip only -- For files with several movie streams, use the stream with the given index.


Options for Sound strips
========================

Sound
   :ref:`Data-block menu <ui-data-block>` to select a sound.
Path
   Path to sound file used by this :ref:`Data-block <ui-data-block>`.
Pack
   Pack sound into .blend file
Caching
   Sound file is decoded and loaded into RAM