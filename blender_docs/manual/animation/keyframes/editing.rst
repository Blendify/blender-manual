
*******
Editing
*******


Adding Keyframes
================

There are several methods of adding new keys. Namely:

- In the 3D View, pressing :kbd:`I` will bring up a menu to choose what to add a keyframe to.
- Hovering over a property and pressing :kbd:`I` or 
  with the context menu by :kbd:`RMB` a property and
  choose *Insert Keyframe* from the menu.


Auto Keyframe
-------------

.. figure:: /images/kia_cube03.png

   Timeline Auto Keyframe.


Auto Keyframe is the red record button in the *Timeline* header. Auto Keyframe adds
keyframes automatically to the set frame if the value for transform type properties changes.

See :ref:`Timeline Keyframe Control <animation-editors-timeline-autokeyframe>` for more info.


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


Examples
========

Keyframe Animation
------------------

This example shows you how to animate a cubes location, rotation, and scale.


#. First, in the *Timeline*, or other animation editors, set the frame to 1.
#. With the *Cube* selected in *Object Mode*, press :kbd:`I` in the 3D View.
#. From the *Insert Keyframe Menu* select *LocRotScale*.
   This will record the location, rotation, and scale, for the *Cube* on frame 1.
#. Set the frame to 100.
#. Use Grab/Move :kbd:`G`, Rotate :kbd:`R`, Scale :kbd:`S`, to transform the cube.
#. Press :kbd:`I` in the 3D View. From the *Insert Keyframe Menu* select *LocRotScale*.

.. figure:: /images/actions_insert_keyframe_00.png
   :width: 500px

   Insert Keyframes.


To test the animation, press :kbd:`Alt-A` to play.

.. figure:: /images/actions_insert_keyframe_01.png
   :width: 500px

   The animation on frames 1, 50, 100.

