
******************
Magic Texture Node
******************

.. figure:: /images/render_cycles_nodes_textures_magic-texture.png
   :align: right

   Magic Texture Node.


The *Magic Texture* node is used to add psychedelic color texture.


Inputs
======

Vector
   Texture coordinate to sample texture at;
   defaults to Generated texture coordinates if the socket is left unconnected.
Scale
   Scale of the texture.
Distortion
   Amount of distortion.


Properties
==========

Depth
   Number of iterations.


Outputs
=======

Color
   Texture color output.
Factor
   Texture intensity output.


Examples
========

.. figure:: /images/cycles_nodes_tex_magic.jpg
   :width: 200px

   Magic texture: Depth 10, Distortion 2.0.
