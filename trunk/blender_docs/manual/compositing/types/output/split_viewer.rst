
*****************
Split Viewer Node
*****************

.. figure:: /images/compositing_nodes_splitviewer.png
   :align: right

   Split Viewer Node.

The *SplitViewer* node takes two images and displays these side-by-side
as backdrop or as a Viewer Node output.


Inputs
======

Image
   Shown on the right or top half set by the axis.
Image
   And respectively the left or bottom half.

Properties
==========

Axis
   X or Y used as the split axis.
Factor
   Percentage factor setting the space distribution between the two images.

Outputs
=======

This node has no output sockets.

.. hint::

   This node could be used to plan scene transitions by comparison of the end frame of one scene
   with the start frame of another to make sure that they align.

Examples
========

.. figure:: /images/compositing_nodes_color_gamma_example.jpg

   Example of Split Viewer node.
