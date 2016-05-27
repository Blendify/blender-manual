.. _cycles_shader_anisotropic:

***********
Anisotropic
***********

Anisotropic glossy reflection, with separate control over U and V direction roughness.
The tangents used for shading are derived from the active UV map. If no UV map is available,
they are automatically generated using a sphere mapping based on the mesh bounding box.

Distribution
   Microfacet distribution to use. *Sharp* results in perfectly sharp reflections like a mirror,
   while *Beckmann*,
   *GGX* and *Ashikhmin-Shirley* can use the *Roughness* input for blurry reflections.
Color input
   Color of the surface, or physically speaking, the probability that light is reflected for each wavelength.
Roughness input
   Sharpness of the reflection; perfectly sharp at 0.0 and smoother with higher values.
Anisotropy input
   Amount of anisotropy in the reflection; 0.0 gives a round highlight.
   Higher values give elongated highlights orthogonal to the tangent direction;
   negative values give highlights shaped along the tangent direction.
Rotation input
   Rotation of the anisotropic tangent direction.
   Value 0.0 equals 0° rotation, 0.25 equals 90° and 1.0 equals 360° = 0° .
   This can be used to texture the tangent direction.

Normal input
   Normal used for shading; if nothing is connected the default shading normal is used.
Tangent input
   Tangent used for shading; if nothing is connected the default shading tangent is used.
BSDF output
   Anisotropic glossy :abbr:`BSDF (Bidirectional scattering distribution function)` shader.

.. list-table::

   * - .. figure:: /images/cycles_nodes_shader_anisotropic_rot0.jpg

         Anisotropic rotation on 0

     - .. figure:: /images/cycles_nodes_shader_anisotropic_rot025.jpg

         Anisotropic rotation on 0.25 (90°)
