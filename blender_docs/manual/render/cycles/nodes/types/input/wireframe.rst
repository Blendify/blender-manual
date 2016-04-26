
*********
Wireframe
*********

.. figure:: /images/cycles_nodes_wireframe.png
   :align: right

   Wireframe Node.

The *Wireframe* node is used to retrieve the edges of an object as it appears to cycles.
As meshes are triangulated before being processed by cycles,
topology will always appear triangulated when viewed with the *Wireframe node*.


Options
=======

Pixel Size
   When enabled, the size of edge lines are set in screen space.
Size
   Thickness of the edge lines.


Output
======

Fac
   Black and white mask showing white lines representing edges according to the object's :term:`topology`.
