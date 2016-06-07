
***********
Normal Node
***********

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
======

Normal
   3D-direction of the face in relation to the camera. The value can be provided by another node or set manually.


Outputs
=======

Normal
   Fixed 3D-direction, combined by the node.
Dot
   Scalar value (a number), combined by the node.


Controls
========

Interactive node preview
   Allows click and drag on the sphere in node center to set the direction of the normal.

