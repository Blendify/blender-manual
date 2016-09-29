
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

There are several methods of removing keyframes:

- In the 3D View press :kbd:`Alt-I` to remove keys on the current frame for selected objects.
- When the mouse is over a value press :kbd:`Alt-I`.
- :kbd:`RMB` a value and choose *Delete Keyframe* from the menu.


Editing Keyframes
=================

Keyframes can be edited in two editors. To do so go to either the
:doc:`Graph Editor </editors/graph_editor/index>`
or the :doc:`Dopesheet </editors/dope_sheet/index>`.


Bake Action
===========

.. admonition:: Reference
   :class: refbox

   | Mode:     Object and Pose Modes
   | Menu:     :menuselection:`3D View --> Object/Pose --> Animation --> Bake action`


The *Bake Action* tool will apply interpolated frames into individual key frames.

This can be useful for adding deviation to a cyclic action like a :term:`walk cycle`.
This can also useful for keyframe animations created from drivers or constraints.
