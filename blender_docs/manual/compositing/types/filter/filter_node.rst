
..    TODO/Review: {{review|copy=X}} .

***********
Filter Node
***********

.. figure:: /images/compositing_nodes_filter.png
   :align: right
   :width: 150px

   Filter Node

The Filter node implements various common image enhancement filters.
The supported filters are, if not obvious,
named after the mathematical genius who came up with them:

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
   Improves on the work done by those other two flunkies, giving a better blending as you approach an edge.
Shadow
   Performs a relief emboss/bumpmap effect, darkening outside edges.


.. figure:: /images/Tutorials-NTR-ComFilterNodeIllustration.jpg
   :width: 500px
   :figwidth: 500px

   The Filter node has seven modes, shown here.


The *Soften*, *Laplace*, *Sobel*,
*Prewitt* and *Kirsch* all perform edge-detection
(in slightly different ways) based on vector calculus and set theory equations that would fill
six blackboards with gobbledy gook. Recommended reading for insomniacs.
