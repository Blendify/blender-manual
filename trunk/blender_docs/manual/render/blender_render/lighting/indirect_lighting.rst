
*****************
Indirect Lighting
*****************

*Indirect Lighting* adds indirect light bouncing of surrounding objects.
It's modes the light that is reflected from other surfaces to the current surface.
Is more comprehensive, more physically correct, and produces more realistic images.
It is also more computationally expensive.
Take a look at the following examples of a scene lit with Direct Lighting and both
Direct+Indirect Lighting:


.. figure:: /images/lighting-inderect_lighting-01.jpg
   :width: 400px

   Direct Lighting Schematic.


.. figure:: /images/lighting-inderect_lighting-02.jpg
   :width: 400px

   Direct Lighting Render


.. figure:: /images/lighting-inderect_lighting-03.jpg
   :width: 400px

   Direct+Indirect Lighting Schematic


.. figure:: /images/lighting-inderect_lighting-04.jpg
   :width: 400px

   Direct+Indirect Lighting Render


Images courtesy of `rastermon.com <http://web.archive.org/web/20050204031559/http://rastermon.com/GI1.htm>`__


Indirect Lighting only works with Approximate gather method.


.. figure:: /images/lighting-inderect_lighting.jpg
   :width: 300px

   Indirect Lighting parameters.


Options
=======

The *Indirect Lighting* panel contains two options:

Factor
   Defines how much surrounding objects contribute to light.

Bounces
   Number of indirect diffuse light bounces.

The *Gather* panel contains settings for the indirect lighting quality.
Note that these settings also apply to Environment Lighting and Ambient Occlusion.


Approximate
-----------

.. figure:: /images/lighting-ambientOcclusion-gather2.jpg

   The Indirect Lighting panel, Approximate method.


The *Approximate* method gives a much smoother result for the same amount of render
time, but as its name states, it is only an approximation of the *Raytrace* method,
which implies it might produce some artifacts - and it cannot use the sky's texture as the
base color

This method seems to tend to "over-occlude" the results.
You have two complementary options to reduce this problem:

Passes
   Set the number of pre-processing passes, between ``0`` (no pre-processing)
   to ``10``. Keeping the pre-processing passes high will increase render time but will also
   clear some artifacts and over-occlusions.
Error
   This is the tolerance factor for approximation error (i.e.
   the max allowed difference between approximated result and fully computed result).
   The lower, the slower the render, but the more accurate the results...
   Ranges between ``0.0`` and ``10.0``, defaults to ``0.250``.

Pixel Cache
   When enabled, it will keep values of computed pixels to interpolate it with its neighbors.
   This further speeds up the render, generally without visible loss in quality...

Correction
   A correction factor to reduce over-occlusion. Ranges between ``0.0`` (no correction) to ``1.0``.


