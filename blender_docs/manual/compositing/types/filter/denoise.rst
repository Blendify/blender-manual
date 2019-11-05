.. _bpy.types.CompositorNodeDenoise:

************
Denoise Node
************

.. figure:: /images/compositing_node-types_CompositorNodeDenoise.png
   :align: right

   Denoise Node.

The Denoise node is used to denoise renders from :doc:`Cycles </render/cycles/index>`
and other ray tracing renderers. This helps to significantly reduce render time by
rendering with fewer samples.

It is uses `OpenImageDenoise <https://openimagedenoise.github.io/>`__, which
transforms noisy images into clean images with machine learning.

Inputs
======

Image
   Noise image input.
Normal
   Optional normal render pass to better preserve detail.
   For Cycles, it is recommended to use the Denoising Normal render pass,
   which is available when enabling the Denoising Data passes.
Albedo
   Optional albedo render pass to better preserve detail.
   For Cycles, it is recommended to use the Denoising Albedo render pass,
   which is available when enabling the Denoising Data passes.

Properties
==========

HDR
   Preserve colors outside the 0..1 range.

Outputs
=======

Image
   Denoised image output.
