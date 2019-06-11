
************
Introduction
************

The 3D View is used to interact with the 3D scene for a variety of purposes,
such as modeling, animating, texture painting, etc.


Header
======

The header contains various menus and controls based on the current
:doc:`mode </editors/3dview/modes>`.

.. figure:: /images/editors_3dview_introduction_header.png

   3D View header.


Menus
-----

View
   This menu offers tools to :doc:`navigate </editors/3dview/navigate/index>` in 3D space.
Select
   Contains tools for :doc:`selecting </scene_layout/object/selecting/index>` objects.
Add
   Gives a list of different :ref:`objects types <objects-types>` that can be added to a scene.
Object
   This menu appears when in Object Mode.
   it contains tools to edit :doc:`objects </scene_layout/object/editing/transform/introduction>`.
   In edit mode, it will change to the appropriate menu with :doc:`editing tools </modeling/index>`.


Controls
--------

Mode
   The 3D View has :doc:`several modes </editors/3dview/modes>`
   used for editing different kinds of data:

   - Object Mode
   - Edit Mode
   - Sculpt Mode
   - Vertex Paint
   - Weight Paint
   - Texture Paint
   - Particle Edit
   - Pose Mode
   - Edit Strokes Mode

Transform Orientations
   Use to select and modify the active 
   :doc:`Transform Orientations </editors/3dview/controls/orientation>`.

Pivot Point
   Used to change the reference point (or :term:`pivot point`) used by many mesh manipulation tools.

   Read more about :doc:`Pivot Points </scene_layout/object/editing/transform/control/pivot_point/index>`.
Snapping
   Controls the :doc:`snapping tools </scene_layout/object/editing/transform/control/snap>`
   that help with transforming and modeling objects.
Proportional Edit
   :doc:`Proportional Edit </scene_layout/object/editing/transform/control/proportional_edit>`.


Object Type Visibility
   Change the :doc:`Object Type Visibility </editors/3dview/controls/visibility>`
   and selectability of objects in the 3D View.
Viewport Gizmos
   Change the way how :doc:`gizmos </editors/3dview/controls/gizmo>` are displayed 
   in the 3D View.
Viewport Overlays
   Change the way how :doc:`overlays </editors/3dview/controls/overlays>` are
   displayed in the 3D View.
Viewport Shading
   Change the :doc:`shading </editors/3dview/controls/shading>` of the 3D View.

Tool Shelf
==========

The Tool Shelf is a context-sensitive region containing tools depending on the current mode
(for example, modeling tools in *Edit Mode*, brush tools in *Sculpt Mode*...).

For more information on specific tools available, see:

.. TODO2.8 This is outdated. Will need to reformat using the active tool paradigm

- :doc:`Transformations </scene_layout/object/editing/transform/index>`
- :doc:`History </interface/undo_redo>`
- :doc:`Creating Objects </modeling/meshes/editing/basics/adding>`
- :doc:`Parents </scene_layout/object/properties/relations/parents>`
- :doc:`Groups </scene_layout/object/properties/relations/groups>`
- :ref:`animation-index`
- :ref:`rigid-body-index`
- :ref:`annotations-index`
- :ref:`modeling-index`
- :ref:`painting-sculpting-index`
- :ref:`painting-vertex-index`
- :ref:`painting-weight-index`
- :ref:`painting-texture-index`


Sidebar Region
==============

The Sidebar region contains properties of the active object and selected objects (such as their locations),
as well as properties of the editor itself:

.. TODO2.8 This is outdated. Item, Tool & View

- :doc:`Transform </scene_layout/object/editing/transform/introduction>`
- :doc:`Annotations </editors/3dview/annotations/introduction>`
- :doc:`Display & View Panels </editors/3dview/properties/panels>`
- :doc:`Background Images </editors/3dview/properties/background_images>`
- :doc:`Transform Orientations </scene_layout/object/editing/transform/control/orientations>`
