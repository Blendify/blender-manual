
***********************
Deleting and Dissolving
***********************

These tools can be used to remove components.


Delete
======

Delete :kbd:`X`, :kbd:`Delete`
   Deletes selected vertices, edges, or faces. This operation can also be limited to:

   Vertices
      Delete all vertices in current selection, removing any faces or edges they are connected to.
   Edges
      Deletes any edges in the current selection. Removes any faces that the edge shares with it.
   Faces
      Removes any faces in current selection.
   Only Edges & Faces
      Limits the operation to only selected edges and adjacent faces.
   Only Faces
      Removes faces, but edges within face selection are retained.


Dissolve
========

Dissolve operations are also accessed from the delete menu. Instead of removing the geometry,
which may leave holes that you have to fill in again,
dissolve will remove the geometry and fill in the surrounding geometry.

Dissolve
   Removes selected geometry, but keeps surface closed, effectively turning the selection into a single n-gon.
   Dissolve works slightly different based on if you have edges, faces or vertices selected.
   You can add detail where you need it, or quickly remove it where you do not.
Limited Dissolve
   Limited Dissolve reduces detail on planar faces and linear edges with an adjustable angle threshold.

   .. figure:: /images/bmesh_limited-dissolve.jpg
      :width: 400px

      Example showing the how Limited Dissolve can be used.

   Face Split
      When dissolving vertices into surrounding faces, you can often end up with very large, uneven n-gons.
      The face split option limits dissolve to only use the corners of the faces connected to the vertex.

   .. figure:: /images/bmesh_dissolve_face_split.png
      :width: 500px

      Dissolve Face Split option.

      Left: the input, middle: regular dissolve, right: Face Split enabled.


Edge Collapse
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Mesh --> Delete --> Edge Collapse`
   | Hotkey:   :kbd:`Alt-M`, :menuselection:`Collapse`


Merges each edge into single vertices.
This is useful for taking a ring of edges and collapsing it,
removing the face loop it ran through.

.. list-table::

   * - .. figure:: /images/collapse1.png
          :width: 320px

          Selected Edge Ring.

     - .. figure:: /images/collapse2.png
          :width: 320px

          Edge Ring Collapsed.


Edge Loop
=========

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode (Vertex or Edge select modes)
   | Menu:     :menuselection:`Mesh --> Delete --> Edge Loop`
   | Hotkey:   :kbd:`X` or :kbd:`Delete`, :menuselection:`Edge Loop`

*Edge Loop* allows you to delete a selected edge loop if it is between two other edge loops.
This will create one face-loop where two previously existed.

.. note::

   The *Edge Loop* option is very different to the *Edges* option,
   even if you use it on edges that look like an edge loop.
   Deleting an edge loop merges the surrounding faces together to preserve the surface of the mesh.
   By deleting a chain of edges, the edges are removed, deleting the surrounding faces as well.
   This will leave holes in the mesh where the faces once were.


Example
-------

The selected edge loop on the UV Sphere has been deleted and the faces have been merged with
the surrounding edges. If the edges had been deleted by choosing *Edges* from the
(*Erase* menu)
there would be an empty band of deleted faces all the way around the sphere instead.

.. list-table::

   * - .. figure:: /images/deleteedgeloop1.png
          :width: 320px

          Selected Edge Loop.

     - .. figure:: /images/deleteedgeloop2.png
          :width: 320px

          Edge Loop Deleted.

.. seealso::

   - :ref:`Vertex merging <vertex-merging>`.
   - :ref:`mesh-faces-tristoquads`.
   - :ref:`mesh-unsubdivide`.
