
..    TODO/Review: {{review|}} .


*********
Subdivide
*********

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Panel:    *Mesh Tools* (*Editing* context)
   | Menu:     :menuselection:`Mesh --> Edges --> Subdivide`,
     :menuselection:`Specials --> Subdivide/Subdivide Smooth`
   | Hotkey:   :menuselection:`[W] --> [pad1]/[pad2]`


Subdividing splits selected edges and faces by cutting them in half or more,
adding necessary vertices, and subdividing accordingly the faces involved,
following a few rules, depending on the settings:


- When only one edge of a face is selected (Tri mode),
  triangles are subdivided into two triangles, and quads, into three triangles.
- When two edges of a face are selected:

  - If the face is a triangle, a new edge is created between the two new vertices,
    subdividing the triangle in a triangle and a quad.
  - If the face is a quad, and the edges are neighbors, we have **three** possible behaviors,
    depending on the setting of *Corner Cut Type* (the drop-down menu next to the *Subdivide* button,
    in *Mesh Tools* panel) See below for details.
  - If the face is a quad, and the edges are opposite,
    the quad is just subdivided in two quads by the edge linking the two new vertices.

- When three edges of a face are selected:

  - If the face is a triangle, this means the whole face is selected -
    it is then sub-divided in four smaller triangles.
  - If the face is a quad, first the two opposite edges are subdivided as described above.
    Then, the "middle" edge is subdivided, affecting its new "sub-quad" as described above for only one edge.
- When four edges of a face (a quad) are selected, the face is subdivided into four smaller quads.


Options
=======

These options are available in the *Tool Panel* after running the tool;

Number of Cuts
   Specifies the number of cuts per edge to make.
   By default this is 1, cutting edges in half. A value of 2 will cut it into thirds, and so on.
Smoothness
   Displaces subdivisions to maintain approximate curvature,
   The effect is similar to the way the subdivision modifier might deform the mesh.

.. list-table::

   * - .. figure:: /images/subdivide-smooth-before.jpg
          :width: 200px

          Mesh before subdividing

     - .. figure:: /images/subdivide-smooth-none.jpg
          :width: 200px

          Subdivided with no smoothing

     - .. figure:: /images/subdivide-smooth-after.jpg
          :width: 200px

          Subdivided with smoothing of 1


Quad/Tri Mode
   Forces subdivide to create triangles instead of ngons, simulating old behavior (see examples below)

Corner Cut Type
   This drop-down menu controls the way quads with only two adjacent selected edges are subdivided

   Fan
      the quad is sub-divided in a fan of four triangles,
      the common vertex being the one opposite to the selected edges.
   Innervert
      (i.e. "inner vertex"), The selected edges are sub-divided,
      then an edge is created between the two new vertices, creating a small triangle.
      This edge is also sub-divided,
      and the "inner vertex" thus created is linked by another edge to the one opposite
      to the original selected edges. All this results in a quad sub-divided in a triangle and two quad.
   Path
      First an edge is created between the two opposite ends of the selected edges,
      dividing the quad in two triangles. Then, the same goes for the involved triangle as described above.
   Straight Cut
      Currently non functioning...


.. list-table::

   * - .. figure:: /images/subdivide-twoEdgesQuad-fan2.jpg
          :width: 200px

          Fan cut type

     - .. figure:: /images/subdivide-twoEdgesQuad-innervert.jpg
          :width: 200px

          Innervert cut type

     - .. figure:: /images/subdivide-twoEdgesQuad-path.jpg
          :width: 200px

          Path cut type


Fractal
   Displaces the vertices in random directions after the mesh is subdivided

.. list-table::

   * - .. figure:: /images/subdivide-fractal-before.jpg
          :width: 200px

          Plane before subdivision

     - .. figure:: /images/subdivide-fractal-none.jpg
          :width: 200px

          Regular subdivision

     - .. figure:: /images/subdivide-fractal-after1.jpg
          :width: 200px

          Same mesh with fractal added


Along Normal
   Causes the vertices to move along the their normals, instead of random directions


.. figure:: /images/subdivide-fractal-alongNormal.jpg
   :width: 200px

   Along normal set to 1


Random Seed
   Changes the random seed of the noise function, producing a different result for each seed value.


.. figure:: /images/subdivide-fractal-after2.jpg
   :width: 200px

   Same mesh with a different seed value


Examples
========

Below are several examples illustrating the various possibilities of the *Subdivide*
and *Subdivide Multi* tools. Note the selection after subdivision.


.. figure:: /images/subdivide-before.jpg
   :width: 300px

   The sample mesh.


One Edge
--------

.. list-table::

   * - .. figure:: /images/subdivide-oneEdge.jpg
          :width: 250px

          One Edges

     - .. figure:: /images/subdivide-oneEdge-tri.jpg
          :width: 250px

          Quad/Tri Mode


Two Tri Edges
-------------

.. list-table::

   * - .. figure:: /images/subdivide-twoEdgesTri.jpg
          :width: 250px

     - .. figure:: /images/subdivide-twoEdgesTri-tri.jpg
          :width: 250px

          Quad/Tri Mode


Two Opposite Quad Edges
-----------------------

.. list-table::

   * - .. figure:: /images/subdivide-twoEdgesOpposite.jpg
          :width: 250px

     - .. figure:: /images/subdivide-twoEdgesOpposite-tri.jpg
          :width: 250px

          Quad/Tri Mode


Two Adjacent Quad Edges
-----------------------

.. list-table::

   * - .. figure:: /images/subdivide-twoEdgesQuad-fan2.jpg
          :width: 250px

          Fan cut type

     - .. figure:: /images/subdivide-twoEdgesQuad-fan.jpg
          :width: 250px

          Quad/Tri Mode


.. list-table::

   * - .. figure:: /images/subdivide-twoEdgesQuad-innervert.jpg
          :width: 250px

          Innervert cut type

     - .. figure:: /images/subdivide-twoEdgesQuad-innervert-tri.jpg
          :width: 250px

          Quad/Tri Mode


.. list-table::

   * - .. figure:: /images/subdivide-twoEdgesQuad-path.jpg
          :width: 250px

          Path cut type

     - .. figure:: /images/subdivide-twoEdgesQuad-path-tri.jpg
          :width: 250px

          Quad/Tri Mode


Three Edges
-----------

.. list-table::

   * - .. figure:: /images/subdivide-threeEdges.jpg
          :width: 250px

     - .. figure:: /images/subdivide-threeEdges-tri.jpg
          :width: 250px

          Quad/Tri Mode


Tri
---

.. list-table::

   * - .. figure:: /images/subdivide-threeEdgesTri.jpg
          :width: 250px

     - .. figure:: /images/subdivide-threeEdgesTri-tri.jpg
          :width: 250px

          Quad/Tri Mode


Quad/Four Edges
---------------

.. list-table::

   * - .. figure:: /images/subdivide-fourEdges.jpg
          :width: 250px

     - .. figure:: /images/subdivide-fourEdges-tri.jpg
          :width: 250px

          Quad/Tri Mode


Multicut
--------

.. list-table::

   * - .. figure:: /images/subdivide-tri-multi.jpg
          :width: 250px

          Tri with two cuts

     - .. figure:: /images/subdivide-quad-multi.jpg
          :width: 250px

          Quad with two cuts


