
*****************************
Procedural textures: Musgrave
*****************************

.. figure:: /images/25-Manual-Textures-Procedural-Musgrave.jpg
   :width: 307px

   Musgrave Texture Panels


Often used for
   Organic materials, but it's very flexible. You can do nearly everything with it.
Result(s)
   Intensity


Options
=======

Type
   This procedural texture has five noise types on which the resulting pattern can be based
   and they are selectable from a dropdown menu at the top of the tab. The five types are:

   - Hetero Terrain
   - fBm
   - Hybrid Multifractal
   - Ridged Multifractal
   - Multifractal

   These noise types determine the manner in which Blender layers successive copies of the same
   pattern on top of each other at varying contrasts and scales.


Examples with Basis : Voronoi F1 - Dimension : 0.5 - Lacunarity : 0.15 - Octave: 2.0

.. list-table::

   * - .. figure:: /images/Musgrave_HeteroTerrain.jpg
          :width: 120px

          Hetero Terrain

     - .. figure:: /images/Musgrave_fBM.jpg
          :width: 120px

          fBM

     - .. figure:: /images/Musgrave_HybridMultifractal.jpg
          :width: 120px

          Hybrid Multifrct

     - .. figure:: /images/Musgrave_RidgedMultifractal.jpg
          :width: 120px

          Ridged Multifrct

     - .. figure:: /images/Musgrave_Multifractal.jpg
          :width: 120px

          Multifractal


..    Comment: <!-- not implemented yet?
   In addition to the five noise types, Musgrave has a noise basis setting which determines the
   algorithm that generates the noise itself.
   These are the same noise basis options found in the other procedural textures.
   --> .

The main noise types have four characteristics:

Dimension
   Fractal dimension controls the contrast of a layer relative to the previous layer in the texture.
   The higher the fractal dimension, the higher the contrast between each layer,
   and thus the more detail shows in the texture. Range: 0 to 2.
Lacunarity
   Lacunarity controls the scaling of each layer of the Musgrave texture,
   meaning that each additional layer will have a scale that is the inverse of the value which shows on the button.
   i.e. Lacunarity = 2 --> Scale = 1/2 original. Range: 0 to 6.
Octaves
   Octave controls the number of times the original noise pattern is overlayed on itself and
   scaled/contrasted with the fractal dimension and lacunarity settings. Range: 0 to 8.
Intensity
   Light intensity. Called *Offset* for *Hetero Terrain*. Range: 0 to 10.


The *Hybrid Multifractal* and *Ridged Multifractal* types have these additional settings:

Offset
   Both have a "Fractal Offset" button that serves as a "sea level"
   adjustment and indicates the base height of the resulting bump map.
   Bump values below this threshold will be returned as zero. Range: 0 to 6.
Gain
   Setting which determines the range of values created by the function.
   The higher the number, the greater the range.
   This is a fast way to bring out additional details in a texture where extremes are normally clipped off.
   Range: 0 to 6.

