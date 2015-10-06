
..    TODO/Review: {{review|partial=X|text= expand advanced selection tools|im=examples}} .

******************
Advanced Selection
******************

The select menu in edit mode contains additional tool for selecting components:

Mirror
   Select mesh items at the mirrored location.
Linked
   Selects all components that are connected to the current selection. (see `Select Linked`_)
Random
   Selects a random group of vertices, edges, or faces, based on a percentage value.
Checker Deselect
   Deselect alternating faces, to create a checker like pattern.
Select Every N Number of Vertices
   Selects vertices that are multiples of N.
Sharp Edges
   This tool selects all edges between two faces forming an angle greater than the angle option,
   Where an increasing angle selects sharper edges.
Linked Flat Faces (:kbd:`Ctrl-Shift-Alt-F`)
   Select connected faces based on a threshold of the angle between them.
   This is useful for selecting faces that are planar.
Non Manifold (:kbd:`Ctrl-Shift-Alt-M`)
   Selects the :term:`non-manifold` geometry of a mesh.
   This entry is available when editing a mesh, in Vertex and Edge selection modes only.
   The *redo* panel provides several selection options:

   Extend
      Lets you extend the current selection.
   Wire
      Selects all the edges that don't belong to any face.
   Boundaries
      Selects edges in boundaries and holes.
   Multiple Faces
      Selects edges that belong to 3 or more faces.
   Non Contiguous
      Selects edges that belong to exactly 2 faces with opposite normals.
   Vertices
      Selects vertices that belong to *wire* and *multiple face* edges, isolated vertices,
      and vertices that belong to non adjoining faces.

Interior Faces
   Select faces where all edges have more than 2 faces.
Side of Active
   Selects all data on the mesh in a single axis
Select Faces by Sides
   Selects all faces that have a specified number of edges.
Loose Geometry
   Select all vertices or edges that do not form part of a face.


Select Linked
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Select --> Linked`
   | Hotkey:   :kbd:`Ctrl-L`

Select parts of a mesh connected to already selected elements.
This is often useful when a mesh has disconnected, overlapping parts,
where isolating it any other way would be tedious.

To give more control, you can also enable delimiters so the selection is
constrained by seans, sharp-edges, materials or UV islands.

.. hint::

   You can also select linked data directly under the cursor,
   using the :kbd:`L` shortcut to select or :kbd:`Shift-L` to deselect linked.

   This works differently in that it uses the geometry under the cursor instead of the existing selection.


Select Similar
==============

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Select --> Similar...`
   | Hotkey:   :kbd:`Shift-G`


Select components that have similar attributes to the ones selected,
based on a threshold that can be set in tool properties after activating the tool.
Tool options change depending on the selection mode:

Vertex Selection Mode:
   Normal
      Selects all vertices that have normals pointing in similar directions to those currently selected.
   Amount of Adjacent Faces
      Selects all vertices that have the same number of faces connected to them.
   Vertex Groups
      Selects all vertices in the same :doc:`vertex group </modeling/meshes/vertex_groups/index>`.
   Amount of connecting edges
      Selects all vertices that have the same number of edges connected to them.


Edge Selection Mode:
   Length
      Selects all edges that have a similar length as those already selected.
   Direction
      Selects all edges that have a similar direction (angle) as those already selected.
   Amount of Faces Around an Edge
      Selects all edges that belong to the same number of faces.
   Face Angles
      Selects all edges that are between two faces forming a similar angle, as with those already selected.
   Crease
      Selects all edges that have a similar *Crease* value as those already selected.
      The *Crease* value is a setting used by the :doc:`Subsurf Modifier </modifiers/generate/subsurf>`.
   Bevel
      Selects all edges that have the same *Bevel Weight* as those already selected.
   Seam
      Selects all edges that have the same *Seam* state as those already selected.
      *Seam* is a true/false setting used in :ref:`UV-texturing <editors-uv_image-index>`.
   Sharpness
      Selects all edges that have the same *Sharp* state as those already selected.
      *Sharp* is a true/false setting (a flag) used by the
      :doc:`EdgeSplit Modifier </modifiers/generate/edge_split>`.


Face Selection Mode:
   Material
      Selects all faces that use the same material as those already selected.
   Image
      Selects all faces that use the same UV-texture as those already selected
      (see :ref:`UV-texturing <editors-uv_image-index>` pages).
   Area
      Selects all faces that have a similar area as those already selected.
   Polygon Sides
      Selects all faces that have the same number of edges.
   Perimeter
      Selects all faces that have a similar perimeter as those already selected.
   Normal
      Selects all faces that have a similar normal as those selected.
      This is a way to select faces that have the same orientation (angle).
   Co-planar
      Selects all faces that are (nearly) in the same plane as those selected.


Selecting Loops
===============

You can easily select loops of components:


Edge Loops and Vertex Loops
---------------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode --> *Vertex* or *Edge* select mode
   | Menu:     :menuselection:`Select --> Edge Loop` or :menuselection:`Mesh --> Edges --> Edge Loop`
   | Hotkey:   :kbd:`Alt-RMB` or :kbd:`Ctrl-E` --> :menuselection:`Edge Loop`


Holding :kbd:`Alt` while selecting an edge selects a loop of edges that are connected in
a line end to end, passing through the edge under the mouse pointer.
Holding :kbd:`Alt-Shift` while clicking adds to the current selection.

Edge loops can also be selected based on an existing edge selection,
using either :menuselection:`Select --> Edge Loop`,
or the *Edge Loop Select* option of the *Edge Specials* menu
(:kbd:`Ctrl-E`).


.. note:: *Vertex* mode

   In *Vertex* select mode, you can also select edge loops, by using the same hotkeys,
   *and clicking on the edges* (not on the vertices).


.. figure:: /images/EdgeF.jpg

   Longitudinal and latitudinal edge loops.


The left sphere shows an edge that was selected longitudinally. Notice how the loop is open.
This is because the algorithm hit the vertices at the poles and terminated because the
vertices at the pole connect to more than four edges. However,
the right sphere shows an edge that was selected latitudinally and has formed a closed loop.
This is because the algorithm hit the first edge that it started with.


Face Loops
----------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode --> *Face* or *Vertex* select modes
   | Hotkey:   :kbd:`Alt-RMB`


In face select mode, holding :kbd:`Alt` while selecting an **edge** selects a loop of
faces that are connected in a line end to end, along their opposite edges.

In vertex select mode,
the same can be accomplished by using :kbd:`Ctrl-Alt` to select an edge,
which selects the face loop implicitly.


.. figure:: /images/EdgeFaceTools-FaceLoopSel.jpg

   Face loop selection.


This face loop was selected by clicking with :kbd:`Alt-RMB` on an edge,
in *face* select mode.
The loop extends perpendicular from the edge that was selected.


.. figure:: /images/EdgeFace-LoopingEdge-Algors-Vertex-Select.jpg

   :kbd:`Alt` versus :kbd:`Ctrl-Alt` in vertex select mode.


A face loop can also be selected in *Vertex* select mode.
Technically :kbd:`Ctrl-Alt-RMB` will select an *Edge Ring*,
however in *Vertex* select mode, selecting an *Edge Ring* implicitly
selects a *Face Loop* since selecting opposite edges of a face implicitly selects
the entire face.


Edge Ring
---------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode --> *Edge* select mode
   | Menu:     :menuselection:`Select --> Edge Ring` or :menuselection:`Mesh --> Edges --> Edge Ring`
   | Hotkey:   :kbd:`Ctrl-Alt-RMB` or :kbd:`Ctrl-E` --> :menuselection:`Select --> Edge Ring`


In *Edge* select mode, holding :kbd:`Ctrl-Alt`
while selecting an edge selects a sequence of edges that are not connected,
but on opposite sides to each other continuing along a :doc:`face loop </modeling/meshes/mesh_structures>`.

As with edge loops, you can also select edge rings based on current selection,
using either :menuselection:`Select --> Edge Ring`,
or the *Edge Ring Select* option of the *Edge Specials* menu
(:kbd:`Ctrl-E`).


.. note:: *Vertex* mode

   In *Vertex* select mode, you can use the same hotkeys when *clicking on the edges* (not on the vertices),
   but this will directly select the corresponding face loop...


.. figure:: /images/EdgeFace-LoopingEdge-Algors-Select.jpg

   A selected edge loop, and a selected edge ring.


In (*A selected edge loop, and a selected edge ring*),
the same edge was clicked on but two different "groups of edges" were selected,
based on the different commands.
One is based on edges during computation and the other is based on faces.


Path Selection
--------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Hotkey:   :kbd:`Ctrl-RMB` and the menu item :menuselection:`Select` --> *Shortest Path*


.. figure:: /images/Select_face_path.jpg
   :width: 200px

   Select a face or vertex path with :kbd:`Ctrl-RMB`


Selects all geometry along the shortest path from the active vertex/edge/face to the one which
was selected.


Loop Inner-Region
-----------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode --> *Edge* select mode
   | Menu:     :menuselection:`Select --> Select Loop Inner-Region` or
     :menuselection:`Mesh --> Edges --> Select Loop Inner-Region`
   | Hotkey:   :kbd:`Ctrl-E` --> :menuselection:`Select Loop Inner-Region`


*Select Loop Inner-Region* selects all edges that are inside a closed loop of edges.
While it is possible to use this operator in *Vertex* and *Face* selection modes, results may be unexpected.
Note that if the selected loop of edges is not closed,
then all connected edges on the mesh will be considered inside the loop.


.. figure:: /images/Mesh-loop-select1.png
   :width: 400px

   Loop to Region.


.. figure:: /images/Mesh-loop-select3.png
   :width: 400px

   This tool handles multiple loops fine, as you can see.


.. figure:: /images/Mesh-loop-select5.png
   :width: 400px

   This tool handles "holes" just fine as well.


Boundary Loop
-------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode --> *Edge* select mode
   | Menu:     :menuselection:`Select --> Select Boundary Loop` or
     :menuselection:`Mesh --> Edges --> Select Boundary Loop`
   | Hotkey:   :kbd:`Ctrl-E` --> :menuselection:`Select Boundary Loop`


*Select Boundary Loop* does the opposite of *Select Loop Inner-Region*,
based on all regions currently selected, it selects only the edges at the border of these regions.
It can operate in any select mode, but will always switch to *Edge* select mode when run.

All this is much more simple to illustrates with examples:


.. figure:: /images/Mesh-region-select1.png
   :width: 400px

   Select Boundary Loop does the opposite and forces into Edge Select Mode

