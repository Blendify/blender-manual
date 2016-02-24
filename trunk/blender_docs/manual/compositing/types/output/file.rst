
****************
File Output Node
****************

.. figure:: /images/compositing_nodes_fileoutput.png
   :align: right

   File Output Node

This node writes out an image, for each frame range specified,
to the filename entered, as part of a frameset sequence.

Unlike the render output filepath, this node uses a base directory and an image name,
by default the output path is composed of:
``{base path}/{file name}{frame number}.{extension}``.

Besides being split into 2 settings, in all other respects,
this setting is treated the same as the :ref:`render output path <render_output-filepath>`.

To support subsequent arrangement and layering of images, the node can supply a Z-depth map.
However, please note that only the OpenEXR image formats save the Z information.

The image(s) will be saved on rendering, writing to the current frame.
When rendering an animation, the entire sequence will be written to.

This node can be used as a way to automatically save the image after a render;
In addition, since this node can be hooked in anywhere in the node tree,
you can save intermediate images automatically.
