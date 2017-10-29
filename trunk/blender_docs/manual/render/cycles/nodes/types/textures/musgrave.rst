.. _bpy.types.ShaderNodeTexMusgrave:

*********************
Musgrave Texture Node
*********************

.. figure:: /images/render_cycles_nodes_types_textures_musgrave_node.png
   :align: right

   Musgrave Texture Node.

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
Factor
   Texture intensity output.


Examples
========

.. list-table:: Remapped Musgrave texture such that most values are visible.
   :widths: 65 35

   * - .. figure:: /images/render_cycles_nodes_types_textures_musgrave_nodes.png
          :width: 460px

          Nodes for the image to the right.

     - .. figure:: /images/render_cycles_nodes_types_textures_musgrave_example.jpg
          :width: 320px

          Musgrave texture.
