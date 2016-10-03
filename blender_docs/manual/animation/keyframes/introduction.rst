
************
Introduction
************

A *Keyframe* is simply a marker of time which stores the value of a property.

For example, a Keyframe might define that the horizontal position of a cube is at 3m on frame 1.

The purpose of a Keyframe is to allow for interpolated animation, meaning, for example,
that the user could then add another key on frame 10, specifying the cube's horizontal position at 20m,
and Blender will automatically determine the correct position of the cube for all the frames between frame 1 and 10
depending on the chosen interpolation method (e.g. Linear, Bézier, Quadratic, etc...).
