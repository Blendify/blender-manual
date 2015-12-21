
..    TODO/Review: {{review||text=splitted mesh analysis}} .

*********
Edit Mode
*********

Entering Edit Mode
==================

You can work with geometric objects in two modes.

:doc:`Object mode </editors/3dview/transform/introduction>`
   Operations in *Object Mode* affect the whole object.
   **Object mode** has the following header in the 3D view:


.. figure:: /images/editmode-3dviewheader-objectmode.jpg
   :width: 600px

   Object Mode header


Edit mode
   Operations in *Edit mode* affect only the geometry of an object,
   but not global properties such as location or rotation.
   **Edit Mode** has the following header in the 3D view:


.. figure:: /images/editmode-3dviewheader-editmode.jpg
   :width: 600px

   Edit Mode header


Tools and modes in the 3D view header are (left to right):

- View, Select, and Mesh menus
- Blender Mode
- Display method for 3D view
- Pivot center
- 3D manipulator widget
- Selection mode
- Depth buffer clipping (hide
- Proportional editing
- Snap
- OpenGL render

You can switch between the Object and Edit modes with the :kbd:`Tab` key. You can change
to any mode by selecting the desired *Mode* in the menu in the 3d view header.

After creating an object youd may be immediately placed in *Edit mode*
- depending on whether the *Switch to Edit Mode* button is toggled in the
*User Preferences* *Editing* tab.
*Edit mode* only applies to one object at a time, the *active*,
or most recently selected, object.


Visualization
=============

.. figure:: /images/editmode-cubeselect-1.jpg

   One cube selected


.. figure:: /images/editmode-cubeselect-2.jpg

   Two cubes selected before entering Edit mode


By default, Blender highlights selected geometry in orange in both *Object mode* and
*Edit mode*.

In *Object mode* with *Wireframe* shading enabled (:kbd:`Z`),
objects are displayed in black when unselected and in orange when selected.
If more than one object is selected, all selected object except the active object,
typically the object last selected, is displayed in a darker orange color. Similarly,
in *Edit mode*, unselected geometry is drawn in black while selected faces, edges,
or vertices are drawn in orange. The active face is highlighted in white.

In *Edit mode*, only one mesh can be edited at the time. However,
several objects can be joined into a single mesh
(:kbd:`Ctrl-J` in *Object mode*) and then separated again
(:kbd:`P` in *Edit mode*).
If multiple objects are selected before entering *Edit mode*, all the selected
objects remain highlighted in orange indicating that they are part of the active selection
set.

If two vertices joined by an edge are selected in *Vertex selection mode*,
the edge between them is highlighted too. Similarly,
if enough vertices or edges are selected to define a face, that face is also highlighted.


Tool Shelf
==========

.. figure:: /images/editmode-meshtools-split.jpg

   The Tool Shelf panel in edit mode (panel split in two parts for layout reasons)


Open/close the *Mesh Tools* panel using :kbd:`T`.
When entering *Edit mode*, several mesh tools become available.

Most of these tools are also available as shortcuts
(displayed in the *Tooltips* for each tool) and/or in the *Specials* menu
(:kbd:`W`), the *Edge* menu (:kbd:`Ctrl-E`) ,and *Face* menu
(:kbd:`Ctrl-F`).
For each tool a context-dependent menu is opened at the bottom of the *Tool Shelf*.

Even more mesh editing tools can be enabled in the *User Preferences* '
*Add-ons* section.

For further information on panels see :doc:`/interface/panels`.


Properties Shelf
================

.. figure:: /images/editmode-properties-split.jpg

   The Properties Shelf panel in edit mode (panel split in two parts for layout reasons)


Open/close the *Properties Shelf* using :kbd:`N`.

In the *Properties Shelf*,
panels directly related to mesh editing are the *Transform* panel,
where numeric values can be entered, and the *Mesh Display* panel,
where for example normals and numeric values for distances, angles,
and areas can be turned on.

Other useful tools are found in the *Properties Editor* under the
*Object* 's and *Object Data* 's *Context buttons*,
including display options and *Vertex groups*.


Mesh Display
------------

.. figure:: /images/modeling_editmode_mesh_display.jpg
   :align: right

   Mesh Display Panel

This panel is available only in edit mode, when the object being edited is a mesh.

The Overlays section provides controls for highlighting parts of the mesh.

Edges
   Toggles the option to see the selected edges highlighted.
   If enabled the edges that have both vertices selected will be highlighted
   This only affects in vertex selection mode and when :doc:`UV Unwrapping </editors/uv_image/texturing/unwrapping>`.
Faces
   Defines if the selected faces will be highlighted in the :doc:`3D Viewport </editors/3dview/index>`.
   This affects all selection modes.
Creases and Bevel Weight
   Highlights edges marked with a crease weight for the :doc:`Subdivision Surface Modifier
   </modeling/modifiers/generate/subsurf>`
   and/or a bevel weight for the :doc:`Bevel Modifier </modeling/modifiers/generate/bevel>`,
   respectively. In both cases, the higher the weight, the brighter the highlight.
Seams and Sharp
   Highlights edges marked as an UV seam for unwrapping and/or sharp edges for the :doc:`Edge Split Modifier
   </modeling/modifiers/generate/edge_split>`

Normals Section:

We can choose to show or not the normals of faces and/or vertices using the Face and Vertex tick boxes,
under the Normals section. In addition, we can define the size of these with Normal Size.

The Numerics section lets us see some numerical measures of the selected elements on screen:

Edge Length
   shows the lenghts, in Blender units, of the selected edges.
Face Angles and Face Area
   show the angles (in degrees) and area (in square Blender units) of the selected faces.
