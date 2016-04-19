
************
Layer Weight
************

Output weights typically used for layering shaders with the *Mix Shader* node.

Blend input
   Blend between the first and second shader.
Fresnel output
   Dielectric fresnel weight,
   useful for example for layering diffuse and glossy shaders to create a plastic material.
   This is like the Fresnel node,
   except that the input of this node is in the often more-convenient 0.0 to 1.0 range.
Facing output
   Weight that blends from the first to the second shader
   as the surface goes from facing the viewer to viewing it at a grazing angle.
