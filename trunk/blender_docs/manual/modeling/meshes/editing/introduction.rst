
************
Introduction
************

Blender provides a variety of tools for editing meshes.
These are available through the *Mesh Tools* shelf,
the Mesh menu in the 3D View header, and context menus in the 3D View,
as well as individual shortcut keys.

.. note::

   All the "transform precision/snap" keys :kbd:`Ctrl` and/ or :kbd:`Shift`
   work also for all these advanced operations... However, most of them do not have
   :doc:`axis locking </editors/3dview/object/transform/transform_control/precision/axis_locking>` possibilities,
   and some of them do not take into account
   :doc:`pivot point </editors/3dview/object/transform/transform_control/pivot_point/index>` and/or
   :doc:`transform orientation </editors/3dview/object/transform/transform_control/transform_orientations>`
   either.

These transform tools are available in the *Transform* section of the
*Mesh* menu in the header.
Note that some of these can also be used on other editable objects, like curves, surfaces,
and lattices.


Types of Tools
==============

The mesh tools are found in various places, and available through shortcuts as well.

.. list-table::

   * - :doc:`Transform and Deform tools </modeling/meshes/editing/basics/index>`:

       - Translate
       - Rotate
       - Scale
       - Mirror
       - Shrink/Flatten/Along Normal
       - Push/Pull
       - To Sphere
       - Shear
       - Warp
       - Edge Slide
       - Vertex Slide
       - Noise
       - Smooth Vertex
       - Rotate Edge

       :doc:`Merge and Remove tools </modeling/meshes/editing/basics/deleting>`:

       - Delete
       - Dissolve
       - Merge
       - Auto-Merge
       - Remove Doubles
       - Tris to Quads
       - Unsubdivide

     - :doc:`Add and Divide tools </modeling/meshes/editing/duplicating/introduction>`:

       - Make Edge/Face
       - Fill
       - Beauty Fill
       - Solidify
       - Quads to Tris
       - Extrude Region
       - Extrude Individual
       - Subdivide
       - Loop Cut/Slide
       - Knife tool
       - Vertex connect
       - Duplicate
       - Spin
       - Screw
       - Symmetrize
       - Inset
       - Bevel
       - Wireframe

       :doc:`Separate tools </modeling/meshes/editing/subdividing/introduction>`:

       - Rip
       - Rip fill
       - Split
       - Separate
       - Edge Split


Accessing Mesh Tools
====================

Mesh Tools Shelf
----------------

When you select a mesh and :kbd:`Tab` into edit mode,
the *Tool Shelf* changes from *Object Tools* to *Mesh Tools*.
These are only some of the mesh editing tools.


Menus
-----

The *Mesh* menu is located in the header.
Some of the menus can be accessed with shortcuts:
:kbd:`Ctrl-F` brings up the Face tool menu
:kbd:`Ctrl-E` brings up the Edge tool menu
:kbd:`Ctrl-V` brings up the Vertex tool menu
