
**************
Video Textures
**************

.. figure:: /images/texture-video-example.jpg
   :width: 700px

   Video texture.


*Video textures* are a some kind of :doc:`Image </render/blender_render/textures/types/image>` textures and based on
movie file or sequence of successive numbered separate images.
They are added in the same way that image textures are.


Options
=======

Image
-----

.. figure:: /images/texture-video-imagepanel.jpg
   :width: 400px

   Image panel for video texture.


Source
   For video texture the kind of source file to use is

   Movie
      See about supported :doc:`Movie </data_system/files/video_formats>` formats.
   Image Sequence
      See about supported :doc:`Image </data_system/files/image_formats>` formats.
      To load image sequence in any of the supported image
      file formats first click on the first frame and then Accept.
      Then change the Source to Image Sequence, and enter the ending frame number of this sequence.

More about loading source file for video texture see
:ref:`here <render-blender_internal-image_settings>`.

Fields
   Work with field images. Video frames consist of two different images (fields) that are merged.
   This option ensures that when *Fields* are rendered,
   the correct field of the image is used in the correct field of the rendering.

   Upper First
      Order of video fields - upper field first.
   Lower First
      Order of video fields - lower field first.
   Fields
      Number of fields per rendered frame.
      Used with Fields and interlaced video, it says whether each image has both odd and even, or just one.

Frames
   Number of frames/images in the movie or sequence to use
Start
   Global starting frame of the sequence/movie
Offset
   Offset the number of the frame to use in the animation.
   What frame number inside the movie/sequence to start grabbing.

Match Movie Length
   This button set image's user's length to the one of selected movie/sequence.

Auto Refresh
   Automatically refresh images on frame changes
Cyclic
   When the video ends, it will loop around the to the start and begin playing again.

For *Movie* source:

Use Alpha
   Use the alpha channel information from the image or make image fully opaque

   Straight
      Transparent RGB and alpha pixels are unmodified.
   Premultiplied
      Transparent RGB pixels of an image are multiplied by the image's alpha value.

.. seealso::

   For sampling and mapping documentation see
   :doc:`Image Texture </render/blender_render/textures/types/image>`

