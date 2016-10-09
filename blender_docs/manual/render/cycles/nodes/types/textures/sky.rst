
****************
Sky Texture Node
****************

The *Sky Texture* node adds a procedural Sky texture.


Inputs
======

Vector
   Texture coordinate to sample texture at;
   defaults to Generated texture coordinates if the socket is left unconnected.


Properties
==========

Sky Type
   Sky model to use (Preetham or Hosek/Wilkie).
Sun Direction
   Sun direction vector.
Turbidity
   Atmospheric turbidity. (2: Arctic like, 3: clear sky, 6: warm/moist day, 10: hazy day)
Ground Albedo
   Amount of light reflected from the planet surface back into the atmosphere. (RGB 0,0,0 is black, 1,1,1 is white).


Outputs
=======

Color
   Texture color output.


Examples
========

.. figure:: /images/cycles_nodes_tex_sky.jpg
   :width: 200px

   Sky Texture.
