
*********
Smoothing
*********

Mesh Shading
============

.. list-table::
   Example mesh rendered flat, smoothed using edge split, and using Subdivision Surface.
   Note how edges are rendered differently.
   `Sample blend-file <https://wiki.blender.org/index.php/:File:25-manual-meshsmooth-example.blend>`__.

   * - .. figure:: /images/meshsmooth-example-2rrflat.jpg
          :width: 200px

     - .. figure:: /images/meshsmooth-example-05edgesplit.jpg
          :width: 200px

     - .. figure:: /images/meshsmooth-example-10edgeloops.jpg
          :width: 200px


As seen in the previous sections, polygons are central to Blender.
Most objects are represented by polygons and truly curved objects
are often approximated by polygon meshes. When rendering images,
you may notice that these polygons appear as a series of small, flat faces.

Sometimes this is a desirable effect, but usually we want our objects to look nice and smooth.
This section shows you how to visually smooth an object, and how to apply the *Auto Smooth*
filter to quickly and easily combine smooth and faceted polygons in the same object.

The last section on this page shows possibilities for smoothing a mesh's geometry,
not only its appearance.


Smooth Shading
==============

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Panel:     :menuselection:`Tool Shelf --> Tools --> Edit --> Shading`

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:     :menuselection:`Tool Shelf --> Shading/ UVs --> Shading`
   | Menu:     :menuselection:`Mesh --> Faces --> Shade Smooth / Shade Flat`
   | Hotkey:   :kbd:`Ctrl-F` :menuselection:`--> Shade Smooth / Shade Flat`

.. list-table::
   Same mesh smooth shaded.

   * - .. figure:: /images/meshsmooth-shading.jpg
          :width: 80px

     - .. figure:: /images/meshsmooth-example-03rrsmooth.jpg
          :width: 220px


The easiest way is to set an entire object as smooth or faceted by selecting a mesh object,
and in *Object Mode*, click *Smooth* in the *Tool Shelf*.
This button does not stay pressed;
it forces the assignment of the "smoothing" attribute to each face in the mesh,
including when you add or delete geometry.

Notice that the outline of the object is still strongly faceted.
Activating the smoothing features does not actually modify the object's geometry;
it changes the way the shading is calculated across the surfaces,
giving the illusion of a smooth surface. Click the *Flat* button in the
*Tool Shelf* 's *Shading panel* to revert the shading back to that shown in
the first image above.


Smoothing parts of a mesh
-------------------------

Alternatively, you can choose which edges to smooth by entering *Edit Mode*,
then selecting some faces and clicking the *Smooth* button.
The selected edges are marked in yellow.

When the mesh is in *Edit Mode*,
only the selected edges will receive the "smoothing" attribute. You can set edges as flat
(removing the "smoothing" attribute)
in the same way by selecting edges and clicking the *Flat* button.


.. _auto-smooth:

Auto Smooth
===========

.. admonition:: Reference
   :class: refbox

   | Panel:    :menuselection:`Properties editor --> Object Data`

.. list-table:: Example mesh with *Auto Smooth* enabled.

   * - .. figure:: /images/meshsmooth-example-04rrautosmooth.jpg
          :width: 180px

     - .. figure:: /images/meshsmooth-autosmooth.png
          :width: 180px


It can be difficult to create certain combinations of smooth and solid faces using the above
techniques alone. Though there are workarounds
(such as splitting off sets of faces by selecting them and pressing :kbd:`Y`),
there is an easier way to combine smooth and solid faces, by using *Auto Smooth*.
Auto smoothing can be enabled in the mesh tab in the Properties Editor in the :ref:`mesh-data-normals` panel.


Edge Split Modifier
===================

With the :doc:`Edge Split Modifier </modeling/modifiers/generate/edge_split>`  a result
similar to *Auto Smooth* can be achieved with the ability to choose which edges should be split,
based on angle. Those Angles are marked as sharp.

.. list-table::

   * - .. figure:: /images/meshsmooth-example-05edgesplit.jpg
          :width: 200px

          Edge Split modifier enabled, based on angle.

     - .. figure:: /images/meshsmooth-example-07marksharp.jpg
          :width: 200px

          Edges marked as sharp.

     - .. figure:: /images/meshsmooth-example-06marksharp.jpg
          :width: 200px

          Resulting render with sharp edge weighting.


Smoothing the mesh geometry
===========================

The above techniques do not alter the mesh itself, only the way it is displayed and rendered.
Instead of just making the mesh look like a smooth surface,
you can also physically smooth the geometry of the mesh with these tools:


Mesh editing tools
------------------

You can apply one of the following in *Edit Mode*:

:doc:`Smooth </modeling/meshes/editing/transform/smooth>`
   This relaxes selected components, resulting in a smoother mesh.
:doc:`Laplacian Smooth </modeling/meshes/editing/transform/smooth>`
   Smooths geometry by offers controls for better preserving larger details.
:doc:`Subdivide Smooth </modeling/meshes/editing/subdividing/subdivide>`
   Adjusting the *smooth* parameter after using the *subdivide*
   tool results in a more organic shape. This is similar to using the subdivide modifier.
:doc:`Bevel </modeling/meshes/editing/introduction>`
   This Bevels selected edged, causing sharp edges to be flattened.


Modifiers
---------

Alternatively,
you can smooth the mesh non-destructively with one or several of the following modifiers:

:doc:`Smooth Modifier </modeling/modifiers/deform/smooth>`
   Works like the *Smooth* tool in *Edit Mode*;
   can be applied to specific parts of the mesh using vertex groups.
:doc:`Laplactian Smooth Modifier </modeling/modifiers/deform/laplacian_smooth>`
   Works like the *Laplacian Smooth* tool in *Edit Mode*;
   can be applied to specific parts of the mesh using vertex groups.
:doc:`Bevel Modifier </modeling/modifiers/generate/bevel>`
   Works like the *Bevel* tool in *Edit Mode*;
   Bevel can be set to work on an angle threshold, or on edge weight values.
:doc:`Subdivision Surface Modifier </modeling/modifiers/generate/subsurf>`
   Catmull-Clark subdivision produces smooth results. Sharp edges can be defined with
   :ref:`subdivision creases <modifiers-generate-subsurf-creases>`
   or by setting certain edges to "sharp" and adding an
   :doc:`Edge Split Modifier </modeling/modifiers/generate/edge_split>`
   (set to *From Marked As Sharp*) before the *Subdivision Surface* modifier.

.. list-table::
   Example mesh with *Auto Smooth* enabled.

   * - .. figure:: /images/meshsmooth-example-08subsurf.jpg
          :width: 320px

          Subdivision Surface.

     - .. figure:: /images/meshsmooth-example-09edgecrease.jpg
          :width: 320px

          Using creased edges, and resulting subdivision artifacts.

   * - .. figure:: /images/meshsmooth-example-10edgeloops.jpg
          :width: 320px

          Extra edge loops added.

     - .. figure:: /images/meshsmooth-example-11edgeloops.jpg
          :width: 320px

          3D View showing creased edges (pink) and added edges loops (yellow).
