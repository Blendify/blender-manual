
.. _3dview-editor:

************
Introduction
************

The 3D View is used to interact with the 3D scene for a variety of purposes, such as modeling, animation,
texture painting, etc.

.. TODO expand, more general info

Navigating in the 3D space is done with the use of both mouse movement and keyboard shortcuts.

Orbit (:kbd:`MMB`)
   Rotate the view around the point of interest.
Pan (:kbd:`Shift-MMB`)
   Move the view up, down, left and right
Zoom (:kbd:`Ctrl-MMB`/:kbd:`Wheel`)
   Move the camera forwards and backwards

:doc:`Read more about navigation </editors/3dview/navigate/introduction>`.


Modes
=====

Blender has a number of *Modes* used for editing different kinds of data:

- Object Mode
- Edit Mode
- Pose Mode
- Sculpt Mode
- Vertex Paint
- Weight Paint
- Texture Paint
- Particle Edit

The mode can be changed using the menu in the 3D View header, or using the hotkey associated with that mode.

:doc:`Read more about modes </editors/3dview/modes>`.


Regions of the 3D View
======================

Toolshelf
---------

The Toolshelf is a context-sensitive region containing tools depending on the current mode
(for example, modeling tools in *Edit Mode*, brush tools in *Sculpt Mode*...).

For more information on specific tools available, see:

- :doc:`Transformations </editors/3dview/transform/index>`
- :doc:`History </interface/undo_and_redo>`
- :doc:`Creating Objects </modeling/meshes/editing/basics/adding>`
- :doc:`Parents </editors/3dview/parents>`
- :doc:`Groups </editors/3dview/groups>`
- :ref:`animation-index`
- :ref:`rigid_body-index`
- :ref:`grease_pencil-index`
- :ref:`modeling-index`
- :ref:`painting_sculping-index`
- :ref:`painting_vertex-index`
- :ref:`painting_weight-index`
- :ref:`painting_texture-index`


Properties Region
-----------------

The Properties Region contains properties of the active object and selected objects (such as their locations),
as well as properties of the editor itself
(such as :doc:`/editors/3dview/display` settings and :doc:`background images </editors/3dview/background_images>`).


Header
------

Contains various menus, buttons and options based on the current :ref:`mode <modes>`, such as:

- :doc:`Shading mode </editors/3dview/shading>`
- :doc:`Pivot options </editors/3dview/transform/transform_control/pivot_point/index>`
- :doc:`Transform manipulator </editors/3dview/transform/transform_control/manipulators>`
- :doc:`Proportional Edit </editors/3dview/transform/transform_control/proportional_edit>`
- :doc:`Snapping </editors/3dview/transform/transform_control/snap>`
- :doc:`OpenGL render </render/opengl>`
