
***************
Bright/Contrast
***************

.. figure:: /images/Manual-Nodes-BrightContrast.jpg
   :width: 320px

   A basic example


Bright
   A multiplier-type factor by which to increase the overall brightness
   of the image. Use a negative number to darken an image.
Contrast
   A scaling type factor by which to make brighter pixels brighter but keeping the darker pixels dark.
   Higher values make details stand out. Use a negative number to decrease the overall contrast in the image.


Notes
=====

.. figure:: /images/Manual-Nodes-BrightClamp.jpg
   :width: 320px


It is possible that this node will put out a value set that has values beyond normal range, i.
e. values > 1 or < 0.
If you will be using the output to mix with other images in the normal range,
you should clamp the values using the Map Value node (with the Min and Max enabled),
or put through a ColorRamp node (with all normal defaults).

Either of these nodes will scale the values back to normal range. In the example image,
we want to amp up the specular pass.
The bottom thread shows what happens if we do not clamp the values;
the specular pass has valued much less than 1 in the dark areas;
when added to the medium gray, it makes black. Passing the brightened image through either the
Map Value or the ColorRamp produces the desired effect.

