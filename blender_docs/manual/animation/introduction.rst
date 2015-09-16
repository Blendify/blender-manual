
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

In this chapter we will cover the first two,
but the basics given here are actually vital for understanding the following chapters as well.

Animation is typically achieved with the use of :doc:`/animation/basics/key_frames`.


Chapters
========


General Principles and Tools
----------------------------

- :doc:`Key frames </animation/basics/key_frames>`
- :doc:`Animation Editors </animation/editors/index>`
- :doc:`Using The Timeline </editors/timeline>`
- :doc:`Markers </animation/basics/markers>`


The Graph Editor
----------------

- :doc:`F-Curves </animation/editors/graph/fcurves>`
- :doc:`Editing Curves </animation/editors/graph/fcurves>`
- :doc:`F-Curve Modifiers </animation/editors/graph/fmodifiers>`


The Action Editor
-----------------

- :doc:`Actions </animation/basics/actions>`
- :ref:`animation-basics-actions-working_with_actions`


Animation Techniques
--------------------

- :doc:`Constraints </animation/techs/object/constraint>`
- :doc:`Moving objects on a Path </animation/techs/object/path>`
- :doc:`Game Engine Physics Recording </physics/using_ge>`


Animating Deformation
---------------------

- :doc:`Shape Keys </animation/techs/shape/shape_keys>`
- :doc:`Deforming by a Lattice </modifiers/deform/lattice>`
- :doc:`Deforming with Hooks </modifiers/deform/hooks>`

See also :doc:`Hook Modifier </modifiers/deform/hooks>`


Drivers
-------

- :doc:`Drivers </animation/basics/drivers>`
- :doc:`Driven Shape Keys </animation/techs/shape/shape_keys>`

The `Introduction to Character Animation tutorial
<http://wiki.blender.org/index.php/Doc:Tutorials/Animation/BSoD/Character_Animation BSoD>`__
is a good starting point for learning character animation.
Even if you never used Blender before.


Animation Basics
----------------

:doc:`Actions </animation/basics/actions>`
   Actions are used to record the animation of objects and properties.
:doc:`Drivers </animation/basics/drivers>`
   Drivers are used to control and animate properties.
:doc:`Keying Sets </animation/basics/keying_sets>`
   Keying Sets are used to record a set of properties at the same time.
:doc:`Markers </animation/basics/markers>`
   Markers are used to mark key points/events within an animation.
:doc:`Motion Paths </animation/basics/motion_paths>`
   Motion Paths are used to visualize an animation.
:doc:`Shape Keys </animation/techs/shape/shape_keys>`
   Shape Keys are used to deform objects into new shapes.


Animation Editors
-----------------

:doc:`Timeline </editors/timeline>`
   The Timeline Editor is a quick editor to set and control the time frame.
   This also has some tools for animation.
:doc:`Graph Editor </animation/editors/graph>`
   The Graph Editor is mostly used to edit the F-Curves and Keyframes for Channels and Drivers.
:doc:`Dope Sheet </editors/dope_sheet/dope_sheet>`
   The Dopes Sheet contains a collection of animation editors.
:doc:`NLA Editor </editors/nla>`
   The NLA Editor is used to edit and blend Actions together.


Categories
----------

:doc:`Modifiers </modifiers/introduction>`
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
   Motion tracking is a new technique available in Blender. It is still under development,
   and currently supports basic operations for 2D motion tracking, 3D motion tracking, and camera solution.
`Animation Scripts <http://wiki.blender.org/index.php/Extensions:2.6/Py/Scripts#Animation_Scripts>`__
   Add-on scripts for animation.
`Rigging Scipts <http://wiki.blender.org/index.php/Extensions:2.6/Py/Scripts#Rigging_Scripts>`__
   Add-on scripts for rigging.

