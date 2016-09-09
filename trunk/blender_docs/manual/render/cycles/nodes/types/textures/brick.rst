
*************
Brick Texture
*************

The *Brick Texture* is used to add a procedural texture producing bricks.


Inputs
======

Color 1/2 and Mortar
   Color of the bricks and mortar.
Scale
   Overall texture scale.
Mortar Size
   The Mortar size; 0 means no Mortar.
Bias
   The color variation between *Color 1/2*.
   Values of -1 and 1 only use one of the two colors; values in between mix the colors.
Brick Width
   The width of the bricks.
Row Height
   The height of the brick rows.


Properties
==========

Offset
   Determines the brick offset of the various rows.
Frequency
   Determines the offset frequency. A value of 2 gives an even/uneven pattern of rows.
Squash
   Amount of brick squashing.
Frequency
   Brick squashing frequency.


Outputs
=======

Color
   Texture color output.
Fac
   Mortar mask (1 = mortar).


Examples
========

.. figure:: /images/cycles_nodes_tex_brick_example.jpg
   :width: 200px

   Brick texture: Colors changed, Squash 0.62, Squash Frequency 3.
