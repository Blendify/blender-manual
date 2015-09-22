
*********************
Features
*********************

This page offers a comparison of available features on CPU, CUDA and OpenCL.

.. |tick|  unicode:: U+2714
.. |cross| unicode:: U+2717

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
     - |cross|
     - |cross|
   * - Subsurface Scattering
     - |tick|
     - |tick| :sup:`(experimental)`
     - |cross|
   * - Open Shading Language
     - |tick|
     - |cross|
     - |cross|
   * - CMJ sampling
     - |tick|
     - |tick| :sup:`(experimental)`
     - |cross|
   * - Branched Path integrator
     - |tick|
     - |tick|
     - |cross|
   * - Displacement / Subdivision
     - |tick| :sup:`(experimental)`
     - |tick| :sup:`(experimental)`
     - |tick| :sup:`(experimental)`


Experimental Features
=======================
Experimental features are disabled / hidden by default, but can be enabled by setting *Feature Set* to
*Experimental* in the Render properties.
They may not work properly, crash Blender or change their behaviour in later versions.

.. figure:: /images/cycles_ui_feature_set.jpg

.. warning:: The experimental GPU kernel requires a lot of memory
             and thus may not work at all on cards without enough ram.
