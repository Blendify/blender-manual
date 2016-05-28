
*******
Editing
*******

These preferences control how several tools will interact with your input.


.. figure:: /images/user_prefs-editing_tab.png
   :width: 640px


Link Materials To
=================

.. figure:: /images/Structure-object-data.jpg

   Example for a Mesh


To understand this option properly, you need to understand how Blender works with Objects.
Almost everything in Blender is organized in a hierarchy of data-blocks.
A data-block can be thought of as containers for certain pieces of information. For example,
the Object data-block contains information about the Object's location while the Object Data
``ObData`` data-block contains information about the mesh.


A material may be linked in two different ways:


.. figure:: /images/Structure-object-material-connection.jpg

   A material linked to ObData (left) and Object (right).


ObData
   Any created material will be created as part of the ObData data-block.
Object
   Any created material will be created as part of the Object data-block.

:doc:`Read more about Blender's Data System </data_system/index>`


New objects
===========

Enter Edit Mode
   If selected, Edit Mode is automatically activated when you create a new object.
Align To
   World
      New objects align with world coordinates.
   View
      New object align with view coordinates.


Undo
====

Global Undo
   This enables Blender to save actions done when you are **not** in *Edit Mode*.
   For example, duplicating Objects, changing panel settings or switching between modes.

   .. warning::
      While disabling this option does save memory,
      it stops the redo panel from functioning,
      also preventing tool options from being changed in some cases.

      For typical usage, its best to keep this enabled.
Step
   Number of Undo steps available.
Memory Limit
   Maximum memory usage in Mb (0 is unlimited).

:doc:`Read more about Undo and Redo options </interface/undo_and_redo>`


Grease Pencil
=============

:doc:`Grease Pencil </interface/grease_pencil/index>` permits you to draw in the 3D viewport with a pencil-like tool.

Manhattan Distance
   The minimum number of pixels the mouse has to move horizontally or vertically before the movement is recorded.
Euclidian Distance
   The minimum distance that mouse has to travel before movement is recorded.
Eraser Radius
   The size of the eraser used with the grease pencil.
Smooth Stroke
   Smooths the pencil stroke after it's finished.


Playback
========

Allow Negative Frame
   Time Cursor can be set to negative frames with mouse or keyboard.
   When using *Use Preview Range*, this also allows playback.


Keyframing
==========

In many situations, animation is controlled by keyframes. The state of a value (e.g. location)
is recorded in a keyframe and the animation between two keyframes is interpolated by Blender.

Visual Keying
   When an object is using constraints, the objects property value doesnt actually change.
   *Visual Keying* will add keyframes to the object property,
   with a value based on the visual transformation from the constraint.
Only Insert Needed
   This will only insert keyframes if the value of the propery is different.
Auto Keyframing
   Enables *Auto Keyframe* by default for new scenes.
Show Auto Keying Warning
   Displays a warning at the top right of the *3D View*, when moving objects, if *Auto Keyframe* is on.
Only Insert Available
   This will only add keyframes to channel F-Curves that already exist.


New F-Curve Defaults
====================

   Interpolation
      This controls how the state between two keyframes is computed.
      Default interpolation for new keyframes is Bezier which provides
      smooth acceleration and de-acceleration whereas Linear or Constant is more abrupt.
   XYZ to RGB
      Color for X, Y or Z animation curves (location, scale or rotation)
      are the same as the color for the X, Y and Z axis.


Transform
=========

Release confirm
   Dragging :kbd:`LMB` on an object will move it.
   To confirm this (and other) transforms, a :kbd:`LMB` is necessary by default.
   When this option is activated, the release of :kbd:`LMB` acts as confirmation of the transform.


Sculpt Overlay Color
====================

This color selector allows the user to define a color to be used in the inner part of the
brushes circle when in sculpt mode, and it is placed as an overlay to the brush,
representing the focal point of the brush influence.
The overlay color is visible only when the overlay visibility is selected
(clicking at the *eye* to set its visibility), and the transparency of the overlay is
controled by the alpha slider located at the brush selector panel,
located at the top of the tool shelf, when in sculpt mode.


.. _prefs-editing-duplicate_data:

Duplicate Data
==============

The 'Duplicate Data' check-boxes define what data is copied with a duplicated Object and what
data remains linked. Any boxes that are checked will have their data copied along with the
duplication of the Object. Any boxes that are not checked will instead have their data linked
from the source Object that was duplicated.

For example, if you have Mesh checked,
then a full copy of the mesh data is created with the new Object,
and each mesh will behave independently of the duplicate.
If you leave the mesh box unchecked then when you change the mesh of one object,
the change will be mirrored in the duplicate Object.

The same rules apply to each of the check-boxes in the 'Duplicate Data' list.
