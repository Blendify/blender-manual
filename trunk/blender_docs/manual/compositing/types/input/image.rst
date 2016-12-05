
**********
Image Node
**********

.. figure:: /images/compositing_nodes_input_image.png
   :align: right

   Image Node.

The *Image* node injects any image :doc:`format that is supported by Blender </render/output/output>`.


Inputs
======

This node has no input sockets.


Properties
==========

Image
   Selection of different type of media. For controls see :ref:`ui-data-block`.
   For the options see :doc:`/editors/uv_image/image/image_settings`. 

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
