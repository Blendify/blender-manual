.. _cycles_shader_velvet:

******
Velvet
******

Velvet reflection shader for materials such as cloth.
It is meant to be used together with other shaders (such as a *Diffuse Shader*)
and isn't particularly useful on it's own.

Color input
   Color of the surface, or physically speaking, the probability that light is reflected for each wavelength.
Sigma input
   Variance of the normal distribution,
   controlling the sharpness of the peak - can be thought of as a kind of *roughness*.
Normal input
   Normal used for shading; if nothing is connected the default shading normal is used.
BSDF output
   Velvet :abbr:`BSDF (Bidirectional scattering distribution function)` shader.


.. figure:: /images/cycles_nodes_shader_velvet_behavior.png
   :align: center


.. figure:: /images/cycles_nodes_shader_velvet.jpg
   :align: center

   The Velvet Shader
