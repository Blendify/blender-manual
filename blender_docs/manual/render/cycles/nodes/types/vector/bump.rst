
****
Bump
****

Generate a perturbed normal from a height texture, for bump mapping. The height value will be
sampled at the shading point and two nearby points on the surface to determine the local
direction of the normal.

Invert
   Invert the bump mapping, to displace into the surface instead of out.
Strength Input
   Strength of the bump mapping effect, interpolating between no bump mapping and full bump mapping.
Distance Input
   Multiplier for the height value to control the overall distance for bump mapping.
Height Input
   Scalar value giving the height offset from the surface at the shading point; this is where you plug in textures.
