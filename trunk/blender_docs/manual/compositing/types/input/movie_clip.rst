
**********
Movie Clip
**********

.. figure:: /images/compositing_nodes_movieclip.png
   :align: right
   :width: 150px

   Movie clip node.

This node is a special node that uses some of the values taken from
footage cameras and trackings and links them to the output.
It is possible to load image sequences, but only Image and Alpha values
will be available, because the other outputs won't have any values
associated with them.
When a tracked clip is chosen, Blender will fulfill the outputs using
internal values taken from the tracking. So the controls for
start and end frames will be defined at the movie clip editor.


Inputs
======

This node has no input sockets.


Properties
==========

Movie Clip
   Used to select the movie clip. For controls see :ref:`ui-data_block`.


Outputs
=======

The first two sockets are the minimum output.

Image
   Outputs the entire image at the specified color space.
Alpha
   The alpha value taken from the movie or image.
Offset X
   The X offset value from the footage camera or tracking.
Offset Y
   The Y offset value from the footage camera or tracking.
Scale
   The scale of the image taken from the footage camera or tracking.
Angle
   The lens angle taken from the footage camera or tracking.
