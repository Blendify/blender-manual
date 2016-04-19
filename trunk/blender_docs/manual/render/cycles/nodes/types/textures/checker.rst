
***************
Checker Texture
***************

.. figure:: /images/cycles_nodes_tex_checker.jpg
   :width: 200px

   Default Checker texture


Checkerboard texture.

Vector input
   Texture coordinate to sample texture at;
   defaults to Generated texture coordinates if the socket is left unconnected.
Color1/2 input
   Color of the checkers.
Scale input
   Overall texture scale. The scale is a factor of the bounding box of the face divided by the scale.
   For example, a scale of 15 will result in 15 alternate patterns over the overall UV bounding box.
   Different patterns could be achieved using other nodes to give different input patterns to this socket.
   For example, using the Math Node.
Color output
   Texture color output.
Fac output
   Checker 1 mask (1 = Checker 1).
