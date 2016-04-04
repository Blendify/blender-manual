
..    TODO/Review: {{review|elaborate?}} .


***************
Volume Textures
***************

Blender has two textures that can be applied to volumetric data:

:doc:`Voxel Data </render/blender_render/textures/types/volume/voxel_data>`
   Voxel data renders a voxel source. It can be used for rendering Blender's internal smoke simulations.
   Other sources include binary raw formats, and Image Sequence,
   which can be used to stack a sequence of images into a 3D representation

:doc:`Point Density </render/blender_render/textures/types/volume/point_density>`
   Point density renders a given point cloud (object vertices or particle system) as a 3D volume
   
   
.. toctree::
   :maxdepth: 1

   voxel_data.rst
   point_density.rst
