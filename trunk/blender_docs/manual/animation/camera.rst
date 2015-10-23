*****************
Animating Cameras
*****************

These are some basic tools and properties animators may use for the camera.


Switching Cameras
=================

Switching cameras is done with the Timeline operator 'Bind Camera to Markers'.

The triangle above the camera will become shaded when active.

.. figure:: /images/animation_camera_switch.png

First in the Timeline, add a set of markers used to switch cameras.
Press :kbd:`M` to add marker, then :kbd:`Ctrl M` to rename,
duplicated markers should retain the same name.

#. In the 3D View, select the Camera the Markers will switch to.
#. In the Timeline, select the Marker(s) to switch to the Camera.
#. In the Timeline, press :kbd:`Ctrl-B` to Bind Cameras to Markers.


Moving Cameras
==============

Move Along a Path
-----------------

Sometimes its easier to move objects on path,
see :doc:`Moving Objects on a Path </animation/object_path>` for more info.


Fly/Walk Modes
--------------

:ref:`Fly/Walk Mode <3dview-walk_fly>` can be used in conjunction with the timeline record option.

To record your flight path as animation curves.


Lock Camera to View
-------------------

:ref:`Lock Camera to View <3dview-lock_camera_to_view>` can be used in conjunction with the timeline record option.

To record your view-port navigation as animation curves.


Dolly Zoom
==========

The camera has a set of properties and tools via the *Properties Editor*.

.. figure:: /images/animation_camera_props.png

While the camera is moving towards an object the *Focal Length* property can be decreased
to produce a *Dolly Zoom* camera effect, or vice versa.

The video below demos the *Dolly Zoom* camera effect.

.. vimeo:: 15837189

