
*******
Editing
*******

.. _bpy.ops.anim.keyframe_insert:

Insert Keyframes
================

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Panel:    :menuselection:`Tool Shelf --> Animation --> Animation --> Keyframes: Insert`
   | Menu:     :menuselection:`Object --> Animation --> Insert Keyframe...`
   | Hotkey:   :kbd:`I`

There are several methods of adding new keys. Namely:

- In the 3D View, pressing :kbd:`I` will bring up a menu to choose what to add a keyframe to.
- Hovering over a property and pressing :kbd:`I` or with the context menu by :kbd:`RMB`
  a property and choose *Insert Keyframe* from the menu.


Auto Keyframe
-------------

.. figure:: /images/editors_timeline_keyframes-auto.png

   Timeline Auto Keyframe.

Auto Keyframe is the red record button in the *Timeline* header. Auto Keyframe adds
keyframes automatically to the set frame if the value for transform type properties changes.

See :ref:`Timeline Keyframe Control <animation-editors-timeline-autokeyframe>` for more info.


.. _bpy.ops.anim.keyframe_delete:

Delete Keyframes
================

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Panel:    :menuselection:`Tool Shelf --> Animation --> Animation --> Keyframes: Remove`
   | Menu:     :menuselection:`Object --> Animation --> Delete Keyframes...`
   | Hotkey:   :kbd:`Alt-I`

There are several methods of removing keyframes:

- In the 3D View press :kbd:`Alt-I` to remove keys on the current frame for selected objects.
- When the mouse is over a value press :kbd:`Alt-I`.
- :kbd:`RMB` a value and choose *Delete Keyframe* from the menu.


.. _bpy.ops.anim.keyframe_clear:

Clear Keyframes
===============

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Menu:     :menuselection:`Object --> Animation --> Clear Keyframes...`

Removes all keyframes from the selected object.


Editing Keyframes
=================

Keyframes can be edited in two editors. To do so go to either the
:doc:`Graph Editor </editors/graph_editor/index>`
or the :doc:`Dope Sheet </editors/dope_sheet/index>`.


Examples
========

Keyframe Animation
------------------

This example shows you how to animate a cube's location, rotation, and scale.

#. First, in the *Timeline*, or other animation editors, set the frame to 1.
#. With the *Cube* selected in *Object Mode*, press :kbd:`I` in the 3D View.
#. From the *Insert Keyframe Menu* select *LocRotScale*.
   This will record the location, rotation, and scale, for the *Cube* on frame 1.
#. Set the frame to 100.
#. Use Grab/Move :kbd:`G`, Rotate :kbd:`R`, Scale :kbd:`S`, to transform the cube.
#. Press :kbd:`I` in the 3D View. From the *Insert Keyframe Menu* select *LocRotScale*.

.. figure:: /images/animation_keyframes_editing_insert-keyframe0.png
   :width: 500px

   Insert Keyframes.

To test the animation, press :kbd:`Alt-A` to play.

.. figure:: /images/animation_keyframes_editing_insert-keyframe1.png
   :width: 500px

   The animation on frames 1, 50, 100.
