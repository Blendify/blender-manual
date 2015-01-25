
..    TODO/Review: {{review|}} .


******************
Exposure and Range
******************

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Panel:    *World* (*Shading* context, *World* sub-context)


Description
===========

*Exposure* and *Range* are similar to the "Color Curves" tool in Gimp or Photoshop.

These controls affect the rendered image, and the results are baked into the render.
For information on achieving similar affects with render controls,
see :doc:`Color Management and Exposure </render/post_process/cm_and_exposure>`.

Previously Blender clipped color directly with ``1.0`` (or 255)
when it exceeded the possible RGB space.
This caused ugly banding and overblown highlights when light overflowed
(*An overexposed teapot*).

Using an exponential correction formula, this now can be nicely corrected.


Options
=======

.. figure:: /images/Doc26-world-exposure.jpg

   Exposure and Range sliders.


Exposure
   The exponential curvature, with ``0.0`` being linear, and ``1.0`` being curved.

Range
   The range of input colors that are mapped to visible colors ``(0.0 - 1.0)``.

So without *Exposure* we will get a linear correction of all color values:

Range` > ``1.0``
   the picture will become darker; with *Range* = ``2.0``,
   a color value of ``1.0`` (the brightest by default) will be clipped to ``0.5``
   (half bright) (*Range* *:* ``2.0``).
Range` < ``1.0``
   the picture will become brighter; with *Range* = ``0.5``,
   a color value of ``0.5`` (half bright by default) will be clipped to ``1.0``
   (the brightest) (*Range* *:* ``0.5``).


Examples
========

With a linear correction every color value will get changed,
which is probably not what we want. *Exposure* brightens the darker pixels,
so that the darker parts of the image won't be changed at all
(*Range* : ``2.0``, *Exposure* : ``0.3``).


.. list-table::

   * - .. figure:: /images/Manual-PartVI-DenseTeapot.jpg
          :width: 320px
          :figwidth: 320px

          An overexposed teapot.

     - .. figure:: /images/Manual-PartVI-DenseTeapot-Range2.jpg
          :width: 320px
          :figwidth: 320px

          Range: 2.0.

   * - .. figure:: /images/Manual-PartVI-DenseTeapot-Range0.5.jpg
          :width: 320px
          :figwidth: 320px

          Range: 0.5.

     - .. figure:: /images/Manual-PartVI-DenseTeapot-Range2.0-Exposure0.3.jpg
          :width: 320px
          :figwidth: 320px

          Range: 2.0, Exposure: 0.3.


Hints
=====

Try to find the best *Range* value,
so that overexposed parts are barely not too bright. Now turn up the *Exposure*
value until the overall brightness of the image is satisfying.
This is especially useful with area lamps.

