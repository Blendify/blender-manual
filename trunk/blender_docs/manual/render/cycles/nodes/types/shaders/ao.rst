
*****************
Ambient Occlusion
*****************

The ambient occlusion node gives per-material control for the amount of AO.
When AO is enabled in the world, it affects all diffuse BSDFs in the scene.
With this option it's possible to let only some materials be affected by AO,
or to let it influence some materials more or less than others.


Inputs
======

Color
   surface reflection color.


Outputs
=======

AO
   Standard shader output.


Example
=======

.. figure:: /images/cycles_nodes_shader_ao.jpg

   White AO shader.
