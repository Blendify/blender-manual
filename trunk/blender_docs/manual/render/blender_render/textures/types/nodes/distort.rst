
..    TODO/Review: {{review|text=examples}} .


*************
Distort Nodes
*************

These nodes allow you to change the mapping of a texture.

Rotate
======

.. figure:: /images/texture-nodes-rotate.jpg

   Rotate node


Rotate the texture coordinates of an image or texture.

Turns
   The number of times to rotate the coordinates 360 degrees about the specified axis.
Axis
   The axis to rotate the mapping about


Translate
=========

.. figure:: /images/texture-nodes-translate.jpg

   Translate node


Translate the texture coordinates of an image or texture.

Offset
   The amount to offset the coordinates in each of the 3 axes.


Scale
=====

.. figure:: /images/texture-nodes-scale.jpg

   Scale node


Scale the texture coordinates of an image or texture.

Scale
   The amount to scale the coordinates in each of the 3 axes.


At
==

.. figure:: /images/texture-nodes-at.jpg

   At node


Returns the color of a texture at the specified coordinates.
If the coordinates are not spatially varying, the node will return a single color.

Coordinates
   The point at which to sample the color. For images, the space is between -1 and 1 for x and y.
