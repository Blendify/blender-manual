
********************
Triangulate Modifier
********************

The Triangulate Modifier converts all faces in a mesh (whether it be quads or N-gons) to triangular faces.
This modifier does the exact same function as the triangulate function :kbd:`Ctrl-T` in Edit Mode.

.. list-table::

   * - .. figure:: /images/triangulate-before.png
          :width: 320px

          Mesh before Triangulate Modifier.

     - .. figure:: /images/triangulate-after.png
          :width: 320px

          Mesh after Triangulate Modifier.


Options
=======

Quad Method
   Beauty
      Split the quads in nice triangles, slower method.

   Fixed
      Split the quads on the 1st and 3rd vertices.

   Fixed Alternate
      Split the quads on the 2nd and 4th vertices.

   Shortest Diagonal
      Split the quads based on the distance between the vertices.

Ng-on Method
   Beauty
      Arrange the new triangles nicely, slower method.
   Scanfill
      Split the n-gons using a scanfill algorithm.
