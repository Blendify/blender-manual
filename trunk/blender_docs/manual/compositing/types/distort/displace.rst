
*************
Displace Node
*************

.. figure:: /images/compositing_nodes_displace.png
   :align: right
   :width: 150px

   Displace Node.

This node displaces the pixel position based on an input vector.

Image
   Target input.
Vector
   Input of the displacement map.
Scale X, Y
   Separate scaling of the vector input in X- and Y-direction.
   Acting as multipliers by increasing or decreasing the strength of the 
   displacement along their respective axes.

If the a color output is implicitly converted in the vector input, the first channel (red) value determines displacement along X axis. 
The second channel (green) the displacement along Y axis.
If the input is a greyscale image, where both the channel values are equal,
the input image will be displaced equally in both X and Y directions.

.. hint::

   This node could be used to model phenomena, like hot air distortion, 
   refractions of uneven glass or for surreal video effects.
