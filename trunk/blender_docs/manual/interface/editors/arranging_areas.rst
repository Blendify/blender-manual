
***************
Arranging Areas
***************

Blender uses a novel screen-splitting approach to arrange areas.
The application window is always a rectangle on your desktop.
It divides it up into a number of re-sizable areas.
An area contains the workspace for a particular type of editor, like a 3D View editor,
or an Outliner editor.
The idea is that you split up that big application window into any number of smaller
(but still rectangular) non-overlapping area. That way,
each area is always fully visible,
and it is very easy to work in one area and hop over to work in another.


Maximizing an Area
==================

You can maximize an area to fill the whole application window with 
:menuselection:`View --> Toggle Full Screen` menu entry.
To return to normal size,
use again :menuselection:`View --> Toggle Full Screen`.
A quicker way to achieve this is to use :kbd:`Shift-Spacebar`,
:kbd:`Ctrl-Down` or :kbd:`Ctrl-Up` to toggle between maximized and areas.

.. note::

   The area your mouse is currently hovering over is the one that will be maximized using
   the keyboard shortcuts.


Splitting an Area
=================

.. figure:: /images/interface-window_system-arranging_areas-split_widget.jpg


In the upper right and lower left corners of a area are the area splitter widgets,
and they look like a little ridged thumb grip. It both splits and combines areas.
When you hover over it, your cursor will change to a cross.
:kbd:`LMB` and drag it to the left to split the area vertically,
or downward to split it horizontally.


Joining Two Areas
=================

In order to merge two areas,
they must be the same dimension in the direction you wish to merge. For example,
if you want to combine two areas that are side-by-side, they must be the same height.
If the one on the left is not the same as the one on the right,
you will not be able to combine them horizontally.
This is so that the combined area space results in a rectangle.
The same rule holds for joining two areas that are stacked on top of one another;
they must both have the same width. If the one above is split vertically,
you must first merge those two, and then join the bottom one up to the upper one.

.. figure:: /images/interface-window_system-arranging_areas-join_areas.jpg
   :width: 250px


To merge the current area with the one above it
(in the picture the properties editor is being merged "over" the Outliner),
hover the mouse pointer over the area splitter. When the pointer changes to a cross,
:kbd:`LMB` click and drag up to begin the process of combining.
The upper area will get a little darker, overlaid with an arrow pointing up.
This indicates that the lower (current) area will "take over" that darkened area space.
Let go of the :kbd:`LMB` to merge. If you want the reverse to occur,
move your mouse cursor back into the original (lower) area,
and it will instead get the arrow overlay.

In the same way, windows may be merged left to right or vice versa.

If you press :kbd:`Esc` before releasing the mouse, the operation will be aborted.


Changing Area Size
==================

You can resize areas by dragging their borders with :kbd:`LMB`. Simply move your
mouse cursor over the border between two areas until it changes to a double-headed arrow,
and then click and drag.


Swapping Contents
=================

You can swap the contents between two areas with :kbd:`Ctrl-LMB` on one of the
splitters of the initial area, dragging towards the target area,
and releasing the mouse there.
The two areas do not need to be side by side, though they must be inside the same window.


Opening New Windows
===================

You may wish to have a new window. This can be useful, for instance,
if you have multiple monitors and want them to show different information on the same instance of Blender.

A new window can be created from :menuselection:`Window --> Duplicate Window`.

You can also create a new window from an existing area by :kbd:`Shift-LMB` on a area splitter,
and dragging slightly.
A new window pops up, with its maximize, minimize, close and other buttons
(depending on your platform), containing a single area with a duplicate of the initial window
on which you performed the operation.

Once you have that new window, you can move it to the other monitor
(or leave it in the current one); you can resize it (or keep it unchanged);
you can also arrange its contents in the same way discussed so far
(split and resize areas, and tune them as needed), and so on.
