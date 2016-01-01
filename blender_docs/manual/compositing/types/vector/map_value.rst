
**************
Map Value Node
**************

.. figure:: /images/compositing_nodes_mapvalue.png
   :align: right
   :width: 150px

   Map Value Node

Map Value node is used to scale, offset and clamp values
(value refers to each vector in the set). The formula for how this node works is:

Offs
   will add a number to the input value
Size
   will scale (multiply) that value by a number
Min/Max
   you can set the minimum and maximum numbers to clamp (cut off) the value too.
   *Min* and *Max* must be individually enabled by :kbd:`LMB` clicking on the label for them to clamp.
   :kbd:`Shift-LMB` on the value to change it.

   - If *Min* is enabled and the value is less than *Min*, set the output value to *Min*.
   - If *Max* is enabled and the input value is greater than *Max*, set the output value to *Max*.

This is particularly useful in achieving a depth-of-field effect,
where you can use the Map Value node to map a Z value
(which can be 20 or 30 or even 500 depending on the scene) to to range between 0-1,
suitable for connecting to a Blur node.


Using Map Value to Multiply values
==================================

You can also use the map value node to multiply values to achieve an output number that you
desire. In the mini-map to the right, the Time node outputs a value between 0.0 and 1.
00 evenly scaled over 30 frames. The *first* Map Value node multiplies the input by 2,
resulting in an output value that scales from 0.0 to 2.0 over 30 frames.
The *second* Map Value node subtracts 1 from the input,
giving working values between -1.00 and 1.0, and multiplies that by 150,
resulting in an output value between -150 and 150 over a 30-frame sequence.


.. figure:: /images/Compositing-Map_multiply.jpg

   Using Map Value to multiply
