
*************************
Using the Sequence Editor
*************************

Add Scene
---------

You can add the virtual image output of a Scene in your current .blend file as well.
Select the scene from the pop-up list,
and a strip will be added and rubberbanded to your mouse just like a movie or image.
The strip length will be determined based on the animation settings in that scene
(not the current scene, unless the VSE is operating in the same scene).

When adding a Scene strip, please note that,
in order to show you the strip in the VSE Image preview mode, Blender must render the scene.
This may take awhile if the scene is complex,
so there may be a delay between the time you select the scene and the time the strip appears.
To reduce the delay, simplify the scene rendering by selecting fewer layers to render.

If the extra overhead of rendering the scene becomes burdensome
(for either preview or for multiple test renders) and you have enough disk space consider
rendering the scene to a sequence of PNGs and using an Image Sequence strip instead of a
scene. This is very popular for static graphic overlays like title cards which are often
little more than a static image with animated opacity.


Adjusting the View
==================

Use these shortcuts to adjust the sequence area of the VSE:
Pan :kbd:`MMB`
Zoom :kbd:`Wheel`
Vertical Scroll use :kbd:`Shift-Wheel`, or drag on the left scroll bar.
Horizontal Scroll use :kbd:`Ctrl-Wheel`, or drag on the lower scroll ;bar.
Scale View Vertically, drag on the circles on the vertical scroll bar.
Scale View Horizontally, drag on the circles on the horizontal scroll bar.

As usual, the View Menu controls what and how you view in the workspace.

Properties Panel
   The Properties Panel contains options for the way the preview is displayed.
View all Sequences :kbd:`Home`
   Zooms (out) the display to show all strips.
Fit preview in Window :kbd:`Home`
   Resizes preview so that it fits in the window.
Show Preview ``1:1`` :kbd:`Numpad1`
   Resizes preview to a ``1:1`` scale (actual size).
View Selected :kbd:`NumpadPeriod`
   Zooms in the display to fit only the selected strips

Use this when working arranging a lot of strips and you want to use all of your screen to work.

.. admonition:: Reference
   :class: refbox

   | Mode:     Sequence
   | Menu:     View --> Show Frames, View --> Show Seconds
   | Hotkey:   :kbd:`T`


Draw Frames
   Displays the frame number instead of the time, in the Frame Number Indicator.
Show Frame Number Indicator
   Toggles the units of measure across the bottom of the workspace between seconds or frames.
Safe Margin
   Displays an overlay on the preview, marking where title safe region is.
Separate Colors
   When using Luma Waveform view, this separates R,G, and B into separate graphs.
Transform Markers
   Transform Markers as well as Strips.


Scrubbing
---------

To move back and forth through your movie, use the Timeline window.
:kbd:`LMB` click and drag left/right in the timeline window,
moving the vertical bar which indicates the current frame. As you do,
the image for that frame is displayed in the VSE window.

When you :kbd:`LMB` directly on a sequence strip, this will show the strip *solo*,
(temporarily disregarding effects and other strips, showing only this strips output).

Real-time scrubbing and image display is possible on reasonable computers when viewing an
image sequence or movie (avi/mov) file.

Scene strips can use OpenGL previews or proxies for realtime playback,
otherwise displaying rendered frame is supported, but typically too slow for real-time playback.


View Modes
----------

The icons in the header allow to change the view of the VSE. By default,
only the sequencer is displayed. The second button displays only the Preview window,
and the third button displays both the Sequencer and the Preview.

When the preview is enabled, you have several options to change what type pf preview to display.
They are explained in the :doc:`Display Modes Page </editors/sequencer/display_modes>`.


Scene Preview
-------------

When using a Scene Strip in the sequencer,
these settings in the Properties Panel determine how they are shown in the preview window.

Open GL Preview
   If you have Open GL, enable this setting to use Open GL for the scene preview renders.
   The drop down menu allows you to change how the Scene is displayed (Bounding Box, Wireframe, Solid, Textured).


View Settings
-------------

The View Settings section in the properties panel contains addition display options.

Show Overexposed
   Increasing this number to 1 or greater displays a striped overlay to the preview image,
   showing where it is overexposed. A higher number gives a higher threshold for marking overexposure.

Safe Margin
   Displays an overlay on the preview, marking where title safe region is.

Proxy Render Size
   Draws preview using full resolution or different proxy resolutions.
   Render resolution is determined in the render settings panel. Using a smaller preview size will increase speed.


Refresh View
------------

Certain operations, like moving an object in 3D View,
may not force the Sequencer to call for a refresh of the rendered image
(since the movement may not affect the rendered image). If an image or video, used as a strip,
is changed by some application outside of Blender,
Blender has no real way of being notified from your operating system.
To force Blender to re-read in files, and to force a re-render of the 3D View, click the
Refresh button to force Blender to update and synchronize all cached images and compute the
current frame.


Selecting Strips
================

The Select Menu helps you select strips in different ways.

Strips to the Left
   Select all strips to the left of the currently selected strip.
Strips to the Right
   Select all strips to the right of the currently selected strip.
Select Surrounding Handles :kbd:`Alt-Ctrl-RMB`
   Select both handles of the strip, plus the neighboring handles on the immediately adjoining strips.
   Select with this method to move a strip that is between to others without affecting the selected strip's length.
Left Handle :kbd:`Alt-RMB`
   Select the left handle of the currently selected strip.
Right Handle :kbd:`Ctrl-RMB`
   Select the right handle of the currently selected strip.
Linked
   Select all strips linked to the currently selected strip
Select All :kbd:`A`
   Selects all the strips loaded.
Select Inverse
   Inverts the current selection.
Border Select :kbd:`B`
   Begins the *Box* mode select process.
   Click and drag a rectangular lasso around a region of strips in your Sequence workspace.
   When you release the mouse button, the additional strips will be selected.


Moving and Modifying Strips
===========================

:kbd:`G` Moves the selected strip(s) in time or in channels.
Move your mouse horizontally (left/right) to change the strip's position in time.
Move vertically (up/down) to change channels.


- To snap while dragging hold :kbd:`Ctrl`
- To 'ripple edit' (Make room for strips you drag) hold :kbd:`Alt` when placing a strip.

If you have added a strip by mistake or no longer want it,
delete it by pressing *X* or using this menu option.

*Duplicate* a strip to make an unlinked copy; drag it to a time and channel, and drop it by :kbd:`LMB` click.

The Strip Menu contains additional tools for working with strips:

- *Grab/Move*
- *Grab/Extend from Frame*
- *Cut (hard) at frame*
- *Cut (soft) at frame*
- *Separate Images*
- *Deinterlace Movies*
- *Duplicate Strips*
- *Erase Strips*
- *Set Render Size*
- *Make Meta Strip*
- *UnMeta Strip*
- *Reload Strips*
- *Reassign Inputs*
- *Swap Inputs*
- *Lock Strips*
- *UnLock Strips*
- *Mute Strips*
- *Un-Mute Strips*
- *Mute Deselected Strips*
- *Snap Strips*
- *Swap Strips*


Snap to Frame
-------------

:kbd:`Shift-S`
Position your cursor (vertical green line) to the time you want.
Snap to current frame to start a strip exactly at the beginning of the frame.
If your Time display is in seconds,
you can get to fractional parts of a second by zooming the display;
you can get all the way down to an individual frame.


Separate Images to Strips
-------------------------

:kbd:`Y` Converts the strip into multiple strips, one strip for each frame.
Very useful for slide shows and other cases where you want to bring in a set on non-continuous images.


Editing Strips
--------------

- :kbd:`RMB` in the middle of the strip selects the **entire** strip;
  holding it down (or pressing :kbd:`G` rab) and then moving the mouse drags a strip around.

- :kbd:`RMB` on the left arrow of the strip selects the **start** frame offset for that strip;
  holding it down (or pressing :kbd:`G` rab and then moving the mouse left/right
  changes the start frame within the strip by the number of frames you move it:

  - If you have a 20-image sequence strip, and drag the left arrow to the right by 10 frames,
    the strip will start at image 11 (images 1 to 10 will be skipped).
    Use this to clip off a rollup or useless lead-in.
  - Dragging the left arrow left will create a lead-in (copies) of the first frame for as many frames as you drag it.
    Use this when you want some frames for transitions to the this clip.


- :kbd:`RMB` on the right arrow of the strip selects the **end** frame of the strip;
  holding it down (or pressing :kbd:`G` rab) and then moving the mouse changes the ending frame within the strip:

  - Dragging the right arrow to the left shortens the clip;
    any original images at the tail are ignored. Use this to quickly clip off a rolldown.
  - Dragging the right arrow right extends the clip.
    For movies and images sequences, more of the animation is used until exhausted.
    Extending a clip beyond its end results in Blender making a copy of the last image.
    Use this for transitions out of this clip.

.. note:: Multiple selection

   You can select several (handles of) strips by :kbd:`Shift-RMB` clicking: when you press :kbd:`G`,
   everything that's selected will move with your mouse- this means that,
   for example, you can at the same time move a strip, shorten two others, and extend a forth one.


- STRIP EXTEND. With a number of Image strips selected, pressing :kbd:`E` enters EXTEND mode.
  All selected strip handles to the "mouse side" of the current frame indicator will transform together,
  allowing you to essentially extend the strips that fall exactly on the
  current frame marker and having all others adjust to compensate.

While splicing two strips happens just by placing them finish-to-start,
cut a strip by pressing :kbd:`K` to cut. At the selected frame for the selected strips,
:kbd:`K` cuts them in two. Use Cut to trim off roll-ups or lead-ins, or roll-downs or extra film shot.


.. note:: Note on the 'cut'

   When you 'cut' a strip, you don't really make a cut like it was with the 'old editing' on real film.
   In fact, you make a copy of the strip: the end of the original one is 'winded' to the cut point,
   as with the beginning of the new copy.

   For example, imagine that you have a strip of **50** frames,
   and that you want to delete the first ten ones.
   You have to go to the ``11`` :sup:`th` frame, and press :kbd:`K`;
   the cut 'divides' your strip in two parts. You now can select the first small part
   (frames ``1`` to ``10``), and delete it press :kbd:`X`.

   You might think that you have really erased the frames **1** to **10**,
   but there are still there, 'winded', as in a film reel, under your frame **11** :
   you just have deleted one of the two copies of your strip created by the 'cut'.
   And you can at any time get your 'lost' frames back
   (just :kbd:`RMB` -click on the left arrow of the strip,
   then :kbd:`G` grab it to the left to display the desired number of frames again (or to
   the right to 'hide' more frames - this is another way to remove frames at the beginning/end of
   a strip!).

   This is at the heart of nearly every editor solution, and that's quite handy!


.. note:: Action Stops

   When extending the start beyond the beginning or end after the ending,
   keep in mind that only the last image copies, so when viewed, action will stop on that frame.
   Start your transition (fade, cross) a little early while action is
   still happening so that the stop action is not that noticeable
   (unless, of course, you want it to be, like the 80's drama sitcoms).


Change the length of an effect strip by changing the start/end frame of the origin strips.


Copy and Paste
--------------

You can copy a clip and paste it using the two header buttons.


Meta Strips
-----------

A Meta-Strip is a group of strips. Select all the strips you want to group,
and :kbd:`Ctrl-G` to group them into one meta.
The meta spans from the beginning of the first strip to the end of the last one,
and condenses all channels into a single strip, just like doing a mixdown in audio software.
Separating (ungrouping) them restores them to their relative positions and channels.

The default blend mode for a meta strip is Replace. There are many cases where this alters
the results of the animation so be sure to check the results and adjust the blend mode if
necessary.

One convenient use for meta strips is when you want to apply the same effect to multiple
strips. For example: scaling a loop. Until blender gets a Loop effect,
the only way to loop a clip is to duplicate it several times.
If the clip needs any transforms (like scaling or translating an animated watermark or source
material in a different aspect ratio) it is much more convenient to apply a single set of
transforms to a meta strip built from the repeated duplicates than apply copies of those
transforms to each instance in the loop.

It is possible to edit the contents of a meta strip by selecting it and pressing Tab.
You can press Tab again to finish editing that strip. Since meta strips can be nested, to pop
out one level of meta strip make sure you do not have a meta strip as the active strip when
you press :kbd:`Tab`.
