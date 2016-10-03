
************
Introduction
************

Animation is making an object move or change shape over time.
Objects can be animated in many ways:

Moving as a whole object
   Changing their position, orientation or size in time;
Deforming them
   Animating their vertices or control points;
Inherited animation
   Causing the object to move based on the movement of another object (e.g. its parent, hook, armature, etc...).

In this chapter, we will cover the first two,
but the basics given here are actually vital for understanding the following chapters as well.

Animation is typically achieved with the use of :doc:`keyframes </animation/keyframes/introduction>`.


Chapters
========

General Principles and Tools
----------------------------

- :doc:`keyframes </animation/keyframes/introduction>`
- :doc:`Using The Timeline </editors/timeline>`
- :doc:`Markers </animation/markers>`


The Graph Editor
----------------

- :doc:`F-Curves </editors/graph_editor/fcurves/introduction>`
- :doc:`F-Curve Editing </editors/graph_editor/fcurves/introduction>`
- :doc:`F-Curve Modifiers </editors/graph_editor/fcurves/fmodifiers>`


The Action Editor
-----------------

- :doc:`Actions </animation/actions>`
- :ref:`animation-basics-actions-working-with-actions`


Animation Techniques
--------------------

- :doc:`Constraints </animation/techniques/constraints>`
- :doc:`Moving objects on a Path </animation/techniques/object_path>`
- :doc:`Game Engine Physics Recording </game_engine/physics/using_ge>`


Animating Deformation
---------------------

- :doc:`Shape Keys </animation/shape_keys/index>`
- :doc:`Deforming by a Lattice </modeling/modifiers/deform/lattice>`
- :doc:`Deforming with Hooks </modeling/modifiers/deform/hooks>`

See also :doc:`Hook Modifier </modeling/modifiers/deform/hooks>`


Drivers
-------

- :doc:`Drivers </animation/drivers/index>`
- :ref:`Driven Shape Keys <animation_drivers_shapekey_ex>`


Animation Fundamentals
----------------------

:doc:`Actions </animation/actions>`
   Actions are used to record the animation of objects and properties.
:doc:`Drivers </animation/drivers/index>`
   Drivers are used to control and animate properties.
:doc:`Keying Sets </animation/keyframes/keying_sets>`
   Keying Sets are used to record a set of properties at the same time.
:doc:`Markers </animation/markers>`
   Markers are used to mark key points/events within an animation.
:doc:`Motion Paths </animation/keyframes/visualization>`
   Motion Paths are used to visualize an animation.
:doc:`Shape Keys </animation/shape_keys/index>`
   Shape Keys are used to deform objects into new shapes.


Animation Editors
-----------------

:doc:`Timeline </editors/timeline>`
   The Timeline Editor is a quick editor to set and control the time frame.
   This also has some tools for animation.
:doc:`Graph Editor </editors/graph_editor/introduction>`
   The Graph Editor is mostly used to edit the F-Curves and Keyframes for Channels and Drivers.
:doc:`Dope Sheet </editors/dope_sheet/introduction>`
   The Dopes Sheet contains a collection of animation editors.
:doc:`NLA Editor </editors/nla>`
   The NLA Editor is used to edit and blend Actions together.


Categories
----------

:doc:`Modifiers </modeling/modifiers/introduction>`
   Modifiers are automatic operations that affect an object in a non-destructive way.
   With modifiers, you can perform many effects automatically that would otherwise be tedious to do manually.
:doc:`Rigging </rigging/introduction>`
   Rigging.
:doc:`Constraints </rigging/constraints/introduction>`
   Constraints are a way of connecting transform properties (position, rotation and scale) between objects.
:doc:`Physical Simulation </physics/introduction>`
   This category covers various advanced Blender effects, often used to simulate real physical phenomena.
   There is the Particle System for things like hair, grass, smoke, flocks.
   Soft Bodies are useful for everything that tends to bend, deform, in reaction to forces like gravity or wind.
   Cloth simulation, to simulate clothes or materials.
   Rigid Bodies can simulate dynamic objects that are fairly rigid.
   Fluids, which include liquids and gasses, can be simulated, including Smoke.
   Force Fields can modify the behavior of simulations.
:doc:`Motion Tracking </editors/movie_clip_editor/index>`
   Motion tracking is a technique available in Blender that supports basic operations for 2D motion tracking,
   3D motion tracking, and camera solution.
