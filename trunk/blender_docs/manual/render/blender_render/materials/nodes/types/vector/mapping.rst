
************
Mapping Node
************

.. figure:: /images/material-vector-node-mapping.jpg

   Mapping node.


Essentially mapping node allows the user to modify a mapping of system of 3D-coordinates.
Typically used for modifying texture coordinates.

Mapping can be rotated and clamped if desired.


Inputs
------

Vector
   The input vector (3D-direction in relation to the camera) of some the coordinates' mapping.
   The value can be provided by another node or set manually.


Outputs
=======

Vector
   The output vector, combined by the node.


Controls
========

The controls of the node have been ordered in X, Y, Z order.
If you want to use the clamping options, try enabling Min and Max.

Vector type selector
   Type of vector that the mapping transforms.

   Texture
      Transform a texture by inverse mapping the texture coordinates.
   Point
      Transform a point.
   Vector
      Transform a direction vector.
   Normal
      Transform a normal vector with unit length.

Location
   Transform position vector.
Rotation
   Transform rotation vector.
Scale
   Transform scale vector.

Min
   Minimum clipping value.
Max
   Maximum clipping value.

