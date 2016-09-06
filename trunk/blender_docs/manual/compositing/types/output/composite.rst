
**************
Composite Node
**************

.. figure:: /images/compositing_nodes_composite.png
   :align: right

   Composite Node.


The Composite node is where the actual output from the Compositor
is connected to the renderer.
This node is updated after each render, but also reflects changes in the node-tree
(provided at least one finished input node is connected).


Inputs
======

Connecting a node to the Composite node will output the result of the prior
tree of that node to the Compositor.

Image
   RGB image. The default is black, so leaving this node unconnected will result in a blank image.
Alpha
   Alpha channel.
Z
   Z-depth.


Properties
==========

Use Alpha
   Premultiplied or straight.

Outputs
=======

This node has no output sockets.

.. note::

   If multiple Composite nodes are added, only the active one
   (last selected, indicated with a slightly darker header) will be used.


