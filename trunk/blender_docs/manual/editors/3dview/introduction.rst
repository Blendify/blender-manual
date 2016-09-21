.. _3dview-editor:

************
Introduction
************

The 3D View is used to interact with the 3D scene for a variety of purposes,
such as modeling, animation, texture painting, etc.

.. TODO expand, more general info


Header
======

The header contains various menus and controls based on the current
:doc:`mode </editors/3dview/modes>`.

.. figure:: /images/editors_3dview_header.png

   3D View header.


Menus
-----

View
   This menu offers tools to :doc:`navigate </editors/3dview/navigate/index>` in 3D space.
Select
   Contains tools for :doc:`selecting </editors/3dview/object/selecting>` objects.
Add
   Gives a list of different :ref:`objects types <objects-types>` that can be added to a scene.
Object
   This menu appears when in Object Mode.
   it contains tools to edit :doc:`objects </editors/3dview/object/transform/introduction>`.
   In edit mode, it will change to the appropriate menu with :doc:`editing tools </modeling/index>`.


Controls
--------

Mode
   The 3D view has :doc:`several modes </editors/3dview/modes>`
   used for editing different kinds of data:

   - Object Mode
   - Edit Mode
   - Pose Mode
   - Sculpt Mode
   - Vertex Paint
   - Weight Paint
   - Texture Paint
   - Particle Edit

Viewport Shading
   Allows you to change the way objects are displayed in the viewport.
   :doc:`Read more about the different shading modes </editors/3dview/display/shading>`
Pivot Point
   Used to change the reference point (or :term:`pivot point`) used by many mesh manipulation tools.

   :doc:`Read more about Pivot Points </editors/3dview/object/transform/transform_control/pivot_point/index>`
Transform Manipulator
   These handy selectors allow you to rotate or move objects by grabbing
   (clicking with your mouse) their controls and moving your mouse in the axis.

   :doc:`Read more about Transform Manipulators </editors/3dview/object/transform/transform_control/manipulators>`
Layer
   The Layers Widget is documented in the :doc:`Layers page </editors/3dview/object/properties/relations/layers>`.
Lock to Scene
   By default, the "lock" button to the right of the layer buttons is enabled.
   This means that in this view, the active layers and camera are those of the whole scene
   (and those used at render time). Hence, all 3D Views locked this way will share the same
   active layers and camera. When you change them in one view,
   all locked others will immediately reflect these changes.

   But if you disable this "lock" button, you then can specify different active layers and camera,
   specific to this view. This might be useful if you do not want to have your working areas (views)
   cluttered with the whole scene, and still have an ancillary complete view
   (which is unlocked with e.g. all layers shown).
   Or to have several views with different active cameras. Remember that you can use
   :kbd:`Ctrl-Numpad0` to make the active object the active camera.

   :doc:`Read more about Scenes </data_system/scenes/introduction>`
Proportional Edit
   :doc:`Proportional Edit </editors/3dview/object/transform/transform_control/proportional_edit>`.
Snap
   Controls the :doc:`snapping tools</editors/3dview/object/transform/transform_control/precision/snap>`
   that help with transforming and modeling objects.
OpenGL Render
   The Render Buttons render an OpenGL version of the 3D View.
   See the :doc:`OpenGL Rendering </render/opengl>` page for more information.


Tool Shelf
==========

The Tool shelf is a context-sensitive region containing tools depending on the current mode
(for example, modeling tools in *Edit Mode*, brush tools in *Sculpt Mode*...).

For more information on specific tools available, see:

- :doc:`Transformations </editors/3dview/object/transform/index>`
- :doc:`History </interface/undo_and_redo>`
- :doc:`Creating Objects </modeling/meshes/editing/basics/adding>`
- :doc:`Parents </editors/3dview/object/properties/relations/parents>`
- :doc:`Groups </editors/3dview/object/properties/relations/groups>`
- :ref:`animation-index`
- :ref:`rigid-body-index`
- :ref:`grease-pencil-index`
- :ref:`modeling-index`
- :ref:`painting-sculping-index`
- :ref:`painting-vertex-index`
- :ref:`painting-weight-index`
- :ref:`painting-texture-index`


Properties Region
=================

The Properties Region contains properties of the active object and selected objects (such as their locations),
as well as properties of the editor itself.

- :doc:`Transform </editors/3dview/object/transform/introduction>`
- :doc:`Grease Pencil </interface/grease_pencil/introduction>`
- :doc:`Display & View Panels </editors/3dview/display/panels>`
- :doc:`Background Images </editors/3dview/display/background_images>`
- :doc:`Transform Orientations </editors/3dview/object/transform/transform_control/transform_orientations>`
