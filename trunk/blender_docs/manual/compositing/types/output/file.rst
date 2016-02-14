
****************
File Output Node
****************

.. figure:: /images/compositing_nodes_fileoutput.png
   :align: right

   File Output Node

This node puts out an RGBA image, in the format selected, for each frame range specified,
to the filename entered, as part of a frameset sequence.
This means that the name of the file will be the name you enter plus a numeric frame number,
plus the filename extension (based on format). Based on the format you choose,
various quality/compression options may be shown.

To support subsequent arrangement and layering of images, the node can supply a Z-depth map.
However, please note that only the OpenEXR image formats save the Z information.

The image is saved whenever Blender feels like it. Just kidding;
whenever you press the Render button, the current frame image is saved.
When you press the Anim button, the frameset sequence (specified in the Start and End frame)
is saved.

This node saves you from doing (or forgetting to do) the Save Image after a render;
the image is saved automagically for you. In addition,
since this node can be hooked in anywhere in the noodle,
you can save intermediate images automatically. Neat, huh?

For details on relative paths see: :doc:`/data_system/files/relative_paths`
