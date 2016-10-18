
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

Animation Fundamentals
----------------------

:doc:`Actions </animation/actions>`
   Actions are used to record the animation of objects and properties.
:doc:`Drivers </animation/drivers/index>`
   Drivers are scripts used to control and animate properties.
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
:doc:`NLA Editor </editors/nla/index>`
   The NLA Editor is used to edit and blend Actions together.


Related Sections
----------------

:doc:`Rigging </rigging/introduction>`
   Rigging.
:doc:`Constraints </rigging/constraints/introduction>`
   Constraints are a way of connecting transformation properties (position, rotation and scale) between objects.
:doc:`Physical Simulation </physics/introduction>`
   This category covers various advanced Blender effects, often used to simulate real physical phenomena.
   There is the Particle System for things like hair, grass, smoke, flocks.
   Soft Bodies are useful for everything that tends to bend, deform, in reaction to forces like gravity or wind.
   Cloth simulation, to simulate clothes or materials.
   Rigid Bodies can simulate dynamic objects that are fairly rigid.
   Fluids, which include liquids and gases, can be simulated, including Smoke.
   Force Fields can modify the behavior of simulations.
:doc:`Motion Tracking </editors/movie_clip_editor/index>`
   Motion tracking is a technique available in Blender that supports basic operations for 2D motion tracking,
   3D motion tracking, and camera solution.


State Colors
============

.. figure:: /images/animation_properties.png

   State colors of properties.

Properties have different colors and menu items for different states.

.. object origin, 3d view overlay

.. list-table::

   * - Gray
     - Default
   * - Yellow
     - Keyframes
   * - Green
     - Animated
   * - Purple
     - Driver
