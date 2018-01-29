.. _bpy.types.CompositorNodeFilter:

***********
Filter Node
***********

.. figure:: /images/compositing_types_filter_filter-node_node.png
   :align: right

   Filter Node.

The Filter node implements various common image enhancement filters.


Inputs
======

Factor
   Controls the amount of influence the node exerts on the output image.
Image
   Standard image input.


Properties
==========

Type
   The Soften, Laplace, Sobel, Prewitt and Kirsch all perform edge-detection
   (in slightly different ways) based on vector calculus and set theory equations.

   Soften
      Slightly blurs the image.
   Sharpen
      Increases the contrast, especially at edges
   Laplace
      Softens around edges
   Sobel
      Creates a negative image that highlights edges
   Prewitt
      Tries to do Sobel one better.
   Kirsch
      Giving a better blending as Sobel or Prewitt, when approaching an edge.
   Shadow
      Performs a relief emboss/ bumpmap effect, darkening outside edges.


Outputs
=======

Image
   Standard image output.


Example
=======

.. list-table:: The Filter node has seven modes, shown here.

   * - .. figure:: /images/compositing_types_filter_filter-node_example-1-original.png

          Original image.

     - .. figure:: /images/compositing_types_filter_filter-node_example-2-soften.png

          Soften.

   * - .. figure:: /images/compositing_types_filter_filter-node_example-3-sharpen.png

          Sharpen.

     - .. figure:: /images/compositing_types_filter_filter-node_example-4-laplace.png

          Laplace.

   * - .. figure:: /images/compositing_types_filter_filter-node_example-5-sobel.png

          Sobel.

     - .. figure:: /images/compositing_types_filter_filter-node_example-6-prewitt.png

          Prewitt.

   * - .. figure:: /images/compositing_types_filter_filter-node_example-7-kirsch.png

          Kirsch.

     - .. figure:: /images/compositing_types_filter_filter-node_example-8-shadow.png

          Shadow.
