
**********
Face Tools
**********

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

   * - .. figure:: /images/Fill1.jpg
          :width: 300px

          A closed perimeter of edges.

     - .. figure:: /images/Fill2.jpg
          :width: 300px

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



.. figure:: /images/Fill3.jpg
   :width: 300px

   Filled using fill.


note, unlike creating n-gons, fill supports holes.

.. list-table::

   * - .. figure:: /images/Fill1_holes.jpg
          :width: 300px

          A closed perimeter of edges with holes.

     - .. figure:: /images/Fill2_holes.jpg
          :width: 300px

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

   * - .. figure:: /images/mesh_beauty_fill_before.jpg
          :width: 300px

          Text converted to a mesh.

     - .. figure:: /images/mesh_beauty_fill_after.jpg
          :width: 300px

          Result of Beauty Fill, :kbd:`Alt-Shift-F`.


.. _modeling-meshes-editing-grid_fill:

Grid Fill
---------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Mesh --> Faces --> Fill/Grid Fill`


*Grid Fill* uses a pair of connected edge-loops to fill in a grid that follows the surrounding geometry.

.. list-table::

   * - .. figure:: /images/mesh_fill_grid_surface_before.jpg
          :width: 300px

          Input.

     - .. figure:: /images/mesh_fill_grid_surface_after.jpg
          :width: 300px

          Grid Fill Result.


Convert Quads to Triangles
--------------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Mesh --> Faces --> Convert Quads to Triangles` or
     :menuselection:`Face Specials --> Triangulate`
   | Hotkey:   :kbd:`Ctrl-T`


As its name intimates, this tool converts each selected quadrangle into two triangles.
Remember that quads are just a set of two triangles.


Convert Triangles to Quads
--------------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    Mesh Tools
   | Menu:     :menuselection:`Mesh --> Faces --> Convert Triangles to Quads`
   | Hotkey:   :kbd:`Alt-J`


This tool converts the selected triangles into quads by taking adjacent tris and removes the
shared edge to create a quad, based on a threshold.
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

   * - .. figure:: /images/Fill5.jpg
          :width: 300px

          Before converting tris to quads.

     - .. figure:: /images/QuadToTris.jpg
          :width: 300px

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
   Note that this seems to be the only option working...
Compare Vcol
   When enabled, it will prevent union of triangles that have no matching vertex color.
   I'm not sure how this option works - or even if it really works...
Compare Sharp
   When enabled, it will prevent union of triangles that share a "sharp" edge.
   I'm not sure either if this option works, and what is the "sharp" criteria - neither the *Sharp*
   flag nor the angle between triangles seem to have an influence here...
Compare Materials
   When enabled, it will prevent union of triangles that do not use the same material index.
   This option does not seem to work neither...


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
After using the tool, you can set the offset distance in the Tool Palette.

Thickness
   Amount to offset the newly created surface.
   Positive values offset the surface inward relative to the normals.
   Negative values offset outward.

.. list-table::

   * - .. figure:: /images/solidify-before.jpg
          :width: 200px

          Mesh before solidify operation.

     - .. figure:: /images/solidify-after.jpg
          :width: 200px

          Solidify with a positive thickness.

     - .. figure:: /images/solidify-after2.jpg
          :width: 200px

          Solidify with a negative thickness.


Rotate Edges
============

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Mesh --> Faces --> Rotate Edge CW`


This command functions the same edge rotation in edge mode.

It works on the shared edge between two faces and rotates that edge if the edge was selected.

.. list-table::

   * - .. figure:: /images/RotateEdgeFaceMode1.jpg
          :width: 300px

          Two Faces Selected.

     - .. figure:: /images/RotateEdgeFaceMode2.jpg
          :width: 300px

          Full Render.

See :ref:`Rotate Edge <modeling-meshes-editing-edges_rotate>` for more information.

Normals
-------

See :ref:`Editing Normals <modeling-meshes-editing-normals_editing>` for more information.
