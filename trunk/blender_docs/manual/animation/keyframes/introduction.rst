
************
Introduction
************

A *Keyframe* is simply a marker of time which stores the value of a property.

For example, a Keyframe might indicate that the horizontal position of a cube is at 3m on frame 1.

The purpose of a Keyframe is to allow for interpolated animation, meaning, for example,
that the user could then add another key on frame 10, specifying the cube's horizontal position at 20m,
and Blender will automatically determine the correct position of the cube for all the frames between frame 1 and 10
depending on the chosen interpolation method (e.g. Linear, Bézier, Quadratic, etc...).


Adding Keyframes
================

There are several methods of adding new keys. Namely:

- In the 3D View, pressing :kbd:`I` will bring up a menu to choose what to add a keyframe to.
- Hovering over a property and pressing :kbd:`I`.
- :kbd:`RMB` a value and choose *Insert Keyframe* from the menu.


Removing Keyframes
==================

There are several methods of removing keyframes

- In the 3D View press :kbd:`Alt-I` to remove keys on the current frame for selected objects.
- When the mouse is over a value press :kbd:`Alt-I`.
- :kbd:`RMB` a value and choose *Delete Keyframe* from the menu.


Editing Keyframes
=================

For editing keyframes go to the :doc:`Graph Editor </editors/graph_editor/introduction>`
or to the :doc:`Dopesheet </editors/dope_sheet/introduction>`


Bake Action
===========

:menuselection:`Object --> Animation --> Bake action`
(Or if you are in Pose Mode, :menuselection:`Pose --> Animation --> Bake action`)

This will apply interpolated frames into individual key frames. 

Useful for adding deviation to a cyclic action like a walk cycle.

Also useful to keyframe animation created from drivers or constraints.

.. figure:: /images/animation_bake_action.png
