.. _bpy.types.CompositorNodeVecBlur:

*************************
Vector (Motion) Blur Node
*************************

.. figure:: /images/compositing_types_filter_vector-blur_node.png
   :align: right

   Vector Blur Node.

The Vector Blur node applies a **non** physically based method of simulating :term:`Motion blur`.
It uses the vector speed render pass to blur the image pixels in 2D.


Inputs
======

Image
   Standard image input.
Z
   Standard Z depth.
Speed
   Input for the "Vector" render pass.
   See :doc:`Cycles render passes </render/cycles/settings/scene/render_layers/passes>` or
   :doc:`Blender internal render passes </render/blender_render/settings/passes>`.


Properties
==========

Samples
   Quality factor.
Blur
   Scaling factor for the motion vector (actually the "shutter speed" in frames).
Speed
   The vector blur could produce artifacts like streaks, lines and other.
   To combat these problems, the filter applies clamping,
   which can be used to limit which pixels get blurred. The speed is set in pixel units.

   Maximum Speed
      The maximum threshold. The majority of artifacts are caused by pixels moving too fast.
   Minimum Speed
      The minimum threshold for moving pixels can separate
      the hardly moving pixels from the moving ones.
      Especially when the camera itself moves,
      the vector mask can become the entire image.


Outputs
=======

Image
   Standard image output.

.. hint::

   You can make vector blur results in a little smoother by passing the Speed pass through a blur node
   (but note that this can make strange results,
   so it is only really appropriate for still images with lots of motion blur).

.. note::

   Does not work when reading from a multilayer OpenEXR sequence set


Example
=======

The *speed vector* in this example was created by animating the patterned sphere horizontally and
​using a frame at the mid-point of the sequence.

.. list-table::

   * - .. figure:: /images/compositing_types_filter_vector-blur_example-base.jpg
          :width: 300px

          Render result, no post-processing.

     - .. figure:: /images/compositing_types_filter_vector-blur_example-1.jpg
          :width: 300px

          Composite, with samples set to 32 and a blur of 1.0.
