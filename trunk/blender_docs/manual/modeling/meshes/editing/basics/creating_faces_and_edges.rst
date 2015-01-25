
..    TODO/Review: {{review|}} .


**************
Make Edge/Face
**************

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     Mesh → Faces → Make Face/Edge
   | Hotkey:   :kbd:`F`


This is a context sensitive tool which creates geometry by filling in the selection.
When only 2 vertices are selected it will create an edge, otherwise it will create faces.


The typical use case is to select vertices and press :kbd:`F`,
however Blender also supports creating faces from different selections to help quickly build
up geometry.


The following methods are used automatically depending on the context.


----

Isolated vertices.

.. list-table::

   * - .. figure:: /images/bmesh_make_face_verts_simple_before.jpg
          :width: 200px

          Before

     - .. figure:: /images/bmesh_make_face_verts_simple_after.jpg
          :width: 200px

          After


----

Isolated edges

.. list-table::

   * - .. figure:: /images/bmesh_make_face_edges_simple_before.jpg
          :width: 200px

          Before

     - .. figure:: /images/bmesh_make_face_edges_simple_after.jpg
          :width: 200px

          After


----

N-gon from edges: *When there are many edges Blender will make an ngon,
note that this doesn't support holes, to support holes you need to use the*
:ref:`modeling-meshes-editing-fill` *Faces tool.*

.. list-table::

   * - .. figure:: /images/bmesh_make_face_edges_ngon_before.jpg
          :width: 200px

          Before

     - .. figure:: /images/bmesh_make_face_edges_ngon_simple_after.jpg
          :width: 200px

          After


----

Mixed vertices/edges: *existing edges are used to make the face as well as an extra vertex.*

.. list-table::

   * - .. figure:: /images/bmesh_make_face_mix_simple_before.jpg
          :width: 200px

          Before

     - .. figure:: /images/bmesh_make_face_mix_simple_after.jpg
          :width: 200px

          After


----

Edge-Net: *sometimes you may have many connected edges without interior faces.*

.. list-table::

   * - .. figure:: /images/bmesh_make_face_net_before.jpg
          :width: 200px

          Before

     - .. figure:: /images/bmesh_make_face_net_after.jpg
          :width: 200px

          After


----

Point Cloud: *when there are many isolated vertices,
Blender will calculate the edges for an n-gon.*

.. list-table::

   * - .. figure:: /images/bmesh_make_face_cloud_before.jpg
          :width: 200px

          Before

     - .. figure:: /images/bmesh_make_face_cloud_after.jpg
          :width: 200px

          After


Single Vertex Selection: *with a single vertex selected on a boundary,
the face will be created along the boundary,
this saves manually selecting the other 2 vertices.
Notice this tool can run multiple times to continue creating faces.''*

.. figure:: /images/Mesh_face_create_boundary.jpg

Further Reading
^^^^^^^^^^^^^^^

For other ways to create faces see:

- :doc:`Fill </modeling/meshes/editing/faces#fill>`
- :doc:`Grid Fill </modeling/meshes/editing/faces#grid_fill>`
- :doc:`Bridge Edge Loops </modeling/meshes/editing/edges#bridge_edge_loops>`
