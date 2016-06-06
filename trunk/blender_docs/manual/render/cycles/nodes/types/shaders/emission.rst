
********
Emission
********

.. figure:: /images/cycles_nodes_shader_emission.png
   :align: right
   :width: 150px

   Emission Node.

Lambertian emission, to be used for material and lamp surface outputs.

Cycles uses a physically correct light falloff by default,
whereas Blender Internal uses a smoothed falloff with a Distance parameter.
A similar effect can be found by using the Light Falloff node with the Smooth parameter.

Lamp strength for point, spot and area lamps is specified in Watts.
This means you typically need higher values than Blender Internal,
as you couldn't use a 1W lamp to light a room; you need something stronger like a 100W lamp.

Sun lamps are specified in Watts/m\ :sup:`2`\, which require much smaller values like 1 W/m\ :sup:`2`\.
This can be confusing, but specifying strength in Watts wouldn't have been convenient;
the real sun for example has strength 384.6×10\ :sup:`24`\W.
Emission shaders on meshes are also in Watts/m\ :sup:`2`\.


Inputs
======

Color
   Color of the emitted light.
Strength
   Strength of the emitted light. For point and area lamps, the unit is Watts.
   For materials, a value of 1.0 will ensure that the object in the image has
   the exact same color as the Color input, i.e. make it 'shadeless'.


Properties
==========

This node has no properites.


Outputs
=======

Emission
   Standard shader output.


Examples
========

.. list-table::

   * - .. figure:: /images/cycles_nodes_shader_emission.jpg

         Emission shader, with strength at 1.0 .

     - .. figure:: /images/cycles_nodes_shader_emission_bright.jpg

         Emission shader, with strength at 3.0 .
