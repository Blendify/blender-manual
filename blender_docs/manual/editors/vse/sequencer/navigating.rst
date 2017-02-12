
**********
Navigating
**********

Header
======

View Menu
---------

As usual, the View Menu controls what and how you view in the workspace.

View all Sequences :kbd:`Home`
   Zooms the display to show all strips.
View Selected :kbd:`NumpadPeriod`
   Zooms in the display to fit only the selected strips.
View Frame :kbd:`Numpad0`
   ToDo.
Fit preview in window :kbd:`Home`
   ToDo.
Zoom 1:1 :kbd:`Numpad1`
   Resizes preview to a 1:1 scale (actual size).

Show Seconds :kbd:`Ctrl-T`
   Displays the time instead of the frame number, in the Frame Number Indicator.
Show Frame Number Indicator
   Toggles the units of measure across the bottom of the workspace between seconds or frames.
Sync Markers
   Transform Markers as well as Strips.

.. (todo) missing entries.


View Types
----------

The icons in the header allow to change the view of the VSE. By default,
only the sequencer is displayed. The second button displays only the Preview region,
and the third button displays both the Sequencer and the Preview.

When the preview is enabled, you have several options to change what type pf preview to display.
They are explained in the :doc:`Display Modes Page </editors/vse/preview/index>`.


Refresh View
------------

Certain operations, like moving an object in 3D View, may not force the *Sequencer*
to call for a refresh of the rendered image (since the movement may not affect the rendered image).
If an image or video, used as a strip, is changed by some application outside of Blender,
Blender has no real way of being notified from your operating system.
To force Blender to re-read in files, and to force a re-render of the 3D View,
click the *Refresh* button to force Blender to clear all cached images and compute the current frame.


Main View
=========

Adjusting the View
------------------

Use these shortcuts to adjust the sequence area of the VSE:
Pan :kbd:`MMB` Zoom :kbd:`Wheel` Vertical Scroll use :kbd:`Shift-Wheel`,
or drag on the left scroll bar. Horizontal Scroll use :kbd:`Ctrl-Wheel`,
or drag on the lower scroll bar. Scale View Vertically, drag on the circles on the vertical scroll bar.
Scale View Horizontally, drag on the circles on the horizontal scroll bar.


Scrubbing
---------

To move back and forth through your movie, use the Timeline editor.
:kbd:`LMB` click and drag left/right in the Timeline editor,
moving the vertical bar which indicates the current frame. As you do,
the image for that frame is displayed in the VSE editor.

When you :kbd:`LMB` directly on a sequence strip, this will show the strip *solo*,
(temporarily disregarding effects and other strips, showing only this strips output).

Real-time scrubbing and image display is possible on reasonable computers when viewing an
image sequence or movie (avi/mov) file.

Scene strips can use OpenGL previews or proxies for realtime playback,
otherwise displaying rendered frame is supported, but typically too slow for real-time playback.

