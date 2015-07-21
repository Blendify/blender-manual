
..    TODO/Review: {{review|copy=X}} .

*******************
Bilateral Blur Node
*******************

.. figure:: /images/Tutorials-NTR-ComBilateralBlur.jpg

   Blur node


The bilateral blur node performs a high quality adaptive blur on the source image.
It can be used for various purposes like:
smoothing results from blenders raytraced ambient occlusion
smoothing results from various unbiased renderers,
to fake some performance-heavy processes, like blurry refractions/reflections, soft shadows,
to make non-photorealistic compositing effects.


Inputs
======

Bilateral blur has 2 inputs:
   *Image*, for the image to be blurred.
   *Determinator*, which is non-obligatory, and is used only if connected.


if only 1st input is connected,
the node blurs the image depending on the edges present in the source image.
If the Determinator is connected,
it serves as the source for defining edges/borders for the blur in the image.
This has great advantage in case the source image is too noisy,
but normals in combination with zbuffer can still define exact borders/edges of objects.


Options
=======

Iterations
   Defines how many times the filter should perform the operation on the image.
   It practically defines the radius of blur.
Color Sigma
   Defines the threshold for which color differences in the image should be taken as edges.
Space sigma
   A fine-tuning variable for blur radius.


Examples
========

.. figure:: /images/Compositing_Nodes-BilateralBlur_ex3.jpg
   :width: 250px
   :figwidth: 250px

   Bilateral smoothed buffered shadow


.. figure:: /images/Compositing_Nodes-BilateralBlur_ex1.jpg
   :width: 250px
   :figwidth: 250px

   Bilateral smoothed AO


.. figure:: /images/Compositing_Nodes-BilateralBlur_ex2.jpg
   :width: 250px
   :figwidth: 250px

   Bilateral faked blurry refraction+smoothed reytraced soft shadow
