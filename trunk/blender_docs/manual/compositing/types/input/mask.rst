
*********
Mask Node
*********

.. figure:: /images/compositing_nodes_input_mask.png
   :align: right

   Mask Node.

The Mask node can be used to select a :doc:`Mask Data-block </editors/movie_clip_editor/masking>`.
This node can be used with other nodes, for example to Invert, Multiply or Mix, or use as a factor input.


Inputs
======

This node has no input sockets.


Properties
==========

Masks
   The selectable mask data-block. If the label is left blank the mask name will be set.
Anti-Alias
   Create smooth mask edges rather than hard ones.
Feather
   Use or ignore feather points defined for splines see :ref:`Mask Feathers <mask-feather>` for more details.
Size
   Scene Size will give an image the size of the render resolution for the scene,
   scaling along when rendering with different resolutions. Fixed gives a fixed size in pixels. Fixed/
   Scene gives a size in pixels that still scales along when changing the render resolution percentage in the scene.
Motion Blur
   For animated masks, creating a motion blurred mask from the surrounding frames,
   with a given number of samples (higher gives better quality), and a camera shutter time in seconds.


Outputs
=======

Mask
   The black and white output of the mask.


Example
=======

In the example below the *Mask node* is used to define a rough outline of the island,
where areas out side of the the island are dark, drawing the eye to the island.

.. figure:: /images/compositing_input_mask_example.jpg

   Example of the Mask Node.
