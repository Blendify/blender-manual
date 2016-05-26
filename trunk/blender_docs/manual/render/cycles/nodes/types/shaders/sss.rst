.. _cycles_shader_sss:

*********************
Subsurface Scattering
*********************

Simple subsurface multiple scattering, for materials such as skin, wax, marble,
milk and others. For these materials,
rather than light being reflect directly off the surface, it will penetrate the surface and
bounce around internally before getting absorbed or leaving the surface at a nearby point.

How far the color scatters on average can be configured per RGB color channel. For example,
for skin, red colors scatter further, which gives distinctive red-colored shadows,
and a soft appearance.

Falloff
   Lighting distance falloff function.

   Cubic
       Is a sharp falloff useful for many simple materials. The function is (*radius* - *x*)\ :sup:`3` \
   Gaussian
      Gives a smoother falloff following a normal distribution,
      which is particularly useful for more advanced materials that use measured
      data that was fitted to one or more such Gaussian functions.
      The function is e :sup:`-8x^2/ radius^2`,
      such that the radius roughly matches the maximum falloff distance.
      To match a given measured variance *v*, set *radius* = sqrt(16 \* \ *v*).
   Christensen-Burley
      Is an approximation to physically based volume scattering. Gives less
      blurry results than Cubic and Gaussian functions.

Color input
   Color of the surface, or physically speaking, the probability that light is reflected for each wavelength.
Scale input
   Global scale factor for the scattering radius.
Radius input
   Scattering radius for each RGB color channel, the maximum distance that light can scatter.
Sharpness input
   Used only with *Cubic* falloff.
   Values increasing from 0 to 1 prevents softening of sharp edges and reduces unwanted darkening.
Normal input
   Normal used for shading; if nothing is connected the default shading normal is used.
Texture Blur input
   How much of the texture will be blurred along with the lighting,
   mixing the texture at the incoming and outgoing points on the surface.
   Note that the right choice depends on the texture.
   Consider for example a texture created from a photograph of skin,
   in this cases the colors will already be pre-blurred and texture blur could be set to 0.
   Even for hand painted textures no or minimal blurring might be appropriate,
   as a texture artist would likely paint in softening already,
   one would usually not even know what an unblurred skin texture looks like, we always see it blurred.
   For a procedural texture on the other hand this option would likely have a higher value.
BSSRDF output
   :abbr:`BSSRDF (Bidirectional subsurface scattering distribution function)` shader.


.. figure:: /images/cycles_nodes_shader_sss.jpg

   A skin-toned SSS shader with color radius: 1.0, 0.8, 0.5.
