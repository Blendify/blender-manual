.. |tick|  unicode:: U+2714
.. |cross| unicode:: U+2717

***************
Render Features
***************

This page offers a comparison of available features on CPU, CUDA and OpenCL.

.. list-table::
   :header-rows: 1

   * - Feature
     - CPU
     - CUDA (NVIDIA GPU)
     - OpenCL (AMD GPU)
   * - :abbr:`Basic Shading (Includes Node Shaders and Textures, Ambient Occlusion, Global Illumination...)`
     - |tick|
     - |tick|
     - |tick|
   * - Transparent Shadows
     - |tick|
     - |tick|
     - |cross|
   * - Motion Blur
     - |tick|
     - |tick|
     - |tick|
   * - Hair
     - |tick|
     - |tick|
     - |tick|
   * - Volume
     - |tick|
     - |tick|
     - |cross|
   * - Smoke / Fire
     - |tick|
     - |tick|
     - |cross|
   * - Subsurface Scattering
     - |tick|
     - |tick|
     - |cross|
   * - Open Shading Language
     - |tick|
     - |cross|
     - |cross|
   * - CMJ sampling
     - |tick|
     - |tick|
     - |cross|
   * - Branched Path integrator
     - |tick|
     - |tick|
     - |cross|
   * - Displacement/Subdivision
     - |tick| :sup:`(experimental)`
     - |tick| :sup:`(experimental)`
     - |tick| :sup:`(experimental)`


.. _cycles-experimental-features:

Experimental Features
=====================

Experimental features are disabled / hidden by default,
but can be enabled by setting *Feature Set* to *Experimental* in the Render properties.
Enabling the *Experimental Feature Set* will use experemental
and incomplete features that might be broken or change in the future.

.. figure:: /images/render_cycles_features_experimental.png
