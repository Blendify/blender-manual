
**********
Image Node
**********

.. figure:: /images/compositing_nodes_image.png
   :align: right
   :width: 150px

   Image Node.

The *Image* node injects any image :doc:`format that is supported by Blender </render/output/output>`.


Input
=====

This node has no input sockets.


Properties
==========

Source
   - a preloaded image could be loaded by clicking on image file icon to the left and 
     selecting it from the list.
   - or by clicking the *Open* button to select a file/s via the
     :doc:`file-browser </editors/file_browser/introduction>`.

   Single Image
      Still image or a single frame.
   Image Sequence
      Each frame is stored in a separate file.

      Frame
         A label showing the current frame.
      options
         see: Movie below 
   Movie
      Frames packed into a container

      Frames
         The range of frames to be shown.
      Start Frame
         The frame of the global sequence, when the playback should start. 
      Offset
         Offsets the first frame of the clip.
      Cyclic
         Start over and repeats after the last frame to create a continuous loop.
      Auto-Refresh
         If the file is updated, the compositor re-renders. 
   Generated
      Images generated in Blender or preloaded.

.. note::

   More options could be set in the properties panel.


Output
======

The first two sockets are the minimum.

Color
   Image
Alpha
   Separate Alpha value. Default values is 1.0.
Z
   Z-depth layer. Default values is 0.0.


.. note:: MultiLayer format:

   When a MultiLayer file format, like ``EXR``, is loaded, each 
   layer is made available as a socket.
