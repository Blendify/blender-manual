
****************
Musgrave Texture
****************

The *Musgrave Texture* is used to add an advanced procedural noise texture.

.. tip::

The *Musgrave Texture* often needs some adjustments
(multiplication and addition) in order to see more detail.


Inputs
======

Vector
   Texture coordinate to sample texture at;
   defaults to Generated texture coordinates if the socket is left unconnected.
Scale
   Overall texture scale.
Detail
   Amount of noise detail.
Dimension
   The highest fractal dimension, specified as the highest scale for the steps of the intensity.
Lacunarity
   The space of the lacunarity, specified as a frequency factor.
Offset
   The offset of the fractal, specified between black and white values (Intensity).
Gain
   A multiplier for the gain input.


Properties
==========

Type
   Multifractal, Ridged Multifractal, Hybrid Multifractal, fBM, Hetero Terrain.


Outputs
=======

Color
   Texture color output.
Fac
   Texture intensity output.


Examples
========

.. list-table::

   * - .. figure:: /images/cycles_nodes_tex_musgrave_nodes.jpg
          :width: 200px

          Nodes for the image to the right.

     - .. figure:: /images/cycles_nodes_tex_musgrave.jpg
          :width: 200px

          Remapped Musgrave texture such that most values are visible.
