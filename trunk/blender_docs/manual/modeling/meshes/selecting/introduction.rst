..    TODO/Review: {{review|}}.

************
Introduction
************

There are many ways to select elements, and it depends on what *Mesh Select Mode*
you are in as to what selection tools are available.
First we will go through these modes and after that a look is taken at basic selection tools.


Selection Mode
==============

Select Mode Header Widgets
--------------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`3D View Header --> Select Mode`
   | Hotkey:   :kbd:`Ctrl-Tab`

.. figure:: /images/modeling_meshes_selecting_introduction_mode-buttons.png
   :align: right
   :width: 190px

   Edit Mode selection buttons.

In *Edit Mode* there are three different selection modes.
You can enter the different modes by selecting one of the three buttons in the header.

Vertices
   In this mode vertices are drawn as points.

   Selected vertices are drawn in orange, unselected vertices in black,
   and the active or last selected vertex in white.
Edges
   In this mode the vertices are not drawn.

   Instead the selected edges are drawn in orange,
   unselected edges black, and the active or last selected edge in white.
Faces
   In this mode the faces are drawn with a selection point in the middle which is used for selecting a face.

   Selected faces and their selection point are drawn in orange,
   unselected faces are drawn in black, and the active or last selected face is highlighted in white.

When using these buttons, you can make use of modifier keys, see: `Switching Select Mode`_.

Almost all tools are available in all three mesh selection modes.
So you can *Rotate*, *Scale*, *Extrude*, etc. in all modes.
Of course rotating and scaling a *single* vertex will not do anything useful
(*without* setting the pivot point to another location),
so some tools are more or less applicable in some modes.


Switching Select Mode
---------------------

When switching modes in an "ascendant" way (i.e. from simpler to more complex), from
*Vertices* to *Edges* and from *Edges* to *Faces*,
the selected parts will still be selected if they form a complete element in the new mode.

For example, if all four edges in a face are selected,
switching from *Edges* mode to *Faces* mode will keep the face selected.
All selected parts that do not form a complete set in the new mode will be unselected.

Hence, switching in a "descendant" way (i.e. from more complex to simpler),
all elements defining the "high-level" element (like a face) will be selected
(the four vertices or edges of a quadrangle, for example).


Multiple Selection Modes
^^^^^^^^^^^^^^^^^^^^^^^^

By holding :kbd:`Shift-LMB` when selecting a selection mode,
you can enable multiple *Selection Modes* at once.

This allows you to quickly select Vertices/Edges/Faces,
without first having to switch modes.


Expanding/Contracting Selection
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

By holding :kbd:`Ctrl` when selecting a higher selection mode,
all elements touching the current selection will be added,
even if the selection does not form a complete higher element.

See Fig. :ref:`fig-mesh-select-intro-selection-modes` for examples of the different modes.

Or contracting the selection when switching to a lower mode.

.. _fig-mesh-select-intro-selection-modes:

.. list-table:: Selection Modes.

   * - .. figure:: /images/modeling_meshes_selecting_introduction_vertex-mode-example.png
          :width: 320px

          Vertices mode example.

     - .. figure:: /images/modeling_meshes_selecting_introduction_edge-mode-example.png
          :width: 320px

          Edges mode example.

   * - .. figure:: /images/modeling_meshes_selecting_introduction_face-mode-example.png
          :width: 320px

          Faces mode example.

     - .. figure:: /images/modeling_meshes_selecting_introduction_mixed-mode-example.png
          :width: 320px

          Mixed mode example.


Limit Selection to Visible
==========================

If you are in solid, shaded, or textured viewport shading mode
(not bounding box or wireframe),
you will have a fourth button in the header that looks like a cube,
just right of the select mode ones.

When enabled, this limits your ability to view and select vertices occluded by the objects geometry
(as if the object was solid). This is done by the viewport with depth buffer clipping.


Selection Tools
===============

The select menu in edit mode contains tools for selecting components.
These are described in more detail in the following pages.


Border Select
-------------

Enables a rectangular region for selection :kbd:`B`.

.. list-table::

   * - .. _fig-mesh-select-basics-start:

       .. figure:: /images/modeling_meshes_selecting_introduction_border-select1.png
          :width: 200px

          Start.

     - .. _fig-mesh-select-basics-selecting:

       .. figure:: /images/modeling_meshes_selecting_introduction_border-select2.png
          :width: 200px

          Selecting.

     - .. _fig-mesh-select-basics-complete:

       .. figure:: /images/modeling_meshes_selecting_introduction_border-select3.png
          :width: 200px

          Complete.

In Fig. :ref:`fig-mesh-select-basics-start`, *Border Select* has been activated and
is indicated by showing a dotted cross-hair cursor. In Fig. :ref:`fig-mesh-select-basics-selecting`
the *selection region* is being chosen by drawing a rectangle with the :kbd:`LMB`.
Finally,
by releasing :kbd:`LMB` the selection is complete; see Fig. :ref:`fig-mesh-select-basics-complete`.


Circle Select
-------------

Enables a circular shaped region for selection :kbd:`C`.

.. _fig-mesh-select-basic-circle:

.. list-table:: Circle Region Select.

   * - .. figure:: /images/modeling_meshes_selecting_introduction_circle-select1.png
          :width: 320px

          Start.

     - .. figure:: /images/modeling_meshes_selecting_introduction_circle-select2.png
          :width: 320px

          Selecting.

     - .. figure:: /images/modeling_meshes_selecting_introduction_circle-select3.png
          :width: 320px

          Dragging.

Fig. :ref:`fig-mesh-select-basic-circle` is an example of selecting edges while in *Edge Select Mode*.
As soon as an edge intersects the circle the edge becomes selected.
The tool is interactive such that edges are selected while the circle region is being dragged with the :kbd:`LMB`.

If you want to deselect elements, hold :kbd:`MMB` and begin clicking or dragging again.

.. note::

   If you are in bounding box or wireframe viewport shading mode,
   or when not enabled *Limit Selection to Visible*.
   For *Faces* select mode, the circle must intersect the face indicators 
   usually represented by small pixel squares; one at the center of each face.


Lasso Select
------------

Fig. :ref:`fig-mesh-select-basic-lasso` is an example of using the *Lasso select tool* in *Vertex Select Mode*.

.. _fig-mesh-select-basic-lasso:

.. list-table:: Lasso selection.

   * - .. figure:: /images/modeling_meshes_selecting_introduction_lasso-select1.png
          :width: 200px

          Start.

     - .. figure:: /images/modeling_meshes_selecting_introduction_lasso-select2.png
          :width: 200px

          Selecting.

     - .. figure:: /images/modeling_meshes_selecting_introduction_lasso-select3.png
          :width: 200px

          Complete.


More Tools
----------

(De)select All :kbd:`A`
   Select all or none of the mesh components.
Inverse :kbd:`Ctrl-I`
   Selects all geometries that are not selected, and deselect currently selected components.
Random
   Selects a random group of vertices, edges, or faces, based on a percentage value.

..

More :kbd:`Ctrl-NumpadPlus`
   Propagates selection by adding geometry that are adjacent to selected elements.
Less :kbd:`Ctrl-NumpadMinus`
   Deselects geometry that form the bounds of the current selection.
