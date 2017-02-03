
************
Introduction
************

The clip view is used is the main part of the of the movie clip editor.
Almost all motion tracking tools are concentrated in the Movie Clip Editor.

It should be mentioned that the camera solver consists of three quite separate steps:

#. 2D tracking of footage.
#. Camera intrinsics (focal length, distortion coefficients) specification/estimation/calibration.
#. Solving camera, scene orientation, and scene reconstruction.

Tools in the clip editor are split depending on which step they are used in,
so the interface is not cluttered up with scene orientation tools when only 2D tracking can be done.
The currently displayed tool category can be changed using the Mode menu,
which is in the editor header.

.. figure:: /images/editors_movie_clip_mode_menu.jpg
   :width: 300px

   Movie Clip Editor Mode Menu.

But almost all operators can be called from menus, so it is not necessary to change the mode
every time you want to use a tool which is associated with a different editor mode.

In tracking mode only tools which are related to tracking and camera solving are displayed.
Camera solving tools are included here because it is after solving you will most probably want to
re-track existing tracks or place new tracks to make solving more accurate.
