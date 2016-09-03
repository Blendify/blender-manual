
*****
Areas
*****

The application window is always a rectangle on your desktop.
It is divided up into a number of re-sizable areas.
An area contains the workspace for a particular type of editor,
like a 3D View Editor, or an Outliner.


Arranging
=========

Blender uses a novel screen-splitting approach to arrange areas.
The idea is that you split up that big application window into any number of smaller
(but still rectangular) non-overlapping area. That way,
each area is always fully visible,
and it is very easy to work in one area and hop over to work in another.


Changing the Size
-----------------

You can resize areas by dragging their borders with :kbd:`LMB`.
Simply move your mouse cursor over the border between two areas,
until it changes to a double-headed arrow, and then click and drag.


Splitting
---------

.. figure:: /images/interface-window_system-arranging_areas-split_widget.jpg


In the upper right and lower left corners of an area are the area splitter widgets,
and they look like a little ridged thumb grip. It both splits and combines areas.

When you hover over it, your cursor will change to a cross (✛).
:kbd:`LMB` and drag it to the left to split the area vertically,
or downward to split it horizontally.


Joining
-------

In order to merge two areas,
they must be the same dimension in the direction you wish to merge.

For example,
if you want to combine two areas that are side-by-side, they must be the same height.
If the one on the left is not the same as the one on the right,
you will not be able to combine them horizontally.
This is so that the combined area space results in a rectangle.

The same rule holds for joining two areas that are stacked on top of one another;
they must both have the same width. If the one above is split vertically,
you must first merge those two, and then join the bottom one up to the upper one.

.. figure:: /images/interface-window_system-arranging_areas-join_areas.png
   :width: 250px
   
   The Properties Editor is being merged "over" the Outliner.


To merge the current area with the one above it
hover the mouse pointer over the area splitter. When the pointer changes to a cross,
:kbd:`LMB` click and drag up to begin the process of combining.
The upper area will get a little darker, overlaid with an arrow pointing up.
This indicates that the lower (current) area will "take over" that darkened area space.
Let go of the :kbd:`LMB` to merge.

If you want the reverse to occur,
move your mouse cursor back into the original (lower) area,
and it will instead get the overlay arrow.

In the same way, windows may be merged left to right or vice versa.

If you press :kbd:`Esc` before releasing the mouse, the operation will be aborted.


Swapping Contents
-----------------

You can swap the contents between two areas with :kbd:`Ctrl-LMB`
on one of the splitters of the initial area, dragging towards the target area,
and releasing the mouse there. The two areas do not need to be side by side,
though they must be inside the same window.


Maximizing
==========

The maximized area fill the whole application window.
It contains the Info Editor and the select area.

You can maximize an area with the
:menuselection:`View --> Toggle Full Screen` menu entry.
To return to normal size,
use again :menuselection:`View --> Toggle Full Screen`.
Or :kbd:`RMB` on the editors header and select *Maximize Area* and
*Tiled Area* to return.
In the Info Editor header the *Back to Previous* button on the right of the menus
also returns to tiled areas.

A quicker way to achieve this is to use the shortcuts: :kbd:`Shift-Spacebar`,
:kbd:`Ctrl-Down` or :kbd:`Ctrl-Up` to toggle between maximized and normal areas.

.. note::

   The area your mouse is currently hovering over is the one that will be maximized using
   the keyboard shortcuts.


Opening New Windows
===================

The new window is a fully functional window, which is part of the same instance of Blender.
This can be useful, i.e. if you have multiple monitors.

A new window can be created from :menuselection:`View --> Duplicate Area into new Window`.

You can also create a new window from an existing area by :kbd:`Shift-LMB`
on the area splitter icon, then drag slightly.

The window can be closed with the OS *Close Window* button.
