
*******
Diffuse
*******

.. figure:: /images/cycles_nodes_shader_diffuse.png
   :align: right
   :width: 150px

   Diffuse Node.


Lambertian and Oren-Nayar diffuse reflection.


Inputs
======

Color
   Color of the surface, or physically speaking,
   the probability that light is reflected or transmitted for each wavelength.
Roughness
   Surface roughness; 0.0 gives standard Lambertian reflection, higher values activate the Oren-Nayar BSDF.
Normal
   Normal used for shading; if nothing is connected the default shading normal is used.


Properties
==========

This node has no properties


Outputs
=======

BSDF
   Standard shader output.


Examples
========

.. list-table::

   * - .. figure:: /images/cycles_nodes_shader_diffuse_behavior.png

          Diffuse behavior.

     -

   * - .. figure:: /images/cycles_nodes_shader_diffuse_example.jpg

     - .. figure:: /images/cycles_nodes_shader_diffuse_example_oren-nayar.jpg
