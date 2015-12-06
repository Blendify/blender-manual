
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

Objects
=======

The geometry of a scene is constructed from one or more Objects. These objects
can range from lamps to light your scene, basic 2D and 3D shapes to fill it with models, armatures
to animate those models, to cameras to take pictures or video of it all.


.. _objects_types:

Types of Objects
----------------

:doc:`Meshes </modeling/meshes/introduction>`
   Meshes are objects composed of Polygonal Faces, Edges and/or Vertices,
   and can be edited extensively with Blender's mesh editing tools. The default scene features a cube,
   which is one of the many included basic building-block
   shapes called :doc:`Mesh Primitives </modeling/meshes/primitives>`
:doc:`Curves </modeling/curves/introduction>`
   Curves are mathematically defined objects
   which can be manipulated with control handles or control points (instead of vertices),
   to manage their length and curvature.
:doc:`Surfaces </modeling/surfaces/introduction>`
   Surfaces are patches that are also manipulated with control points.
   These are useful for simple rounded forms and organic landscapes.
:doc:`Meta Objects </modeling/metas/introduction>`
   Meta Objects (or Metaballs) are objects formed by a mathematical function (with no control points or vertices)
   defining the 3D volume in which the object exists.
   Meta Objects have a liquid-like quality, where when two or more Metaballs are brought together,
   they merge by smoothly rounding out the connection, appearing as one unified object.
:doc:`Text </modeling/texts/introduction>`
   Text objects create a two dimensional representation of a string of characters.
:doc:`Armatures </rigging/armatures>`
   Armatures are used for :doc:`rigging </rigging/introduction>`
   3D models in order to make them poseable and animateable.
:doc:`Lattice </modeling/modifiers/deform/lattice>`
   Lattices are non-renderable wireframes, commonly used for taking additional control
   over other objects with help of the :doc:`Lattice Modifier </modeling/modifiers/deform/lattice>`.
:doc:`Empty </modeling/empties>`
   Empties are null objects that are simple visual transform nodes that do not render.
   They are useful for controlling the position or movement of other objects.
:doc:`Speaker </editors/sequencer/audio>`
   Brings to scene source of sound.
:doc:`Cameras </render/camera/index>`
   This is the virtual camera that is used to determine what appears in the render.
:doc:`Lamps </render/blender_render/lighting/index>`
   These are used to place light sources in the scene.
:doc:`Force Fields </physics/force_fields>`
   Force fields are used in physical simulations.
   They give simulations external forces, creating movement,
   and are represented in 3d editor by small control objects.
