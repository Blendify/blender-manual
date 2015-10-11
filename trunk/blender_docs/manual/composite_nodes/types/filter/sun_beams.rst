
*********
Sun Beams
*********

Sun Beams is a 2D effect for simulating the effect of bright light getting scattered in a medium
`(Crepuscular Rays) <http://en.wikipedia.org/wiki/Crepuscular_rays>`__.
This phenomenon can be created by renderers, but full volumetric lighting is
a rather arduous approach and takes a lot of render time.
Also when working with 2D images only the volumetric data may not be available.
In these cases the "Sun Beams" node provides a computationally cheap way of
creating a convincing effect based on image brightness alone.

.. figure:: /images/composite_nodes_filter_sun_beams.png
   :width: 450px
   :figwidth: 450px

Usage
=====

Usually the first step is to define the area from which rays are cast.
Any diffuse reflected light from surfaces is not going to contribute to such scattering in the real world,
so should be excluded from the input data.
Possible ways to achieve this are

- entirely separate image as a light source
- brightness/contrast tweaking to leave only the brightest areas
- muting shadow and midtone colors, which is a bit more flexible
- masking for ultimate control

After generating the sun beams from such a light source image they can then be overlayed on the original image.
Usually a simple "Add" mix node is sufficient,
and physically correct because the scattered light adds to the final result.
