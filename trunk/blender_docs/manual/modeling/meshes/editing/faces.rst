
**********
Face Tools
**********

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Mesh --> Faces`
   | Hotkey:   :kbd:`Ctrl-F`

These are tools that manipulate faces.


Creating Faces
==============

Make Edge/Face
--------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Mesh --> Faces --> Make Edge/Face`
   | Hotkey:   :kbd:`F`


This will create an edge or some faces, depending on your selection.
Also see :doc:`Creating Geometry </modeling/meshes/editing/basics/creating_faces_and_edges>`.

.. list-table::

   * - .. figure:: /images/fill1.png
          :width: 320px

          A closed perimeter of edges.

     - .. figure:: /images/fill2.png
          :width: 320px

          Filled using fill.


.. _modeling-meshes-editing-fill:

Fill
----

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Mesh --> Faces --> Fill/Beautify Fill`
   | Hotkey:   :kbd:`Alt-F`


The *Fill* option will create *triangular* faces from any group of selected edges
or vertices, as long as they form one or more complete perimeters.


.. figure:: /images/fill3.png
   :width: 300px

   Filled using fill.


Note, unlike creating n-gons, fill supports holes.

.. list-table::

   * - .. figure:: /images/fill1_holes.png
          :width: 320px

          A closed perimeter of edges with holes.

     - .. figure:: /images/fill2_holes.png
          :width: 320px

          Filled using fill.


Beauty Fill
-----------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Mesh --> Faces --> Fill/Beautify Fill`
   | Hotkey:   :kbd:`Alt-Shift-F`


*Beautify Fill* works only on selected existing faces.
It rearrange selected triangles to obtain more "balanced" ones (i.e. less long thin triangles).

.. list-table::

   * - .. figure:: /images/mesh_beauty_fill_before.png
          :width: 320px

          Text converted to a mesh.

     - .. figure:: /images/mesh_beauty_fill_after.png
          :width: 320px

          Result of Beauty Fill, :kbd:`Alt-Shift-F`.


.. _modeling-meshes-editing-grid-fill:

Grid Fill
---------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Mesh --> Faces --> Fill/Grid Fill`


*Grid Fill* uses a pair of connected edge-loops to fill in a grid that follows the surrounding geometry.

.. list-table::

   * - .. figure:: /images/mesh_fill_grid_surface_before.png
          :width: 320px

          Input.

     - .. figure:: /images/mesh_fill_grid_surface_after.png
          :width: 320px

          Grid Fill Result.


Triangulate Faces
-----------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Mesh --> Faces --> Triangulate Faces`
   | Hotkey:   :kbd:`Ctrl-T`


As its name intimates, this tool converts each selected quadrangle into two triangles.
Remember that quads are just a set of two triangles.


.. _mesh-faces-tristoquads:

Triangles to Quads
------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Mesh --> Faces --> Triangles to Quads`
   | Hotkey:   :kbd:`Alt-J`


This tool converts the selected triangles into quads by taking adjacent tris and
removes the shared edge to create a quad, based on a threshold.
This tool can be performed on a selection of multiple triangles.

This same action can be done on a selection of two tris,
by selecting them and using the shortcut :kbd:`F`, to create a face, or by selecting the
shared edge and dissolving it with the shortcut :kbd:`X` :menuselection:`--> Dissolve`.

To create a quad, this tool needs at least two adjacent triangles.
If you have an even number of selected triangles,
it is also possible not to obtain only quads. In fact,
this tool tries to create "squarishest" quads as possible from the given triangles,
which means some triangles could remain.

.. list-table::

   * - .. figure:: /images/fill5.png
          :width: 320px

          Before converting tris to quads.

     - .. figure:: /images/quadtotris.png
          :width: 320px

          After converting tris to quads.

All the menu entries and hotkey use the settings defined in the *Mesh Tools* panel:

Max Angle
   This values, between (0 to 180), controls the threshold for this tool to work on adjacent triangles.
   With a threshold of 0.0,
   it will only join adjacent triangles that form a perfect rectangle
   (i.e. right-angled triangles sharing their hypotenuses).
   Larger values are required for triangles with a shared edge that is small,
   relative to the size of the other edges of the triangles.
Compare UVs
   When enabled, it will prevent union of triangles that are not also adjacent in the active UV map.
Compare Vertex Color
   When enabled, it will prevent union of triangles that have no matching vertex color.
Compare Sharp
   When enabled, it will prevent union of triangles that share a edge marked as sharp.
Compare Materials
   When enabled, it will prevent union of triangles that do not have the same material assigned.


Solidify
========

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Mesh --> Faces --> Solidify`
   | Hotkey:   :kbd:`Ctrl-F` :menuselection:`--> Solidify`


This takes a selection of faces and solidifies them by extruding them
uniformly to give volume to a :term:`non-manifold` surface.
This is also available as a :doc:`Modifier </modeling/modifiers/generate/solidify>`.
After using the tool, you can set the offset distance in the Operator Panel.

Thickness
   Amount to offset the newly created surface.
   Positive values offset the surface inward relative to the normals direction.
   Negative values offset outward.

.. list-table::

   * - .. figure:: /images/solidify-before.png
          :width: 200px

          Mesh before solidify operation.

     - .. figure:: /images/solidify-after.png
          :width: 200px

          Solidify with a positive thickness.

     - .. figure:: /images/solidify-after2.png
          :width: 200px

          Solidify with a negative thickness.


Wireframe
=========

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Mesh --> Faces --> Wire frame`

The wireframe tool makes a wireframe from faces,
similar to the :doc:`/modeling/modifiers/generate/wireframe`.


Rotate Edges
============

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Mesh --> Faces --> Rotate Edge CW`


This command functions the same edge rotation in edge mode.

It works on the shared edge between two faces and rotates that edge if the edge was selected.

.. list-table::

   * - .. figure:: /images/rotateedgefacemode1.png
          :width: 320px

          Two Faces Selected.

     - .. figure:: /images/rotateedgefacemode2.png
          :width: 320px

          Full Render.

See :ref:`Rotate Edge <modeling-meshes-editing-edges-rotate>` for more information.


Rotate & Reverse
================

Rotate UVs
   Todo.
Reverse UVs
   Todo.
Rotate Colors
   Todo.
Reverse Colors
   Todo.


Normals
-------

See :ref:`Editing Normals <modeling-meshes-editing-normals-editing>` for more information.
