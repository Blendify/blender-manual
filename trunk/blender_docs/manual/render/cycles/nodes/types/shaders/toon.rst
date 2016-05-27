.. _cycles_shader_toon:

****
Toon
****

Diffuse and Glossy Toon :abbr:`BSDF (Bidirectional scattering distribution function)` for
creating cartoon light effects.

Color input
   Color of the surface, or physically speaking, the probability that light is reflected for each wavelength.
Size input
   Parameter between 0.0 and 1.0 that gives a angle of reflection between 0° and 90°.
Smooth input
   This value specifies an angle over which a smooth transition from full to no reflection happens.
Normal input
   Normal used for shading; if nothing is connected the default shading normal is used.
BSDF output
   Toon :abbr:`BSDF (Bidirectional scattering distribution function)` shader.


.. figure:: /images/cycles_nodes_shader_toon.jpg

   Toon Shader
