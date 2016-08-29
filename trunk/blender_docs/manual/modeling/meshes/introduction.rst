..    TODO/Review:

************
Introduction
************

Mesh Modeling typically begins with a :doc:`Mesh Primitive
</editors/3dview/object/types/primitives>` shape (e.g. circle, cube, cylinder...).
This mesh primitive is defined by an array of points in 3D space called vertices (singular form is :term:`Vertex`).
From there you might begin extruding faces and moving vertices to create a larger, more complex shape.


Modeling Modes
==============

The 3D View has three principal modes that allow for the creation of,
editing and manipulation of the mesh models.
Each of the three modes have a variety of tools. Some tools may be found in one or more of the modes.

Modes that used for modeling:

- Object Mode
- Edit Mode
- Sculpt Mode

Creation of a mesh primitive typically starts by adding a mesh object in *Object Mode*.
Limited types of editing such as size, location, and orientation can be accomplished in *Object Mode*.
*Object Mode* also provides the means to Join and Group multiple mesh primitives.

More detailed editing of the mesh model shape is done in *Edit Mode*, and *Sculpt Mode*.
The nature of these three modes determines the tools that are available
within the various panels of the 3D View. Switching between modes while modeling is common.
Some tools may be available in more than one mode while others may be unique to a particular mode.

You can work with geometric objects in two modes.


Object Mode
-----------

:doc:`Object Mode </editors/3dview/transform/introduction>`
Operations in *Object Mode* affect the whole object.
*Object Mode* has the following header in the 3D View:

.. figure:: /images/modeling_meshes_modes_object.png

   Object Mode Header.


Edit Mode
---------

Operations in *Edit Mode* affect only the geometry of an object,
but not global properties such as location or rotation.
*Edit Mode* has the following header in the 3D View:

.. figure:: /images/modeling_meshes_modes_edit.png

   Edit Mode Header.


Tools and modes in the 3D View header are (left to right):

- View, Select, and Mesh menus
- Blender Mode
- Display method for 3D View
- Pivot center
- 3D manipulator widget
- Selection mode
- Depth buffer clipping (hide)
- Proportional editing
- Snap
- OpenGL render

You can switch between the Object and Edit Modes with :kbd:`Tab`.
You can change to any mode by selecting the desired *Mode* in the menu in the 3D View header.


Visualization
=============

.. list-table::

   * - .. figure:: /images/editmode-cubeselect-1.jpg
          :width: 315px

          One cube selected.

     - .. figure:: /images/editmode-cubeselect-2.jpg
          :width: 315px

          Two cubes selected before entering Edit Mode.


By default, Blender highlights selected geometry in orange in both *Object Mode* and *Edit Mode*.

In *Object Mode* with *Wireframe* shading enabled :kbd:`Z`,
objects are displayed in black when unselected and in orange when selected.
If more than one object is selected, all selected object except the active object,
typically the object last selected, is displayed in a darker orange color. Similarly,
in *Edit Mode*, unselected geometry is drawn in black while selected faces, edges,
or vertices are drawn in orange. The active face is highlighted in white.

In *Edit Mode*, only one mesh can be edited at the time. However, several objects can be joined into a single mesh
(:kbd:`Ctrl-J` in *Object Mode*) and then separated again (:kbd:`P` in *Edit Mode*).
If multiple objects are selected before entering *Edit Mode*,
all the selected objects remain highlighted in orange indicating that they are part of the active selection set.

If two vertices joined by an edge are selected in *Vertex selection mode*,
the edge between them is highlighted too. Similarly,
if enough vertices or edges are selected to define a face, that face is also highlighted.


Tool Shelf
==========

.. figure:: /images/editmode-meshtools-split.jpg

   The Tool Shelf panel in edit mode (panel split in two parts for layout reasons).


Open/close the *Mesh Tools* panel using :kbd:`T`.
When entering *Edit Mode*, several mesh tools become available.

Most of these tools are also available as shortcuts
(displayed in the *Tooltips* for each tool) and/or in the *Specials* menu
:kbd:`W`, the *Edge* menu :kbd:`Ctrl-E` ,and *Face* menu
:kbd:`Ctrl-F`.
For each tool a context-sensitive menu is opened at the bottom of the *Tool Shelf*.

Even more mesh editing tools can be enabled in the *User Preferences* '
*Add-ons* section.

For further information see :doc:`Panels </interface/window_system/panels>`.


Properties Region
=================

.. figure:: /images/editmode-properties-split.jpg

   The Properties region in edit mode (panel split in two parts for layout reasons).


Open/close the *Properties region* using :kbd:`N`.

In the *Properties region*,
panels directly related to mesh editing are the *Transform* panel,
where numeric values can be entered, and the *Mesh Display* panel,
where for example normals and numeric values for distances, angles,
and areas can be turned on.

Other useful tools are found in the *Properties Editor* under the
*Object* and *Object Data* tabs,
including display options and *Vertex groups*.


Mesh Display
------------

.. figure:: /images/modeling_meshes_display.png
   :align: right

   Mesh Display Panel.


This panel is available only in edit mode, when the object being edited is a mesh.

The Overlays section provides controls for highlighting parts of the mesh.

Edges
   Toggles the option to see the selected edges highlighted.
   If enabled the edges that have both vertices selected will be highlighted
   This only affects in vertex selection mode and when
   :doc:`UV Unwrapping </editors/uv_image/uv_editing/unwrapping>`.
Faces
   Defines if the selected faces will be highlighted in the
   :doc:`3D View </editors/3dview/display/index>`.
   This affects all selection modes.
Creases and Bevel Weight
   Highlights edges marked with a crease weight for the
   :doc:`Subdivision Surface Modifier </modeling/modifiers/generate/subsurf>`
   and/or a bevel weight for the :doc:`Bevel Modifier </modeling/modifiers/generate/bevel>`,
   respectively. In both cases, the higher the weight, the brighter the highlight.
Seams and Sharp
   Highlights edges marked as an UV seam for unwrapping and/or sharp edges for the
   :doc:`Edge Split Modifier </modeling/modifiers/generate/edge_split>`

.. rubric:: Normals Section

We can choose to show or not the normals of faces and/or vertices using the Face and Vertex tick boxes,
under the Normals section. In addition, we can define the size of these with Normal Size.

The *Numerics* section allows users to see some numerical measures of the selected elements on screen:

Edge Length
   Shows the lengths, in Blender units, of the selected edges.
Face Angles and Face Area
   Show the angles (in degrees) and area (in square Blender units) of the selected faces.
