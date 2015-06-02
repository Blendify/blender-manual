
*********************
Features
*********************

This page offers a comparison of available features on CPU, CUDA and OpenCL. 

.. list-table::
   :header-rows: 1

   * - Feature
     - CPU
     - CUDA (Nvidia GPU)
     - OpenCL (AMD GPU)
   * - Basic Shading
     - yes
     - yes
     - yes
   * - Transparent Shadows
     - yes
     - yes
     - no
   * - Motion Blur
     - yes
     - yes
     - experimental
   * - Hair
     - yes
     - yes
     - experimental
   * - Volume
     - yes
     - yes
     - no
   * - Smoke / Fire
     - yes
     - no
     - no
   * - Subsurface Scattering
     - yes
     - experimental
     - no
   * - Open Shading Language
     - yes
     - no
     - no
   * - CMJ sampling
     - yes
     - experimental
     - no
   * - Branched Path integrator
     - yes
     - yes
     - no
   * - Displacement / Subdivision
     - experimental
     - experimental
     - experimental


Experimental Features
=======================
Experimental features are disabled / hidden by default, but can be enabled by setting *Feature Set* to
*Experimental* in the Render properties.
They may not work properly, crash Blender or change their behaviour in later versions.

.. figure:: /images/experimental.jpg

.. warning:: The experimental GPU kernel requires a lot of memory
             and thus may not work at all on cards without enough ram.
