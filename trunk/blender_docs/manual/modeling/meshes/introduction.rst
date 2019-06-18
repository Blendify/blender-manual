
************
Introduction
************

Mesh Modeling typically begins with
a :doc:`Mesh Primitive </modeling/meshes/primitives>` shape (e.g. circle, cube, cylinder...).
From there you might begin editing to create a larger, more complex shape.


Modeling Modes
==============

The 3D View has three principal modes that allow for the creation,
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

:doc:`Object Mode </scene_layout/object/editing/transform/introduction>`
Operations in *Object Mode* affect the whole object.
*Object Mode* has the following header in the 3D View:

.. figure:: /images/modeling_meshes_introduction_3d-view-header-object-mode.png

   Object Mode header.


Edit Mode
---------

Operations in *Edit Mode* affect only the geometry of an object,
but not global properties such as location or rotation.

You can only modify the mesh of the objects you are editing.
To modify other objects you can leave edit-mode, select another object and enter edit-mode,
or use :ref:`3dview-multi-object-mode`.

You can switch between the Object and Edit Modes with :kbd:`Tab`.
You can change to any mode by selecting the desired *Mode* in the menu in the 3D View header.


Visualization
=============

.. list-table::

   * - .. figure:: /images/modeling_meshes_introduction_edit-mode-cube-select1.png
          :width: 315px

          One cube selected.

     - .. figure:: /images/modeling_meshes_introduction_edit-mode-cube-select2.png
          :width: 315px

          Two cubes selected before entering Edit Mode.

By default, Blender highlights selected geometry in orange in both *Object Mode* and *Edit Mode*.

In *Object Mode* with *Wireframe* shading enabled :kbd:`Z`,
objects are displayed in black when unselected and in orange when selected.

With multiple objects selected the active object (typically the object last selected),
is displayed with a brighter color.

Similarly, in *Edit Mode*, unselected geometry is drawn in black while selected faces, edges,
or vertices are drawn in orange. The active face/edge/vertex is highlighted in white.
If two vertices joined by an edge are selected in *Vertex selection mode*,
the edge between them is highlighted too.
Similarly, if all vertices or edges of a face are selected, that face draws as selected.


Tool Shelf
==========

.. figure:: /images/modeling_meshes_introduction_tool-shelf-region.png

   The Tool Shelf panel in edit mode.

Open/close the *Mesh Tools* panel using :kbd:`T`.
When entering *Edit Mode*, several mesh tools become available.

Most of these tools are also available as shortcuts
(displayed in the *Tooltips* for each tool).
The properties of each tool are displayed in the operator panel at the bottom of the *Tool Shelf*.

Even more mesh editing tools can be enabled in the :menuselection:`Preferences --> Add-ons`.


Sidebar Region
==============

.. figure:: /images/modeling_meshes_introduction_properties-region.png

   The Sidebar region in edit mode.

Open/close the *Sidebar region* using :kbd:`N`.

In the *Sidebar region*,
panels directly related to mesh editing are the *Transform* panel,
where numeric values can be entered, and the *Mesh Display* panel,
where for example normals and numeric values for distances, angles,
and areas can be turned on.

Other useful tools are found in the *Properties Editor* under
the *Object* and *Object Data* tabs, including display options and *Vertex groups*.
