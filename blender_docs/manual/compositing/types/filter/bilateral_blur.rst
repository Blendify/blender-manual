..    TODO/Review: {{review|copy=X}}.

*******************
Bilateral Blur Node
*******************

.. figure:: /images/compositing_nodes_bilateralblur.png
   :align: right
   :width: 150px

   Bilateral Blur Node.

The Bilateral Blur node performs a high-quality adaptive blur on the source image.

It can be used for various purposes like:
smoothing results from Blender's raytraced ambient occlusion
smoothing results from various unbiased renderers,
to fake some performance-heavy processes, like blurry refractions/reflections, soft shadows,
to make non-photorealistic compositing effects.


Inputs
======

Image
   Standard image input.
   If only the image input is connected,
   the node blurs the image depending on the edges present in the source image.
Determinator
   Which is non-obligatory and if the Determinator is connected,
   it serves as the source for defining edges/borders for the blur in the image.
   This has great advantage in case the source image is too noisy,
   but normals in combination with Z-buffer can still define exact borders/edges of objects.


Properties
==========

Iterations
   Defines how many times the filter should perform the operation on the image.
   It practically defines the radius of blur.
Color Sigma
   Defines the threshold for which color differences in the image should be taken as edges.
Space Sigma
   A fine-tuning variable for blur radius.


Outputs
=======

Image
   Standard image output.


Examples
========

.. list-table::

   * - .. figure:: /images/compositing_nodes-bilateralblur_ex1.jpg
          :width: 320px

          Bilateral smoothed AO.

     - .. figure:: /images/compositing_nodes-bilateralblur_ex2.jpg
          :width: 320px

          Bilateral faked blurry refraction+smoothed raytraced soft shadow.

   * - .. figure:: /images/compositing_nodes-bilateralblur_ex3.jpg
          :width: 320px

          Bilateral smoothed buffered shadow.

     -
