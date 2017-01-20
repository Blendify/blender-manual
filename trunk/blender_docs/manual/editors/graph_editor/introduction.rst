
************
Introduction
************

The Graph editor is the main animation editor.
It allows you to modify the animation for any properties using
:doc:`F-Curves </editors/graph_editor/fcurves/introduction>`.

The graph editor has two modes, *F-Curve* for :doc:`Actions </animation/actions>`,
and *Drivers* for :doc:`Drivers </animation/drivers/index>`. Both are very similar in function.

.. figure:: /images/editors_graph_example.jpg
   :width: 600px

   The Graph Editor.


Curve View
==========

Here you can see and edit the curves and keyframes.

.. figure:: /images/graph_curve.png

   A curve with different types of interpolation.


See :doc:`F-Curves </editors/graph_editor/fcurves/introduction>` for more info.


Navigation
----------

As with most editors, you can:

Pan
   Pan the view vertically (values) or horizontally (time) with click and drag (:kbd:`MMB`).
Zoom
   Zoom in and out with the mouse wheel (:kbd:`Wheel`).
Scale View
   Scale the view vertically or horizontally (:kbd:`Ctrl-MMB`).

These are some other useful tools.

View All
   Reset viewable area to show all keyframes (:kbd:`Home`).
View Selected
   Reset viewable area to show selected keyframes (:kbd:`NumpadPeriod`).


2D Cursor
---------

.. figure:: /images/graph_2dcursor.png

   Graph Editor 2D Cursor.


The current frame is represented by a green vertical line called the *Time Cursor*.

As in the :doc:`Timeline </editors/timeline>`,
you can change the current frame by pressing or holding :kbd:`LMB`.

The green horizontal line is called the *Cursor*.
This can be disabled via the *View Menu* or the *View Properties* panel.

The *Time Cursor* and the *Cursor* make the *2D Cursor*.
The *2D Cursor* is mostly used for editing tools.


View Axes
---------

For *Actions* the X-axis represents time,
the Y-axis represents the value to set the property.

For *Drivers* the X-axis represents the *Driver Value*,
the Y-axis represents the value to set the property.

Depending on the selected curves, the values have different meaning:
For example rotation properties are shown in degrees,
location properties are shown in Blender Units.
Note that *Drivers* use radians for rotation properties.


Markers
-------

Like with most animation editors, markers are shown at the bottom of the editor.

.. figure:: /images/editors_graph-editor_introduction_markers.png

   Graph Editor Markers.


*Markers* can be modified in the *Graph Editor* though it's usually best to use the *Timeline*.

See :doc:`Markers </animation/markers>` for more info.


Header
======

Mode
   F-Curve for :doc:`Actions </animation/actions>`,
   and Drivers for :doc:`Drivers </animation/drivers/index>`.

   .. figure:: /images/graph_header_mode.jpg

      Graph Mode.


View Controls
-------------

.. figure:: /images/editors_graph-editor_introduction_header_view.png

   View Controls.

Show Only Selected (mouse cursor icon)
   Only include curves related to the selected objects and data.
Show Hidden (ghost icon)
   Include curves from objects/bones that are not visible.
Show Only Errors (livesaver icon)
   Only include curves and drivers that are disabled or have errors.
   Useful for debugging.
Search Filter (magnifying glass icon)
   Only include curves with keywords contained in the search field.
Type Filter
   Filter curves by property type.
Normalize
   Normalize curves so the maximum or minimum point equals 1.0 or -1.0.

   Auto
      Automatically recalculate curve normalization on every curve edit.
      This is useful to prevent curves from jumping after tweaking it.


Curve Controls
--------------

.. figure:: /images/editors_graph-editor_introduction_header_edit.png

   Curve Controls.

Auto Snap
   Auto snap the keyframes for transformations.

   - No Auto-Snap
   - Frame Step
   - Second Step
   - Nearest Frame
   - Nearest Second
   - Nearest Marker

Pivot Point
   Pivot point for rotation.

   Bounding Box Center
      Center of the selected keyframes.
   2D Cursor
      Center of the *2D Cursor*. *Time Cursor* + *Cursor*.
   Individual Centers
      Rotate the selected keyframe *Bézier* handles.

Copy Keyframes :kbd:`Ctrl-C`
   Copy the selected keyframes to memory.
Paste Keyframes :kbd:`Ctrl-V`
   Paste keyframes from memory to the current frame for selected curves.
Create Snapshot (ghost icon)
   Creates a picture with the current shape of the curves.


Channels Region
===============

.. figure:: /images/editors_graph-editor_introduction_channels-region.png

   Channels Region.


The channels region is used to select and manage the curves for the graph editor.

Pin (pin icon)
   ToDo.
Hide (eye icon)
   Hides the channel(s)/curve.
Modifiers (wrench icon)
   Deactivates the F-Modifiers of the curve or all curves in the channel.
Mute (speaker icon)
   Deactivates the channel/curve.
Lock (padlock icon)
   Toggle channel/curve from being editable.


Channel Editing
---------------

- Select channel: :kbd:`LMB`
- Multi Select/Deselect: :kbd:`Shift-LMB`
- Toggle Select All: :kbd:`A`
- Border Select: (:kbd:`LMB` drag) or :kbd:`B` (:kbd:`LMB` drag)
- Border Deselect: (:kbd:`Shift-LMB` drag) or :kbd:`B` (:kbd:`Shift-LMB` drag)
- Delete selected: :kbd:`X` or :kbd:`Delete`
- Lock selected: :kbd:`Tab`
- Make only selected visible: :kbd:`V`
- Enable Mute Lock selected: :kbd:`Shift-Ctrl-W`
- Disable Mute Lock selected: :kbd:`Alt-W`
- Toggle Mute Lock selected: :kbd:`Shift-W`


Properties Region
=================

The panels in the *Properties Region*.


View Tab
--------

View Properties Panel
---------------------

.. figure:: /images/graph_view_properties_panel.png

   View Properties Panel.


Show Cursor
   Show the vertical *Cursor*.
Cursor from Selection
   Set the *2D cursor* to the center of the selected keyframes.
Cursor X
   *Time Cursor* X position.

   To Keys
      Snap selected keyframes to the *Time Cursor*.
Cursor Y
   Vertical *Cursor* Y position.

   To Keys
      Snap selected keyframes to the *Cursor*.


Further Tabs
------------

F-Curve Tab
   See :doc:`F-Curve </editors/graph_editor/fcurves/properties>`.
Drivers Tab
   See :doc:`/animation/drivers/drivers_panel`.
Modifiers Tab
   See :doc:`F-Modifiers </editors/graph_editor/fcurves/fmodifiers>`.

.. seealso::

   :doc:`Actions </animation/actions>`
