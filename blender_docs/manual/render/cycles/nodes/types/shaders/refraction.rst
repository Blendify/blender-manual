.. _cycles_shader_refraction:

**********
Refraction
**********

Glossy refraction with sharp or microfacet distribution,
used for materials that transmit light. For best results this node should be considered as a
building block and not be used on its own,
but rather mixed with a glossy node using a fresnel factor.
Otherwise it will give quite dark results at the edges for glossy refraction.

Distribution
   Microfacet distribution to use. *Sharp* results in perfectly sharp refractions,
   while *Beckmann* and *GGX* can use the *Roughness* input for blurry refractions.
Color input
   Color of the surface, or physically speaking, the probability that light is refracted for each wavelength.
Roughness input
   Influences sharpness of the refraction; perfectly sharp at 0.0 and smoother with higher values.
Normal input
   Normal used for shading; if nothing is connected the default shading normal is used.
BSDF output
   Glossy :abbr:`BSDF (Bidirectional scattering distribution function)` shader.


.. figure:: /images/cycles_nodes_shader_refraction.jpg

   Refraction Shader.
