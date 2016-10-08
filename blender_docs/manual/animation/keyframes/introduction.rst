
************
Introduction
************

A *Keyframe* is simply a marker of time which stores the value of a property.

For example, a Keyframe might define that the horizontal position of a cube is at 3m on frame 1.

The purpose of a Keyframe is to allow for interpolated animation, meaning, for example,
that the user could then add another key on frame 10, specifying the cube's horizontal position at 20m,
and Blender will automatically determine the correct position of the cube for all the frames between frame 1 and 10
depending on the chosen interpolation method (e.g. Linear, Bézier, Quadratic, etc...).


.. _keyframe-type:

Keyframe Types
==============

For visually distinguish regular keyframes from different animation events or states (extremes, breakdowns, or other in betweens)
there is the possibility the applying different colors on them for visualization.

Keyframe (yellow diamond)
   Normal keyframe.
Breakdown (cyan small diamond)
   Breakdown state. e.g. for transitions between key poses.
Moving Hold (slight orange diamond)
   ToDo.
Extreme (red big diamond)
   An ‘extreme’ state, or some other purpose as needed.
Jitter (green tiny diamond)
   A filler or baked keyframe for keying on ones, or some other purpose as needed.
