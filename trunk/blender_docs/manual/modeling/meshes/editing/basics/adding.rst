
***************
Adding Geometry
***************

In Blender, for modeling, you have several ways of adding mesh elements.
Some of them are basic objects that adds a starting block of data (called data-block in Blender)
when adding their basic geometry to the scene. We have ten available mesh Objects,
and those starting meshes are also called mesh primitives. In Blender,
we have a set of basic primitives so you can add a starting mesh to modify and model to suit your specific needs.
Also, you have specific tools to add, duplicate, move and delete elements,
which will be explained in other pages of the modeling section present in this manual.

This page explains how to add basic geometry creating objects from primitives and how to add more elements
to your primitives, including the addition of other primitives and basic elements when you are modeling.

To enter Edit you can select Edit from the modes menu as explained in the Interface overview,
or use :kbd:`Tab` with a mesh object selected.

.. _fig-mesh-basics-b-primitives:

.. figure:: /images/modeling_mesh_add.png
   :align: right

   Blender's mesh primitives.

To select and add one of the primitives to work with press :kbd:`Shift-A` in Edit mode.
Blender automatically detects the appropriate context for the object type you are editing,
and will show a list of compatible, combining elements. If you are editing Mesh types,
Blender will show a list of primitive meshes to add to your object.
Other contexts are also automatically detected for the correct element additions.
(See Fig. :ref:`fig-mesh-basics-b-primitives`, you can add primitives to already existing objects, in Edit Mode)

A dropdown menu opens from which you can select the primitive you wish to add to the object.

There are many cases when it is useful to directly add a mesh to an object. Maybe you want to model a teapot.
It would be useful to model the cup and the handle as separate meshes and only combine them when you are done.


Adding elementary parts to meshes
=================================

As explained before in :doc:`Mesh Structures </modeling/meshes/structure>`,
meshes are objects formed from basic elements such as vertices, edges and faces.

The most elementary part of a mesh is the vertex, a point in 3D space;
the line between two or more interconnected vertices is called an edge,
and three or more edges can be connected to form a face.
The geometry of the faces performing the model is called topology.


Creating vertices
-----------------

The most basic element, a vertex, can be added with a left button mouse click while pressing :kbd:`Ctrl`
when no other vertices are selected, or :kbd:`Ctrl-LMB`.

To create interconnected vertices, you can add a vertex and continuously make subsequent :kbd:`Ctrl-LMB`
operations with the last one vertex selected.
This will link the last selected vertex with the vertex created at the mouse position with an edge
(See Fig. :ref:`fig-mesh-basics-add-one`),
and will continuously connect them creating vertices if you continue repeating this operation.
(see Fig. 3 Creating simple connected vertices with :kbd:`Ctrl-LMB`).

.. _fig-mesh-basics-add-one:

.. figure:: /images/modeling_meshes_editing_basics_adding_vertex.png

   Adding vertices one by one.


Creating Edges
--------------

In addition to automatically creating edges from vertices, if you have two vertices selected,
you can connect them with and edge using the shortcut :kbd:`F` (Fill).
If you have more than two vertices selected, this will automatically create face(s).


Creating Faces
--------------

Creating Faces with the Mouse
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. figure:: /images/modeling_meshes_editing_basics_adding_quad.png

   Quad from an Edge with source automatically rotated.

If you have two vertices selected and already connected with an edge, left-click while pressing :kbd:`Ctrl-LMB`
will create a planar face, also known as a quad. Blender will follow your mouse cursor
and will use the planar view from your viewport to create those quads.

For :kbd:`Ctrl-LMB`, Blender will automatically rotate the last selected Edge (the source)
for the subsequent operations if you have at least one face created, dividing the angles created between
the newly-created edge and the last two edges, performing a smooth angle between them. Blender will calculate
this angle using the last positive and negative position of the last X and Y coordinates
and the last connected unselected edge. If this angle exceeds a negative limit (following a quadrant rule)
between the recently created edge and the last two, Blender will wrap the faces.
But if you do not want Blender rotating and smoothing edges automatically when extruding from :kbd:`Ctrl-LMB`,
you can also inhibit Blender from rotating sources using the shortcut :kbd:`Ctrl-Shift-LMB`.
In this case, Blender will not rotate the source dividing the angle between those edges when creating a face.

For both cases, Blender will inform the user about the source rotation during the creation process.
If you look at the Bottom of the Mesh Tools Panel, if you press :kbd:`Ctrl-LMB`,
you will see that the Rotate Source is automatically checked and if :kbd:`Ctrl-Shift-LMB` is used,
it will be automatically unchecked. Examples:

- Creating Faces with shortcut :kbd:`Ctrl-LMB`, (see Fig. - Faces created with source automatically rotated)
- Creating Faces with shortcut :kbd:`Ctrl-Shift-LMB`, (see Fig. Faces created with no source rotation)

If you have three or more vertices selected, and left click with mouse while pressing :kbd:`Ctrl-LMB`,
you will also create planar faces, but along the vertices selected, following the direction of the cursor.
This operation is similar to an extrude operation,
which is explained in the :doc:`Extrude </modeling/meshes/editing/duplicating/extrude>` page.

.. tip::

   When adding Objects with :kbd:`Ctrl-LMB`, The extrusions of the selected elements,
   being vertices, edges and faces with the :kbd:`Ctrl-LMB`, is viewport dependent.
   This means, once you change your viewport, for example, from top to left, bottom or right,
   the extrusion direction will also follow your viewport and align your extrusions with your planar view.


Filling Faces
^^^^^^^^^^^^^

.. _fig-mesh-basics-fill-tri:

.. figure:: /images/modeling_meshes_editing_basics_adding_triangle.png

   Filling a triangle.

You can also create faces with at least three vertices selected, using :kbd:`F` to fill them with edges and faces,
or only fill edges with faces if they are already connected (Fill) (See Fig. :ref:`fig-mesh-basics-fill-tri`).
For four or more vertices, it is mandatory that you have coplanar vertices.
four coplanar vertices will create a quad when filled, and more than four coplanar vertices will create a Ngon face.

.. note::

   Note that you can only modify the mesh of the object you are editing.
   To modify other objects you need to leave, select them and re-enter Edit Mode.

.. hint::

   When you are modeling, that, in order to facilitate the modeling,
   the best solution is to imagine what primitive type suits better for your model.
   If you will model a cuboid, the best solution is to start with a primitive cube, and so on.
