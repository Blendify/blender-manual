
************
Source Panel
************

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Sidebar region --> Strip --> Source`

The Source panel is used to control sources of the strip such as filename and file path
and various methods of interpreting these files.

Path
   A text field that lets you edit/update the path of the file used by a strip.
   When you moved the files, it avoids having to delete and re-create the strip.
File
   Same than before, but in case you renamed the source file, you can retrieve it (or change it).
Change Data/Files
   Same as the *Path* and *File* fields, but this time combined to open the File Browser in order to
   find the file(s) you search. Same as :menuselection:`Strip --> Inputs --> Paths/files`.

MPEG Preseek
   Movie strip only -- Use Preseek field to tell Blender to look backward and compose an image
   based on the specified amout of previous frames (e.g. 15 for MPEG-2 DVD).
Color Space
   To specify the color space of the source file.
Alpha mode
   If the source file has an Alpha (transparency) channel, you can choose:

   :term:`Straight Alpha` or :term:`Premultiplied Alpha`
Stream index
   Movie strip only -- For files with several movie streams, use the stream with the given index.


Options for Sound Strips
========================

Sound
   :ref:`Data-block menu <ui-data-block>` to select a sound.
Path
   Path to the sound file used by this :ref:`data-block <ui-data-block>` menu.
Pack
   Pack sound into the blend-file.
Caching
   Sound file is decoded and loaded into the RAM.
