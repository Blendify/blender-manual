..    TODO/Review: {{review|copy=X}}.

******
Filter
******

.. figure:: /images/compositing_nodes_filter.png
   :align: right
   :width: 150px

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

.. figure:: /images/tutorials-ntr-comfilternodeillustration.jpg

   The Filter node has seven modes, shown here.
