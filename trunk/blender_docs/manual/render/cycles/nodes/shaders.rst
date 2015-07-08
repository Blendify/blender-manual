.. _shaders:

************
Shader Nodes
************

.. _cycles_shader_diffuse:

Diffuse
^^^^^^^

Lambertian and Oren-Nayar diffuse reflection.

Color input
   Color of the surface, or physically speaking,
   the probability that light is reflected or transmitted for each wavelength.
Roughness input
   Surface roughness; 0.0 gives standard Lambertian reflection, higher values activate the Oren-Nayar BSDF.
Normal input
   Normal used for shading; if nothing is connected the default shading normal is used.
BSDF output
   Diffuse :abbr:`BSDF (Bidirectional scattering distribution function)` shader.


.. list-table::

   * - .. figure:: /images/cycles_nodes_shader_diffuse_behavior.png

          Diffuse behavior

     -

   * - .. figure:: /images/cycles_nodes_shader_diffuse.jpg

     - .. figure:: /images/cycles_nodes_shader_oren-nayar.jpg


.. _cycles_shader_translucent:


Translucent
^^^^^^^^^^^

Lambertian diffuse transmission.

Color input
   Color of the surface, or physically speaking, the probability that light is transmitted for each wavelength.
Normal input
   Normal used for shading; if nothing is connected the default shading normal is used.
BSDF output
   Translucent :abbr:`BSDF (Bidirectional scattering distribution function)` shader.


.. figure:: /images/cycles_nodes_shader_translucent_behavior.png
   :align: center


.. figure:: /images/cycles_nodes_shader_translucent.jpg
   :align: center

   Translucent Shader


.. _cycles_shader_glossy:

Glossy
^^^^^^

Glossy reflection with microfacet distribution, used for materials such as metal or mirrors.

Distribution
   Microfacet distribution to use. *Sharp* results in perfectly sharp reflections like a mirror,
   while *Beckmann*,
   *GGX* and *Ashikhmin-Shirley* can use the *Roughness* input for blurry reflections.
Color input
   Color of the surface, or physically speaking, the probability that light is reflected for each wavelength.
Roughness input
   Influences sharpness of the reflection; perfectly sharp at 0.0 and smoother with higher values.
Normal input
   Normal used for shading; if nothing is connected the default shading normal is used.
BSDF output
   Glossy :abbr:`BSDF (Bidirectional scattering distribution function)` shader.

.. list-table::
   :header-rows: 1

   * - Sharp Glossy
     - Rough Glossy
   * - .. figure:: /images/cycles_nodes_shader_glossy_sharp_behavior.png
     - .. figure:: /images/cycles_nodes_shader_glossy_behavior.png
   * - .. figure:: /images/cycles_nodes_shader_glossy.jpg
     - .. figure:: /images/cycles_nodes_shader_glossyrough.jpg


.. _cycles_shader_anisotropic:

Anisotropic
^^^^^^^^^^^

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
   Value 0.0 equals 0- rotation, 0.25 equals 90- and 1.0 equals 360- = 0- .
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

         Anisotropic rotation on 0.25 (90- )


.. _cycles_shader_toon:

Toon
^^^^

Diffuse and Glossy Toon :abbr:`BSDF (Bidirectional scattering distribution function)` for
creating cartoon light effects.

Color input
   Color of the surface, or physically speaking, the probability that light is reflected for each wavelength.
Size input
   Parameter between 0.0 and 1.0 that gives a angle of reflection between 0- and 90- .
Smooth input
   This value specifies an angle over which a smooth transition from full to no reflection happens.
Normal input
   Normal used for shading; if nothing is connected the default shading normal is used.
BSDF output
   Toon :abbr:`BSDF (Bidirectional scattering distribution function)` shader.


.. figure:: /images/cycles_nodes_shader_toon.jpg

   Toon Shader


.. _cycles_shader_transparent:

Transparent
^^^^^^^^^^^

Transparent :abbr:`BSDF (Bidirectional scattering distribution function)` without refraction,
passing straight through the surface, as if there were no geometry there. Useful with alpha maps, for example.
This shader :ref:`affects light paths somewhat differently <render-cycles-light_paths-transparency>`
than other :abbr:`BSDF (Bidirectional scattering distribution function)` s.
Note that only pure white transparent shaders are completely transparent.

Color input
   Color of the surface, or physically speaking,
   the probability for each wavelength that light is blocked or passes straight through the surface.
BSDF output
   Transparent :abbr:`BSDF (Bidirectional scattering distribution function)` shader.


.. list-table::

   * - .. figure:: /images/cycles_nodes_shader_transparent_behavior.png
          :align: center

          Transparent behaviour

     -

   * - .. figure:: /images/cycles_nodes_shader_transparent.jpg

          Transparent Shader (pure white)

     - .. figure:: /images/cycles_nodes_shader_transparentdark.jpg

          Transparent Shader (gray)


.. _cycles_shader_glass:

Glass
^^^^^

Glass-like shader mixing refraction and reflection at grazing angles. Like the transparent shader,
only pure white will make it transparent. The glass shader tends to cause noise due to caustics.
Since the Cycles path tracing integrator is not very good at rendering caustics,
it helps to combine this with a transparent shader for shadows;
for :ref:`more details see here <render-cycles-reducing_noise-glass_and_transp_shadows>`

Distribution
   Microfacet distribution to use. *Sharp* results in perfectly sharp refractions like clear glass,
   while *Beckmann* and *GGX* can use the *Roughness* input for rough glass.
Color input
   Color of the surface, or physically speaking, the probability that light is transmitted for each wavelength.
Roughness input
   Influences sharpness of the refraction; perfectly sharp at 0.0 and smoother with higher values.
:term:`IOR` input
   Index of refraction defining how much the ray changes direction. At 1.
   0 rays pass straight through like transparent; higher values give more refraction.
Normal input
   Normal used for shading; if nothing is connected the default shading normal is used.
BSDF output
   Glass :abbr:`BSDF (Bidirectional scattering distribution function)` shader.

.. list-table::
   :header-rows: 1

   * - Sharp Glass
     - Rough Glass
   * - .. figure:: /images/cycles_nodes_shader_glass_sharp_behavior.png
     - .. figure:: /images/cycles_nodes_shader_glass_behavior.png
   * - .. figure:: /images/cycles_nodes_shader_glass.jpg
     - .. figure:: /images/cycles_nodes_shader_glassrough.jpg


.. _cycles_shader_refraction:

Refraction
^^^^^^^^^^

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


.. _cycles_shader_velvet:

Velvet
^^^^^^

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


.. _cycles_shader_sss:

Subsurface Scattering
^^^^^^^^^^^^^^^^^^^^^

Simple subsurface multiple scattering, for materials such as skin, wax, marble,
milk and others. For these materials,
rather than light being reflect directly off the surface, it will penetrate the surface and
bounce around internally before getting absorbed or leaving the surface at a nearby point.

How far the color scatters on average can be configured per RGB color channel. For example,
for skin, red colors scatter further, which gives distinctive red-colored shadows,
and a soft appearance.

Falloff
   Lighting distance falloff function.
   **Cubic** is a sharp falloff useful for many simple materials. The function is (radius - x) :sup:`3`
   **Gaussian** gives a smoother falloff following a normal distribution,
   which is particularly useful for more advanced materials that use measured
   data that was fitted to one or more such Gaussian functions.
   The function is e :sup:`-8x`:sup:`2`:sup:`/radius`:sup:`2`,
   such that the radius roughly matches the maximum falloff distance.
   To match a given measured variance v, set radius = sqrt(16*v).
Color input
   Color of the surface, or physically speaking, the probability that light is reflected for each wavelength.
Scale input
   Global scale factor for the scattering radius.
Radius input
   Scattering radius for each RGB color channel, the maximum distance that light can scatter.
Sharpness input
   Used only with **Cubic** falloff.
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


.. _cycles_shader_emission:

Emission
^^^^^^^^

Lambertian emission, to be used for material and lamp surface outputs.

Color input
   Color of the emitted light.
Strength input
   Strength of the emitted light. For point and area lamps, the unit is Watts.
   For materials, a value of 1.0 will ensure that the object in the image has
   the exact same color as the Color input, i.e. make it 'shadeless'.
Emission output
   Emission shader.


.. list-table::

   * - .. figure:: /images/cycles_nodes_shader_emission.jpg

         Emission shader, with strength at ``1.0``

     - .. figure:: /images/cycles_nodes_shader_emission_bright.jpg

         Emission shader, with strength at ``3.0``


Cycles uses a physically correct light falloff by default,
whereas Blender Internal uses a smoothed falloff with a Distance parameter.
A similar effect can be found by using the Light Falloff node with the Smooth parameter.

Lamp strength for point, spot and area lamps is specified in Watts.
This means you typically need higher values than Blender Internal,
as you couldn't use a 1W lamp to light a room; you need something stronger like a 100W lamp.

Sun lamps are specified in Watts/m^2, which require much smaller values like 1 W/m^2.
This can be confusing, but specifying strength in Watts wouldn't have been convenient;
the real sun for example has strength 384600000000000000000000000W.
Emission shaders on meshes are also in Watts/m^2.


.. _cycles_shader_background:

Background
^^^^^^^^^^

Background light emission. This node should only be used for the world surface output;
it is ignored in other cases.

Color input
   Color of the emitted light.
Strength input
   Strength of the emitted light.
Background output
   Background shader.


.. _cycles_shader_holdout:

Holdout
^^^^^^^

The holdout shader creates a "hole" in the image with zero alpha
transparency, which is useful for compositing (see :term:`alpha channel`).

Note that the holdout shader can only create alpha when
:menuselection:`Properties --> Render --> Film --> Transparent` is enabled.
If it's disabled, the holdout shader will be black.

Holdout output
   Holdout shader.


.. figure:: /images/cycles_nodes_shader_holdout.jpg

   The checkered area is a region with zero alpha.


.. _cycles_shader_ao:

Ambient Occlusion
^^^^^^^^^^^^^^^^^

The ambient occlusion node gives per-material control for the amount of AO.
When AO is enabled in the world, it affects all diffuse BSDFs in the scene.
With this option it's possible to let only some materials be affected by AO,
or to let it influence some materials more or less than others.

Color input
   surface reflection color.
AO output
   Ambient Occlusion shader.


.. figure:: /images/cycles_nodes_shader_ao.jpg

   White AO shader.


.. _cycles_shader_mix_add:

Mix and Add
^^^^^^^^^^^

Mix or add shaders together. Mixing can be used for material layering,
where the *Fac* input may, for example, be connected to a Blend Weight node.

Shader inputs
   Shaders to mix, such that incoming rays hit either with the specified probability in the *Fac* socket.
Fac input
   Blend weight to use for mixing two shaders;
   at zero it uses the first shader entirely and at one the second shader.
Shader output
   Mixed shader.


.. figure:: /images/cycles_nodes_shader_mix.jpg

   A mix of a glossy and a diffuse shader makes a nice ceramic material.
