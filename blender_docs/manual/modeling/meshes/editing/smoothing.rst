.. (todo remove) full file

*********
Smoothing
*********

Edge Split Modifier
===================

With the :doc:`Edge Split Modifier </modeling/modifiers/generate/edge_split>` a result
similar to *Auto Smooth* can be achieved with the ability to choose which edges should be split,
based on angle. Those Angles are marked as sharp.

.. list-table::

   * - .. figure:: /images/modeling_meshes_editing_smoothing_example-04-edge-split.png
          :width: 200px

          Edge Split Modifier enabled, based on angle.

     - .. figure:: /images/modeling_meshes_editing_smoothing_example-06-mark-sharp.png
          :width: 200px

          Edges marked as sharp.

     - .. figure:: /images/modeling_meshes_editing_smoothing_example-05-mark-sharp.png
          :width: 200px

          Resulting render with sharp edge weighting.


Smoothing the Mesh Geometry
===========================

The above techniques do not alter the mesh itself, only the way it is displayed and rendered.
Instead of just making the mesh look like a smooth surface,
you can also physically smooth the geometry of the mesh with these tools:


Mesh Editing Tools
------------------

You can apply one of the following in *Edit Mode*:

:doc:`Smooth </modeling/meshes/editing/transform/smooth>`
   This relaxes selected components, resulting in a smoother mesh.
:doc:`Laplacian Smooth </modeling/meshes/editing/transform/smooth>`
   Smooths geometry by offers controls for better preserving larger details.
:doc:`Subdivide Smooth </modeling/meshes/editing/subdividing/subdivide>`
   Adjusting the *smooth* parameter after using the *subdivide*
   tool results in a more organic shape. This is similar to using the Subdivision Surface Modifier.
:doc:`Bevel </modeling/meshes/editing/introduction>`
   This Bevels selected edges, causing sharp edges to be flattened.


Modifiers
---------

Alternatively,
you can smooth the mesh non-destructively with one or several of the following modifiers:

:doc:`Smooth Modifier </modeling/modifiers/deform/smooth>`
   Works like the *Smooth* tool in *Edit Mode*;
   can be applied to specific parts of the mesh using vertex groups.
:doc:`Laplacian Smooth Modifier </modeling/modifiers/deform/laplacian_smooth>`
   Works like the *Laplacian Smooth* tool in *Edit Mode*;
   can be applied to specific parts of the mesh using vertex groups.
:doc:`Bevel Modifier </modeling/modifiers/generate/bevel>`
   Works like the *Bevel* tool in *Edit Mode*;
   Bevel can be set to work on an angle threshold, or on edge weight values.
:doc:`Subdivision Surface Modifier </modeling/modifiers/generate/subsurf>`
   Catmull-Clark subdivision produces smooth results. Sharp edges can be defined with
   :ref:`subdivision creases <modifiers-generate-subsurf-creases>`
   or by setting certain edges to "sharp" and
   adding an :doc:`Edge Split Modifier </modeling/modifiers/generate/edge_split>`
   (set to *From Marked As Sharp*) before the Subdivision Surface Modifier.

.. list-table:: Example mesh with *Auto Smooth* enabled.

   * - .. figure:: /images/modeling_meshes_editing_smoothing_example-07-subsurf.png
          :width: 320px

          Subdivision Surface.

     - .. figure:: /images/modeling_meshes_editing_smoothing_example-08-edge-crease.png
          :width: 320px

          Using creased edges, and resulting subdivision artifacts.

   * - .. figure:: /images/modeling_meshes_editing_smoothing_example-09-edge-loops.png
          :width: 320px

          Extra edge loops added.

     - .. figure:: /images/modeling_meshes_editing_smoothing_example-10-edge-loops.png
          :width: 320px

          3D View showing creased edges (pink) and added edges loops (yellow).
