.. Editors Note: This page gets copied into :doc:`</render/cycles/nodes/types/color/bright_contrast>`

********************
Bright/Contrast Node
********************

.. figure:: /images/compositing_nodes_brightcontrast.png
   :align: right
   :width: 150px

   Bright/Contrast Node.


Inputs
======

Image
   Standard image input.
Bright
   A multiplier-type factor by which to increase the overall brightness
   of the image. Use a negative number to darken an image.
Contrast
   A scaling type factor by which to make brighter pixels brighter, but keeping the darker pixels dark.
   Higher values make details stand out. Use a negative number to decrease the overall contrast in the image.

Properties
==========

This node has no properties.

Outputs
=======

Image
   Standard image output.


Notes
=====

.. figure:: /images/nodes-brightclamp.jpg
   :width: 320px


It is possible that this node will put out a value set that has values beyond the normal range,
i. e. values greater than one and less than zero.
If you will be using the output to mix with other images in the normal range,
you should clamp the values using the Map Value node (with the Min and Max enabled),
or put through a ColorRamp node (with all normal defaults).

Either of these nodes will scale the values back to normal range. In the example image,
we want to amp up the specular pass.
The bottom thread shows what happens if we do not clamp the values;
the specular pass has valued much less than one in the dark areas;
when added to the medium gray, it makes black. Passing the brightened image through either the
Map Value or the ColorRamp produces the desired effect.

.. figure:: /images/nodes-brightcontrast.jpg
   :width: 320px

   A basic example
