
*******
Fresnel
*******

Dielectric fresnel, computing how much light is reflected off a layer,
where the rest will be refracted through the layer.
The resulting weight can be used for layering shaders with the *Mix Shader* node.
It is dependent on the angle between the surface normal and the viewing direction.

The most common use is to mix between two BSDFs using it as a blending factor in a mix shader
node.
For a simple glass material you would mix between a glossy refraction and glossy reflection.
At grazing angles more light will be reflected than refracted as happens in reality.

For a two-layered material with a diffuse base and a glossy coating,
you can use the same setup, mixing between a diffuse and glossy BSDF. By using the fresnel as
the blending factor you're specifying that any light which is refracted through the glossy
coating layer would hit the diffuse base and be reflected off that.

:term:`IOR` input
   Index of refraction of the material being entered.
Fresnel output
   Fresnel weight,
   indicating the probability with which light will reflect off the layer rather than passing through.
