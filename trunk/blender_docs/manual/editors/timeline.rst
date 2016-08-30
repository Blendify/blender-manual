
***************
Timeline Editor
***************

The *Timeline* editor, identified by a clock icon,
is shown by default at the bottom of the screen.

.. figure:: /images/timeline.png

   The Timeline.

The *Timeline* is not much of an editor, but more of a information and control.

Here you can have an overview of the animation part of your scene.
What is the current time frame, either in frames or in seconds, where are the keyframes of the active object,
the start and end frames of your animation, markers, etc...

The *Timeline* has *Player Controls*, to play, pause the animation,
and to skip though parts of the scene.

It also has some tools for *Keyframes*, *Keying Sets*, and *Markers*.


Main View
=========

The main *Timeline* region displays the animation frames over time.

.. figure:: /images/timeline_main.png

   Timeline Main Area.


Adjusting the View
------------------

The *Timeline* can be panned by holding :kbd:`MMB`,
then dragging the area left or right.

You can zoom the *Timeline* by using :kbd:`Ctrl-MMB`, the mouse :kbd:`Wheel`,
or pressing :kbd:`Minus` and :kbd:`Plus` on the numpad.


Time Cursor
-----------

.. figure:: /images/timeline_cursor.png

   Time Cursor.


The *Time Cursor* is the green line, it is used to set and display the current time frame.

The *Time Cursor* can be set or moved to a new position by pressing or holding
:kbd:`LMB` in the Timeline editor.

The current frame or second can be displayed on the *Time Cursor*,
check the View menu for settings.

The *Time Cursor* can be moved in steps by pressing :kbd:`Left` or
:kbd:`Right`, or in steps of 10 frames by pressing :kbd:`Shift-Up` or
:kbd:`Shift-Down`.


Playback/Rendering Range
------------------------

By default, the *Playback/Rendering Range* (Frame Start 1 to Frame End 200)
is a lighter shade of gray. The start and end frame can be set to the *Time Cursor*
by pressing :kbd:`S` or :kbd:`E`.
The *Playback Range* can also be set by pressing :kbd:`P` then drawing a box.


Keyframes
---------

For the active and selected objects, keyframes are displayed as a yellow line.
For *Armatures*, the object keyframes and the pose bones keyframes are drawn.

*Only Selected Channels* can be enabled. :menuselection:`Timeline --> View --> Only Selected Channels`.
For *Armatures*, this will draw the object keyframes,
and the keyframes for the active and selected pose bones.


Markers
-------

Markers are the small triangles, with their name near them.
Markers are usually used to identify key parts of the animation.

.. figure:: /images/timeline_markers.png

   Markers.

See the :doc:`Markers page </animation/markers>` for more information.


Header
======

Menus
-----

View Menu
^^^^^^^^^

The *View Menu* controls what you see, and what it looks like.

Toggle Full Screen
   Maximize or minimize the *Timeline* editor. :kbd:`Ctrl-Up` or :kbd:`Ctrl-Down`
Duplicate Area into New Window
   This creates a new window, and sets it to the *Timeline* editor.
Bind Camera to Markers
   This is used switch cameras during animation.
   It binds the active camera to the selected markers.
   First select a camera. Then select the marker(s). Then use the function. :kbd:`Ctrl-B`
Cache
   Show Cache
      Show all enabled types.

      Softbody, Particles, Cloth, Smoke, Dynamic Paint, Rigid Body.

   .. figure:: /images/timeline_cache.png

      Timeline Cache.

Only Selected Channels
   For *Armatures*, this will draw the object keyframes, and the keyframes for the active and selected pose bones.
Show Frame Number Indicator
   This will draw the current frame or seconds on the *Time Cursor*.
View All
   Maximize the *Timeline* area based on the Animation Range. :kbd:`Home`
Show Seconds
   Show time in seconds for the *Timeline* and the *Time Cursor* based on the FPS. :kbd:`Ctrl-T`


Marker Menu
^^^^^^^^^^^

See the :doc:`Markers page </animation/markers>` for more information.


Frame Menu
^^^^^^^^^^

Auto-Keyframing Mode
   This controls how the Auto Keyframe mode works.
   Only one mode can be used at a time.

   Add & Replace
      Add or Replace existing keyframes.
   Replace
      Only Replace existing keyframes.


Playback Menu
^^^^^^^^^^^^^

Audio Scrubbing
   If your animation has sound,
   this option plays bits of the sound wave while you move the time cursor with :kbd:`LMB` or keyboard arrows.
Audio Muted
   Mute the sound from Sequence Editors.
AV-sync
   Play back and sync with audio clock, dropping frames if frame display is too slow.
   See `Synchronize Playback`_ for more info.
Frame Dropping
   Play back dropping frames if frames are too slow.
   See `Synchronize Playback`_ for more info.
Clip Editors
   While playing, updates the Movie Clip Editor.
Node Editors
   While playing, updates the Node properties for the Node Editor.
Sequencer Editors
   While playing, updates the Video Sequence Editor.
Image Editors
   .. Todo Not sure what is updated, maybe gif images or, image sequence.
Property Editors
   When the animation is playing, this will update the property values in the UI.
Animation Editors
   While playing, updates the Timeline, Dope Sheet, Graph Editor, Video Sequence Editor.
All 3D View Editors
   While playing, updates the 3D View and the Timeline.
Top-Left 3D Editor
   While playing, updates the Timeline, if Animation Editors and All 3D View Editors disabled.


.. _animation-editors-timeline-headercontrols:

Header Controls
---------------

The Timeline header controls.

.. figure:: /images/editors_timeline_header.png

   Timeline header controls.

   1. Range Control, 2. Frame Control, 3. Player Control,
   4. Synchronize Playback, 5. Keyframe Control


Range Control
^^^^^^^^^^^^^

Use Preview Range
   This is an alternative range used to preview animations.
   This works for the UI playback, this will not work for rendering an animation.

Lock Time Cursor to Playback Range
   This limits the *Time Cursor* to the *Playback Range*.


Frame Control
^^^^^^^^^^^^^

Start Frame
   The start frame of the animation/playback range.

End Frame
   The end frame of the animation/playback range.

Current Frame
   The current frame of the animation/playback range.
   Also the position of the *Time Cursor*.


Player Control
^^^^^^^^^^^^^^

These button are used to set, play, rewind, the *Time Cursor*.

.. figure:: /images/timeline_player_controls.png

   Player Controls.

Jump to start
   This sets the cursor to the start of frame range. :kbd:`Shift-Ctrl-Down` or :kbd:`Shift-Left`
Jump to previous keyframe
   This sets the cursor to the previous keyframe. :kbd:`Down`
Rewind
   This plays the animation sequence in reverse. :kbd:`Shift-Alt-A`
   When playing the play buttons switch to a pause button.
Play
   This plays the animation sequence. :kbd:`Alt-A`
   When playing the play buttons switch to a pause button.
Jump to next keyframe
   This sets the cursor to the next keyframe. :kbd:`Up`
Jump to end
   This sets the cursor to the end of frame range. :kbd:`Shift-Ctrl-Up` or :kbd:`Shift-Right`
Pause
   This stops the animation. :kbd:`Alt-A`


Synchronize Playback
^^^^^^^^^^^^^^^^^^^^

.. figure:: /images/animation_red_fps.png

   3D View Red FPS.
   60:54.75


When you play an animation, the FPS is displayed at the top left of the 3D View.
If the scene is detailed and playback is slower than the set
*Frame Rate* (see :ref:`render-tab-dimensions`,
these options are used to synchronize the playback.

No Sync
   Do not sync, play every frame.
Frame Dropping
   Drop frames if playback is too slow.
   This enables *Frame Dropping* from the *Playback Menu*.
AV-sync
   Sync to audio clock, dropping frames if playback is slow.
   This enables *AV-sync* and *Frame Dropping* from the *Playback Menu*.


.. _animation-editors-timeline-autokeyframe:

Keyframe Control
^^^^^^^^^^^^^^^^

.. figure:: /images/kia_cube03.png

   Timeline Auto Keyframe.


Auto Keyframe
   The "Record" red-dot button enables something called *Auto Keyframe* :
   It will add and/or replace existing keyframes for the active object when you transform it in the 3D View.

   For example, when enabled, first set the *Time Cursor* to the desired frame,
   then move an object in the 3D View, or set a new value for a property in the UI.

   When you set a new value for the properties,
   Blender will add keyframes on the current frame for the transform properties.

   *Auto Keying Set* - Optional if *Auto Keyframe* enabled.
   *Auto Keyframe* will insert new keyframes for the properties in the active *Keying Set*.

   Note that *Auto Keyframe* only works for transform properties (objects and bones),
   in the 3D Views (i.e. you cant use it e.g. to animate the colors of a material in the Properties editor...).

Layered
   Optional while playback. TODO.

   .. figure:: /images/animation_timeline_layered.png

      Timeline Layered.

Active Keying Set
   *Keying Sets* are a set of keyframe channels in one.

   They are made so the user can record multiple properties at the same time.

   With a keying set selected, when you insert a keyframe,
   Blender will add keyframes for the properties in the active *Keying Set*.

   There are some built in keying sets, *LocRotScale*, and also custom keying sets.

   Custom keying sets can be defined in the in the panels
   :menuselection:`Properties --> Scene --> Keying Sets + Active Keying Set`.

   .. figure:: /images/kia_cube02.png

      Timeline Keying Sets.

Insert Keyframes
   Insert keyframes on the current frame for the properties in the active *Keying Set*.
Delete Keyframes
   Delete keyframes on the current frame for the properties in the active *Keying Set*.
