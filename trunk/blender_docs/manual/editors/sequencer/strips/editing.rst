
*******
Editing
*******

Grab/Move
=========

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`Strip --> Grab/Move`
   | Hotkey:   :kbd:`G`


:kbd:`G` Moves the selected strip(s) in time or in channels.
Move your mouse horizontally (left/right) to change the strip's position in time.
Move vertically (up/down) to change channels.


- To snap while dragging hold :kbd:`Ctrl`
- To "ripple edit" (Make room for strips you drag) hold :kbd:`Alt` when placing a strip.


Editing Strips
--------------

- The *entire* strip could be selected by clicking :kbd:`RMB` in the middle of the strip;
  holding it down (or pressing :kbd:`G` rab) and then moving the mouse drags a strip around.
- The *start frame offset* for that strip could be selected by clicking :kbd:`RMB` on the left arrow of the strip;
  holding it down (or pressing :kbd:`G` rab and then moving the mouse left/right
  changes the start frame within the strip by the number of frames you move it:

  - If you have a 20-image sequence strip, and drag the left arrow to the right by 10 frames,
    the strip will start at image 11 (images 1 to 10 will be skipped).
    Use this to clip off a rollup or useless lead-in.
  - Dragging the left arrow left will create a lead-in (copies) of the first frame for as many frames as you drag it.
    Use this when you want some frames for transitions to the this clip.

- The *end frame* of the strip could be selected by clicking :kbd:`RMB` on the right arrow of the strip;
  holding it down (or pressing :kbd:`G` rab) and then moving the mouse changes the ending frame within the strip:

  - Dragging the right arrow to the left shortens the clip;
    any original images at the tail are ignored. Use this to quickly clip off a rolldown.
  - Dragging the right arrow right extends the clip.
    For movies and images sequences, more of the animation is used until exhausted.
    Extending a clip beyond its end results in Blender making a copy of the last image.
    Use this for transitions out of this clip.

  .. note:: Multiple selection

     You can select several (handles of) strips by :kbd:`Shift-RMB` clicking: when you press :kbd:`G`,
     everything that is selected will move with your mouse- this means that,
     for example, you can at the same time move a strip, shorten two others, and extend a forth one.


Grab/Extend from Frame
======================

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`Strip --> Grab/Extend from Frame`
   | Hotkey:   :kbd:`E`

With a number of strips selected, pressing :kbd:`E` lets you interactively extend the strips.
This is is similar to grabbing but is useful for extending (or shortening) time around the current frame.

All selected strip handles to the "mouse side" of the current frame indicator will transform together,
so you can change the duration of the current frame.


Tools
=====

Erase Strips :kbd:`X`
   If you have added a strip by mistake or no longer want it,
   delete it by pressing :kbd:`X` or using this menu option.

Duplicate Strips :kbd:`Shift-D`
   Duplicate a strip to make an unlinked copy;
   drag it to a time and channel, and drop it by :kbd:`LMB` click.

The Strip Menu contains additional tools for working with strips:

- Cut (hard) at frame
- Deinterlace Movies
- Set Render Size
- Make Meta Strip
- UnMeta Strip
- Reload Strips
- Reassign Inputs
- Swap Inputs
- Lock Strips
- UnLock Strips
- Mute Strips
- Un-Mute Strips
- Mute Deselected Strips
- Swap Strips


Snap Strips
===========

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`Strip --> Snap Strips`
   | Hotkey:   :kbd:`Shift-S`

Position your cursor (vertical green line) to the time you want.
Snap to current frame to start a strip exactly at the beginning of the frame.
If your Time display is in seconds,
you can get to fractional parts of a second by zooming the display;
you can get all the way down to an individual frame.


Separate Images
===============

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`Strip --> Separate Images`
   | Hotkey:   :kbd:`Y`

Converts the strip into multiple strips, one strip for each frame.
Useful for slide shows and other cases where you want to bring in a set on non-continuous images.


Cut (soft) at Frame
===================

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`Strip --> Cut (soft) at Frame`
   | Hotkey:   :kbd:`K`

While splicing two strips happens just by placing them finish-to-start,
cut a strip by pressing :kbd:`K` to cut. At the selected frame for the selected strips,
:kbd:`K` cuts them in two. Use Cut to trim off roll-ups or lead-ins, or roll-downs or extra film shot.

.. note:: Note on the *Cut*

   When you cut a strip, you do not really make a cut like it cutting a real of film.
   In fact, you make a copy of the strip: the end of the original one is "winded" to the cut point,
   as with the beginning of the new copy.

   For example, imagine that you have a strip of 50 frames,
   and that you want to delete the first ten ones.
   You have to go to frame 11, and press :kbd:`K`;
   the cut divides your strip in two parts. You now can select the first small part
   (frame 1 to frame 10), and delete it press :kbd:`X`.

   You might think that you have really erased the frames (1 to 10),
   but there are still there, winded, as in a film reel, under your frame 11:
   you just have deleted one of the two copies of your strip created by the cut.
   And you can at any time get your lost frames back
   (just :kbd:`RMB` click on the left arrow of the strip,
   then :kbd:`G` grab it to the left to display the desired number of frames again (or to
   the right to hid more frames -- this is another way to remove frames at the beginning/end of a strip!).

   This is at the heart of nearly every editor solution, and that is quite handy!

.. note:: Action Stops

   When extending the start beyond the beginning or end after the ending,
   keep in mind that only the last image copies, so when viewed, action will stop on that frame.
   Start your transition (fade, cross) a little early while action is
   still happening so that the stop action is not that noticeable.

Change the length of an effect strip by changing the start/end frame of the origin strips.


Copy and Paste
--------------

You can copy a clip and paste it using the two header buttons.
