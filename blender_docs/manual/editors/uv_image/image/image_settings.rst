
**************
Image Settings
**************

.. (Todo) move to data_system: shared with movie editor?

When an image has been loaded or created in the UV/Image editor,
an additional panel appears in the *Properties region*.

Image
   Data-block menu.


Source
======

Single Image
------------

Still image or a single frame.


Image Sequence
--------------

Each frame is stored in a separate file.

Frame
   A label showing the current frame.
further options
   See `Movie`_ below.


Movie
-----

Frames packed into a container.

Deinterlace
   ..
Fields
   Set the number fields per rendered frame to use(2 fields is 1 frame).
Frame
   Frames
      Sets the range of frames to use.
   Start
      The frame of the global sequence, when the playback should start.
   Offset
      Offsets the first frame of the clip.
Match Movie Length
   ..
Auto Refresh
   Always refresh images on frame changes.
Cyclic
   Start over and repeats after the last frame to create a continuous loop.


.. _image-generated:

Generated
---------

Image generated in Blender or preloaded.

Width, Height
   The size of image in pixels.
Color
   Sets the fill color if creating a blank image.
32 bit Float/ Float Buffer
   Creates a 32 bit image. This is a larger file size,
   but holds much more color information than the standard 8 bit image.
   For close ups and large gradients, it may be better to use a 32 bit image.
Type
   Blank
      Creates a Blank image of a single specified color.
   UV grid
      Creates a checkerboard pattern with a colored cross (+) in each square.
   Color Grid
      Creates a more complex colored grid with letters and numbers denoting locations in the grid.
      It could be used for testing how the UVs have been mapped and to reduce stretching or distortion.


Common Options
==============

File
   Use for loading and packing image files.
Color Space
   :term:`Color Space`.
View as Render
   ..
Use Multi-View
   ..
Use Alpha
   Determines whether the alpha channel of the image is used.

   Alpha Mode
      :term:`Alpha Channel`.

      Straight, Premultiplied

Fields
   Use if image is made of fields. 
   
   Upper First, Lower First.

