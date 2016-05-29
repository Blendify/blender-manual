
***************
Voronoi Texture
***************

.. list-table::

   * - .. figure:: /images/cycles_nodes_tex_voronoi_intensity.jpg
          :width: 200px

          Voronoi texture, type: Intensity.

     - .. figure:: /images/cycles_nodes_tex_voronoi_cells.jpg
          :width: 200px

          Voronoi texture, type: Cells.


Procedural texture producing Voronoi cells.

Type
   *Intensity* or *Cells* output.
Vector input
   Texture coordinate to sample texture at;
   defaults to Generated texture coordinates if the socket is left unconnected.
Scale input
   Overall texture scale.
Color output
   Texture color output.
Fac output
   Texture intensity output.
