
******************
Render Layers Node
******************

.. figure:: /images/compositing_nodes_input_render-layers.png
   :align: right

   Render Layers Node.

This node is the starting place for getting a picture of your scene into the compositing node
map.


Inputs
======

This node has no input sockets.


Properties
==========

Scene
   Select the within your blend-file. The scene information taken is the raw footage
   (pre-compositing and pre-sequencing).

   .. hint::
      To use composited footage from another scene, it has to be rendered into a multilayer e.g. ``OpenEXR`` frameset
      as an intermediate file store and then imported with Image input node again.

Render layer
   A list of available :doc:`Render Layers </render/post_process/layers>`.
   The render button is a short hand to re-render the active scene.


Outputs
=======

Image
   Rendered image.
Alpha
   Alpha channel.

.. rubric:: Render passes sockets

Depending on the Render passes that are enabled, other sockets are available.
See :doc:`Cycles render passes </render/cycles/settings/passes>` or
:doc:`Blender internal render passes </render/blender_render/settings/passes>`.

Z
   By default the Z depth pass is enabled.

