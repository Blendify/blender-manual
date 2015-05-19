
************
Vertex Tools
************

This page covers many of the tools in the :menuselection:`Mesh --> Vertices` menu.
These are tools that work primarily on vertex selections, however,
some also work with edge or face selections.


Merging
=======

Merging Vertices
----------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Mesh --> Vertices --> Merge...`,
     :menuselection:`Specials --> Merge` or :menuselection:`Vertex Specials --> Merge`
   | Hotkey:   :kbd:`Alt-M`


This tool allows you to merge all selected vertices to an unique one, deleting all others. You
can choose the location of the surviving vertex in the menu this tool pops up before
executing:

At First
   Only available in *Vertex* select mode,
   it will place the remaining vertex at the location of the first one selected.
At Last
   Only available in *Vertex* select mode,
   it will place the remaining vertex at the location of the last one selected (the active one).
At Center
   Available in all select modes,
   it will place the remaining vertex at the center of the selection.
At Cursor
   Available in all select modes,
   it will place the remaining vertex at the 3D Cursor.
Collapse
   This is a special option, as it might let "live" more than one vertex.
   In fact, you will have as much remaining vertices as you had "islands" of selection
   (i.e. groups of linked selected vertices).
   The remaining vertices will be positioned at the center of their respective "islands".
   It is also available *via* the :menuselection:`Mesh --> Edges --> Collapse` menu option...

Merging vertices of course also deletes some edges and faces. But Blender will do everything
it can to preserve edges and faces only partly involved in the reunion.


AutoMerge Editing
-----------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Mesh --> AutoMerge Editing`


The *Mesh* menu as a related toggle option: *AutoMerge Editing*.
When enabled,
as soon as a vertex moves closer to another one than the *Limit* setting
(*Mesh Tools* panel, see below), they are automatically merged.


Remove Doubles
--------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Panel:    *Editing* context --> *Mesh Tools*
   | Menu:     :menuselection:`Mesh --> Vertices --> Remove Doubles`,
     :menuselection:`Specials --> Remove Doubles` or :menuselection:`Vertex Specials --> Remove Doubles`
   | Hotkey:   :menuselection:`[W] --> Remove Doubles` or :menuselection:`Mesh --> Vertices --> Remove doubles`


Remove Doubles is a useful tool to simplify a mesh by merging vertices that
are closer than a specified distance to each other.
An alternate way to simplify a mesh is to use the :doc:`Decimate modifier </modifiers/generate/decimate>`.

Merge Distance
   Sets the distance threshold for merging vertices, in Blender units.
Unselected
   Allows vertices in selection to be merged with unselected vertices.
   When disabled, selected vertices will only be merged with other selected ones.


Separating
==========

Rip
---

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Mesh --> Vertices --> Rip`
   | Hotkey:   :kbd:`V`


Rip creates a "hole" into a mesh by making a copy of selected vertices and edges,
still linked to the neighbor non-selected vertices,
so that the new edges are borders of the faces on one side, and the old ones,
borders of the faces of the other side of the rip.


Examples
^^^^^^^^

.. figure:: /images/Doc26-rip-before.jpg
   :width: 300px

   selected vertex


.. figure:: /images/Doc26-rip-after.jpg
   :width: 300px

   Hole created after using rip on vertex


.. figure:: /images/Doc26-rip-edges-before.jpg
   :width: 300px

   Edges selected


.. figure:: /images/Doc26-rip-edges-after.jpg
   :width: 300px

   Result of rip with edge selection


.. figure:: /images/Doc26-rip-complexSelection-before.jpg
   :width: 300px

   A complex selection of vertices


.. figure:: /images/Doc26-rip-complexSelection-after.jpg
   :width: 300px

   Result of rip operation


Limitations
^^^^^^^^^^^

Rip will only work when edges and/or vertices are selected.
Using the tool when a face is selected (explicitly or implicitly), will return an error
message *"Can't perform ripping with faces selected this way"*
If your selection includes some edges or vertices that are not "between" two faces (:term:`manifold`),
it will also fail with message *"No proper selection or faces include"*.


Rip Fill
--------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Mesh --> Vertices --> Rip Fill`
   | Hotkey:   :kbd:`Alt-V`


Rip fill works the same as the Rip tool above, but instead of leaving a hole,
it fills in the gap with geometry.


.. figure:: /images/Doc26-rip-edges-before.jpg
   :width: 300px

   Edges selected


.. figure:: /images/Doc26-ripFill-result.jpg
   :width: 300px

   Result of rip fill


Split
-----

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Mesh --> Vertices --> Split`
   | Hotkey:   :kbd:`Y`


A quite specific tool, it makes a sort of copy of the selection,
removing the original data *if it is not used by any non-selected element*.
This means that if you split an edge from a mesh,
the original edge will still remain unless it is not linked to anything else.
If you split a face, the original face itself will be deleted,
but its edges and vertices remain unchanged. And so on.

Note that the "copy" is left exactly at the same position as the original, so you must move it
(:kbd:`G`) to see it clearly...


Separate
--------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Mesh --> Vertices --> Separate`
   | Hotkey:   :kbd:`P`


This will separate the selection in another mesh object,
as described :doc:`here </modeling/objects/groups_and_parenting>`.


Connect Vertex Path
===================

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Mesh --> Vertices --> Connect Vertex Path`
   | Hotkey:   :kbd:`J`

This tool connects vertices in the order they're selected, splitting the faces between them.

Runnign a second time will connect the first/last endpoints.

Vertices not connected to any faces will create edges,
so this can be used as a way to quickly connect isolated vertices too.


.. TODO, example images


Connect Vertices
================

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Mesh --> Vertices --> Connect Vertices`


This tool connects selected vertices by creating edges between them and splitting the face.

This tool can be used on many faces at once.


.. figure:: /images/Doc26-vertexConnect-before.jpg
   :width: 200px

   Selected vertices before connecting


.. figure:: /images/Doc26-vertexConnect-after.jpg
   :width: 200px

   After connecting vertices


.. figure:: /images/Doc26-vertexConnect-after-faces.jpg
   :width: 200px

   Two faces created from vertex connect operation


Vertex Slide
============

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Panel:    *Editing* context --> *Mesh Tools*
   | Menu:     :menuselection:`Mesh --> Vertices --> Vertex Slide`
   | Hotkey:   :kbd:`Shift-V`


Vertex Slide will transform a vertex along one of its adjacent edges.
Use :kbd:`Shift-V` to enter tool. Highlight the desired edge by moving the mouse,
then confirm with :kbd:`LMB`.
Drag the cursor to specify the position along the line formed by the edge,
then :kbd:`LMB` again to move the vertex.

:kbd:`Shift`
   Higher precision control.
:kbd:`Ctrl`
   Snap to value (useful to combine with auto merge)
:kbd:`LMB`
   confirms the tool
:kbd:`RMB` or :kbd:`Esc`
   Cancels.


:kbd:`Alt` or :kbd:`C`
   Toggle clamping the slide within the edge extents.


.. figure:: /images/VertexSlide1.jpg
   :width: 200px

   Selected vertex


.. figure:: /images/VertexSlide2.jpg
   :width: 200px

   Positioning vertex interactively


.. figure:: /images/VertexSlide3.jpg
   :width: 200px

   Repositioned vertex


Smooth
======

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Panel:    *Editing* context --> *Mesh Tools*
   | Menu:     :menuselection:`Mesh --> Vertices --> Smooth`,
     :menuselection:`Specials --> Smooth` or :menuselection:`Vertex Specials --> Smooth`
   | Hotkey:   :menuselection:`Mesh --> Vertices --> Smooth vertex`


This will apply once the :doc:`Smooth Tool </modeling/meshes/editing/deforming/smooth>`.


Make Vertex Parent
==================

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Mesh --> Vertices --> Make Vertex Parent`
   | Hotkey:   :kbd:`Ctrl-P`


This will parent the other selected object(s) to the vertices/edges/faces selected,
as described :doc:`here </modeling/objects/groups_and_parenting>`.


Add Hook
========

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Mesh --> Vertices --> Add Hook`
   | Hotkey:   :kbd:`Ctrl-H`


Adds a :doc:`Hook Modifier </modifiers/deform/hooks>` (using either a new empty,
or the current selected object) linked to the selection.
Note that even if it appears in the history menu,
this action cannot be undone in *Edit* mode - probably because it involves other objects...


Blend From Shape, Propagate Shapes
==================================

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`(Vertex) Specials --> Blend From Shape` and
               :menuselection:`Mesh --> Vertices --> Shape Propagate`


These are options regarding :doc:`shape keys </animation/techs/shape/shape_keys>`.


