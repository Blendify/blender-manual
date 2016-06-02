
************
Vector Nodes
************

Vector nodes manipulate information about how light interacts with the material,
multiplying vector sets, and other wonderful things which can become quite advanced.
Even if you don't have experience with vector maths, you'll find these nodes to be very useful.

Vectors, in general, are two or three element values, for example,
surface normals are vectors. Vectors are also important for calculating shading.


Normal Node
===========

.. figure:: /images/material-vector-node-normal.jpg

   Normal node.


The Normal node generates a normal vector and a dot product.
Click and Drag on the sphere to set the direction of the normal.

This node can be used to input a new normal vector into the mix. For example,
use this node as an input to a Color Mix node.
Use an Image input as the other input to the Mixer.
The resulting colorized output can be easily varied by moving the light source
(click and dragging the sphere).

The (face) normal is the direction of the face in relation to the camera.
You can use it to do the following:

- Use this node to create a fixed direction --> output *Normal*.
- Calcuate the *Dot* -Product with the *Normal* -Input. The *Dot* -Product is a scalar value (a number).

  - If two normals are pointing in the same direction the *Dot* -Product is 1.
  - If they are perpendicular the *Dot* -Product is zero (0).
  - If they are antiparallel (facing directly away from each other) the *Dot* -Product is -1.
    *And you never thought you would use the Vector Calculus class you took in college - shame on you!*

So now we can do all sorts of things that depends on the viewing angle
(like electron scanning microscope effect).
And the best thing about it is that you can manipulate the direction interactively.


.. note:: One caveat

   The normal is evaluated per face, not per pixel. So you need enough faces, or else you don't get a smooth result


Inputs
------

Normal
   3D-direction of the face in relation to the camera. The value can be provided by another node or set manually.


Outputs
-------

Normal
   Fixed 3D-direction, combined by the node.
Dot
   Scalar value (a number), combined by the node.


Controls
--------

Interactive node preview
   Allows click and drag on the sphere in node center to set the direction of the normal.


Mapping Node
============

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
-------

Vector
   The output vector, combined by the node.


Controls
--------

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


Vector Curves
=============

.. figure:: /images/material-vector-node-curves.jpg

   Vector Curves node.


The Vector Curves node maps an input vector X, Y, and Z components to a diagonal curve.
Use this node to remap a vector value using curve controls.

.. seealso::

   - Read more about using the :ref:`ui-curve_widget`.


Inputs
------

Fac:
   Factor. The degree of node's influence in node tree.
   The value can be provided by another node or set manually.
Vector
   The input vector (3D-direction in relation to the camera).
   The value can be provided by another node or set manually.


Outputs
-------

Vector
   The output vector, combined by the node.
