
****************
Musgrave Texture
****************

Advanced procedural noise texture. Note that it often needs some adjustments
(multiplication and addition) in order to see more detail.

.. list-table::

   * - .. figure:: /images/cycles_nodes_tex_musgrave_nodes.jpg
          :width: 200px

          Nodes for the image to the right

     - .. figure:: /images/cycles_nodes_tex_musgrave.jpg
          :width: 200px

          Remapped Musgrave texture such that most values are visible


Type
   Multifractal, Ridged Multifractal, Hybrid Multifractal, fBM, Hetero Terrain.
Vector input
   Texture coordinate to sample texture at;
   defaults to Generated texture coordinates if the socket is left unconnected.
Scale input
   Overall texture scale.
Detail input
   Amount of noise detail.
Dimension input
   The highest fractal dimension, specified as the highest scale for the steps of the intensity.
Lacunarity input
   The space of the lacunarity, specified as a frequency factor. 
Offset input
   The offset of the fractal, specified between black and white values (Intensity)
Gain input
   A multiplier for the gain input
Color output
   Texture color output.
Fac output
   Texture intensity output.
