
***************
Render Settings
***************

Integrator Panel
================

See the :doc:`integrator settings </render/cycles/settings/integrator>` for details.

Performance Panel
=================

Threads
   Auto-detect
      Automatically chooses the amount threads to match the number of logical processors on your computer.

   Fixed
      Manually choose the amount threads to use for rendering. This can be useful for example,
      if you want to use your computer while rendering you can set the property
      to a thread count lower the the amount of logical processors on your computer.

.. rubric:: Tiles

Tile Order
   Order of rendering tiles. This does not significantly affect performance.

Tile size X/Y
   The size of the tiles for rendering.

   Depending on what device you are using for rendering, different tile sizes can give faster renders.
   For CPU rendering smaller tiles sizes (like 32 x 32) tend to be faster, while for
   :doc:`GPU rendering </render/cycles/gpu_rendering>` larger tile sizes give better performance (like 256 x 256).

Progressive Refine
   Instead of rendering each tile until it has finished every sample, refine the whole image progressively.
   Note that progressive rendering is slightly slower than tiled rendering,
   but time can be saved by manually stopping the render when the noise level is low enough.

   For rendering animations it is best to disable this feature, as stopping a frame early is not possible.

Save Buffers
   Save all render layers and passes to disk in the temp directory, and read them back after rendering has
   finished. This saves memory usage during rendering, particularly when using many render layers and passes.

.. rubric:: Viewport

Viewport BVH Type
   Dynamic BVH
      Objects can be transformed, added and deleted interactively, at the cost of slower renders.
   Static BVH
      Object modifications require a complete :term:`BVH` rebuild which reduces interactivity but renders faster.

Start Resolution
   Resolution to start rendering preview at, progressively increase it to the full viewport size.

.. rubric:: Final Render

Persistent Images
   Keep image data in memory after rendering, for faster re-renders at the cost of extra memory usage when
   performing other tasks in Blender.

.. rubric:: Acceleration Structure

Use Spatial Splits
   Spatial splits improve rendering performance in scenes with a mix of large and small polygons. The
   downsides are longer BVH build times and slightly increased memory usage.

Use Hair BVH
   Use a special type of :term:`BVH` for rendering hair. Disabling this option will reduce memory, at the cost of
   increasing hair render time.
