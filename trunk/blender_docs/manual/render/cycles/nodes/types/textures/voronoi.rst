.. _bpy.types.ShaderNodeTexVoronoi:
.. Define Voronoi? Glossary?

********************
Voronoi Texture Node
********************

.. figure:: /images/render_cycles_nodes_textures_voronoi-texture.png
   :align: right

   Voronoi Texture Node.

The *Voronoi Texture* node adds a procedural texture producing Voronoi cells.


Inputs
======

Vector
   Texture coordinate to sample texture at;
   defaults to Generated texture coordinates if the socket is left unconnected.
Scale
   Overall texture scale.


Properties
==========

Coloring
   *Intensity* or *Cells* output.


Outputs
=======

Color
   Texture color output.
Factor
   Texture intensity output.


Examples
========

.. list-table::

   * - .. figure:: /images/cycles_nodes_tex_voronoi_intensity.jpg
          :width: 200px

          Voronoi texture, type: Intensity.

     - .. figure:: /images/cycles_nodes_tex_voronoi_cells.jpg
          :width: 200px

          Voronoi texture, type: Cells.
