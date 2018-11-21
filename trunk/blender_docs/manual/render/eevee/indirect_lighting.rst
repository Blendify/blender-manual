
***********************
Indirect Lighting Cache
***********************

While not strictly correct, all lighting that is not comming straight out from a lamp object is considered indirect lighting in Eevee.
That means distant HDRI lighting (or World) is considered as indirect lighting.
Mesh objects using an Emissive node is also considered as indirect lighting.

In Eevee, indirect lighting is separated into two component: Diffuse and Specular. Both have different needs and representation. For efficiency, the indirect lighting data is precomputed on demand into a static lighting cache.

As of now the lightcache is static and needs to be computed before rendering. It cannot be updated per frame (unless via scripting). This limitation is being worked on and will be removed in future versions.

Only view independant lighting can be baked. This is why Reflection Planes are not stored inside the light cache.

The visibility and collections used during the baking process are the ones in the current Active View Layer.


Light Bounce
============

To enable light bounces through large environment, the light baking process can be run multiple times while injecting previous bake result into the a bake. Total baking time is more or less multiplied by the number of bounce.

Light bounces only concerns diffuse lighting.


Indirect Lighting
=================

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Render --> Indirect Lighting`

Auto Bake
   Enbaling this option will trigger baking when a probe is changed. Usefull when positionning probes objects.

Diffuse Bounce
   Number of bounce to compute when baking the diffuse irradiance.

Cubemap Size
   Size of the reflection cubemaps.

Diffuse Occlusion Size
   Each irradiance sample also store a shadow map that is used to minimize indirect light leaking. This parameter define the size of this shadow map.

Irradiance Smoothing
   Smoother irradiance interpolation but introduce light bleeding. The irradiance visibility term can make the lighting not interpolate smoothly on some surfaces. This relax the weights so that the interpolation 

Clamp Glossy
   Clamp pixel intensity to reduce noise inside glossy reflections from reflection cubemaps (0 to disabled).

Filter Quality
   Take more samples during cubemap filtering to remove artifacts. For now, only have effect on cubemaps

Cubemap Display
   Display the Reflection Cubemaps present in the cache directly in the 3D view.

Irradiance Display
   Display the Irradiance Samples present in the cache in the 3D view.

.. note::
   Cache data display only works in the viewport and only if the viewport uses the world lighting in lookdev mode of in rendered mode.
