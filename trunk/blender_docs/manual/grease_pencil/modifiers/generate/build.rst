
**************
Build Modifier
**************

The *Build* modifier make strokes appear/disappear in a frame range to
create the illusion of animating lines being drawn/erased.


Options
=======

.. figure:: /images/grease_pencil_modifiers_generate_build_panel.png
   :align: right

   The Build modifier.

Mode
   Determines how many strokes are being animated at a time.

   Sequential
      Strokes appear/disappear one after the other, but only a single one changes at a time.
   Concurrent
      Multiple stroke appear/disappear at a time.

      If enabled you can set the *Time Alignment*.

      Time Alignment
         Align Start
            All stroke start at the same time (i.e. short strokes finish earlier).
         Align End
            All stroke end at the same time (i.e. short strokes start later).


Transition
----------

Determines the animation type to build the strokes.

Grow
   Shows points in the order they occur in each stroke, from first to last stroke.
   (Simulating lines being drawn.)
Shrink
   Hide points from the end of each stroke to the start, from last to first stroke.
   (Simulating lines being erased.)
Fade
   Hide points in the order they occur in each stroke, from first to last stroke.
   (Simulating ink fading or vanishing after getting drawn.)


Frame Range
-----------

Start Delay
   Number of frames after each *Grease Pencil* keyframe before the modifier has any effects.

Length
   Maximum number of frames that the build effect can run for.
   (unless another *Grease Pencil* keyframe occurs before this time has elapsed).

Restrict Frame range
   If enabled, only modify strokes during the specified frame range.

   Start/End
      Determines the start and end frame for the build effect.


Influence Filter
----------------

Layer
   Restricts the effect only to one layer or to any layers that share the same pass index.
