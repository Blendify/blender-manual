
**********
Image Node
**********

.. figure:: /images/compositing_nodes_image.png
   :align: right
   :width: 150px

   Image Node.

The *Image* node injects any image :doc:`format that is supported by Blender </render/output/output>`.


Inputs
======

This node has no input sockets.


Properties
==========

Image
   Selection of different type of media. See source below. For controls see :ref:`ui-data_block`.
Source
   Single Image
      Still image or a single frame.
   Image Sequence
      Each frame is stored in a separate file.

      Frame
         A label showing the current frame.
      further options
         see: Movie below 
   Movie
      Frames packed into a container.

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

   More options could be set in the properties region.


Outputs
=======

The first two sockets are the minimum.

Color
   Image
Alpha
   Separate Alpha value.
Z
   Z-depth layer.


.. note:: MultiLayer format:

   When a MultiLayer file format, like ``EXR``, is loaded, each 
   layer is made available as a socket.
