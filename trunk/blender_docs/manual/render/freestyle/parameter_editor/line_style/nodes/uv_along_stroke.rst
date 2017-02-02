.. (todo) image

***************
UV Along Stroke
***************


The *UV Along Stroke* input node is maps textures along the stroke length,
making it possible to mimic pencil, paintbrush, and other art medium marks.

In Blender Render equivalent options can be found in
:menuselection:`Properties editor --> Texture --> Mapping` panel.

.. note::

   These UV maps become available only during the Freestyle rendering process.
   Hence, the UV Along Stroke node cannot be replaced by the conventional UV Map input node
   which takes an existing UV map already defined as part of mesh data.


Inputs
======

This node has no inputs.


Properties
==========

Use Tips
   Allows to use lower quarters of a texture image for the head and tail tips of a stroke,
   while the upper half for the stroke body.


Outputs
=======

UV
   UV maps defined along strokes.
