
************
Introduction
************

The geometry of a scene is constructed from one or more Objects. These objects
can range from lamps to light your scene, basic 2D and 3D shapes to fill it with models, armatures
to animate those models, to cameras to take pictures or video of it all.


.. _objects_types:

Types of Objects
================

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
:doc:`Armatures </rigging/armatures/index>`
   Armatures are used for :doc:`rigging </rigging/introduction>`
   3D models in order to make them poseable and animateable.
:doc:`Lattice </modeling/modifiers/deform/lattice>`
   Lattices are non-renderable wireframes, commonly used for taking additional control
   over other objects with help of the :doc:`Lattice Modifier </modeling/modifiers/deform/lattice>`.
:doc:`Empty </modeling/empties>`
   Empties are null objects that are simple visual transform nodes that do not render.
   They are useful for controlling the position or movement of other objects.
:doc:`Speaker </editors/sequencer/strips/audio>`
   Brings to scene source of sound.
:doc:`Cameras </render/camera/index>`
   This is the virtual camera that is used to determine what appears in the render.
:doc:`Lamps </render/blender_render/lighting/index>`
   These are used to place light sources in the scene.
:doc:`Force Fields </physics/force_fields>`
   Force fields are used in physical simulations.
   They give simulations external forces, creating movement,
   and are represented in 3d editor by small control objects.
