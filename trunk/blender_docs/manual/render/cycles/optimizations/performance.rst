
***********
Performance
***********

TODO.

.. seealso::

   See :doc:`Optimizing Node Performance </render/cycles/nodes/performance>`
   for information on how nodes are internally optimized.


Performance Panel
=================

Threads
   Auto-detect
      Automaticaly chooses the amount threads to match the number of logical processors on your computer.

   Fixed
      Manual choose the amount threads to use for rendering. This can be useful for example,
      if you want to use your computer while rendering you can set the property
      to a thread count lower the the amount of logical processors on your computer.

.. rubric:: Tiles

Tile Order
   Order of rendering tiles.

Tile size X/Y
   The size of the tiles for rendering.

   .. tip::

      Depending on what device you are using for rendering different tile sizes can give faster renders.
      For example, For CPU rendering "16 X 16" works best while for :doc:`GPU rendering </render/cycles/gpu_rendering>`
      "256 X 256" works best.

Progressive Refine
   Instead of rendering each tile until it has finished every sample, refine the whole image progressively.
   Note that, this causes renders to render slightly slower,
   but time can be saved by manually stopping the render when the noise level is low enough.

   .. note::

      File this feature does work for animations you can not stop rendering a frame early.

Save Buffers
   Save the tiles for all RenderLayers and SceneNodes to files in the temp directory
   (saves memory and is required for *Full Sample*).

.. rubric:: Viewport

Viewport BVH Type
   Dynamic BVH
      Objects can be individually update at the cost of slower render time.
   Static BVH
      Any object modification requires a complete :term:`BVH` rebuild, but renders faster.

Start Resolution
   Resolution to start rendering preview at, progressively increase it to the full viewport size.

.. rubric:: Final Render

Persistent Images
   Keep render data around for faster re-renders.

.. rubric:: Acceleration Structure

Use Spatial Splits
   Longer build times, faster render.

.. Better definition?

Use Hair BVH
   Use a special type of :term:`BVH` optimized for hair (uses more ram but renders faster).
