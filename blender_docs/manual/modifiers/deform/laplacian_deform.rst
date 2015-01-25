
*************************
Laplacian Deform Modifier
*************************

The Laplacian Deform modifier allows you to pose a mesh while preserving geometric
details of the surface.


The user defines a set of 'anchor' vertices, and then moves some of them around.
The modifier keeps the rest of the anchor vertices in fixed positions, and calculates the best
possible locations of all the remaining vertices to preserve the original geometric details.


This modifier captures the geometric details with the uses of differential coordinates. The
differential coordinates captures the local geometric information how curvature and direction
of a vertex based on its neighbors.


.. note::

   You must define a *Anchors Vertex Group*. Without a vertex group modifier does nothing.


Options
=======

.. figure:: /images/Apinzonf_Diagram_Deform_Modifier_Panel_00.jpg
   :width: 369px


Repeat
   Repetitions iteratively improve the solution found.
   The objective is to find the rotation of the differential
   coordinates preserving the best possible geometric detail.
   Details are retained better if more repetitions are used,
   however it will take longer to calculate.

   .. list-table::

      * - .. figure:: /images/Apinzonf_Deform_Cactus_09.jpg
             :width: 130px

             Original Model

        - .. figure:: /images/Apinzonf_Deform_Cactus_repeat_1.jpg
             :width: 130px

             Repeat: 1

        - .. figure:: /images/Apinzonf_Deform_Cactus_repeat_2.jpg
             :width: 130px

             Repeat: 2

        - .. figure:: /images/Apinzonf_Deform_Cactus_repeat_5.jpg
             :width: 130px

             Repeat: 5

      * - .. figure:: /images/Apinzonf_Deform_Horse_repeat_0.jpg
             :width: 130px

             Original Model

        - .. figure:: /images/Apinzonf_Deform_Horse_repeat_1.jpg
             :width: 130px

             Repeat: 1

        - .. figure:: /images/Apinzonf_Deform_Horse_repeat_2.jpg
             :width: 130px

             Repeat: 2

        - .. figure:: /images/Apinzonf_Deform_Horse_repeat_10.jpg
             :width: 130px

             Repeat: 10


Anchors Vertex Group
   A vertex group name, to define the group of vertices that the user uses to transform the model.
   The weight of each vertex does not affect the behavior of the modifier;
   the method only takes into account vertices with weight greater than ``0``.

Bind
   The *Bind* button is what tells the Laplacian Deform modifier to actually capture the geometry details
   of the object, so that altering the anchors vertices actually alters the shape of the deformed object.

Unbind
   After binding the modifier, you may later decide to make changes to the Anchors Vertex Group.
   To do so you will first need to *Unbind* the modifier before binding again.


Error Messages
==============

Vertex group *group_name* is not valid
   This message is displayed when a user deletes a Vertex Group or when the user changes the
   name of the Vertex Group.
Verts changed from *X* to *Y*
   This message is displayed when a user add or delete verts to the mesh.
Edges changed from *X* to *Y*
   This message is displayed when a user add or delete edges to the mesh.
The system did not find a solution
   This message is displayed if the solver SuperLU did not find a solution for the linear system.

.. note::

   If the mesh is dense, with a number of vertices greater than 100,000,
   then it is possible that the nonlinear optimization system will fail.


History
=======

`Laplacian Surface Editing
<http://igl.ethz.ch/projects/Laplacian-mesh-processing/Laplacian-mesh-editing/laplacian-mesh-editing.pdf>`__
is a method developed by Olga Sorkine and others in 2004.
This method preserves geometric details as much as possible while the user makes editing operations.
This method uses `differential coordinates
<http://igl.ethz.ch/projects/Laplacian-mesh-processing/Laplacian-mesh-editing/diffcoords-editing.pdf>`__
corresponding to the difference between a vector and the weighted average
of its neighbors to represent the local geometric detail of the mesh.


.. figure:: /images/Apinzonf_Diagram_differential_coordinate.jpg
   :width: 369px

   Differential Coordinate


See Also
========

- `Laplacian Surface Editing (Original paper)
  <http://igl.ethz.ch/projects/Laplacian-mesh-processing/Laplacian-mesh-editing/laplacian-mesh-editing.pdf>`__
- `Differential Coordinates for Interactive Mesh Editing
  <http://igl.ethz.ch/projects/Laplacian-mesh-processing/Laplacian-mesh-editing/diffcoords-editing.pdf>`__
