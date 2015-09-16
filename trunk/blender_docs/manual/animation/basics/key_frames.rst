
**********
Key Frames
**********

A *Key Frame* is simply a marker in time which stores the value of a property.

For example, a key frame might indicate that the horizontal position of a cube is at ``3m`` on frame 1.

The purpose of a key frame is to allow for interpolated animation, meaning, for example,
that the user could then add another key on frame 10, specifying the cube's horizontal position at ``20m``,
and Blender will automatically determine the correct position of the cube for all the frames between frame 1 and 10
depending on the chosen interpolation method (e.g. linear, bezier, quadratic, etc...).


Adding Key Frames
=================

There are several methods of adding new keys. Namely:

- In the 3D View, pressing :kbd:`I` will bring up a menu to choose what to add a key frame to.
- Hovering over a property and pressing :kbd:`I`.
- :kbd:`RMB` a value and choose *Insert Keyframe* from the menu.


Removing Key Frames
===================

There are several methods of removing key frames

- In the 3D View press :kbd:`Alt-I` to remove keys on the current frame for selected objects.
- When the mouse is over a value press :kbd:`Alt-I`.
- :kbd:`RMB` a value and choose *Delete Keyframe* from the menu.


Editing Key Frames
==================

For editing key frames go to the :doc:`Graph Editor </animation/editors/graph>`
or to the :doc:`Dopesheet </editors/dope_sheet/dope_sheet>`
