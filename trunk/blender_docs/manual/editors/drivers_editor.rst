
************
Introduction
************

The Drivers Editor allows users to drive one property with another.
:doc:`F-Curves </editors/graph_editor/fcurves/introduction>`.

.. figure:: /images/editors_graph-editor_introduction_example.png

   The Drivers Editor.


Main Region
===========

The main view allows you to view and edit Driver F-curves.
An F-Curve has several key parts:

Axes
   The curve defines the relationship between two properties: The current (driven) property (Y axis) and the driver (X axis).

   See :doc:`F-Curves </editors/graph_editor/fcurves/index>`.

Handles
   Each point on the driver curve has a handle that helps determine the relationship between the two values.
   They can be selected and modified to change the shape of the curve.

   See :ref:`editors-graph-fcurves-settings-handles` for more information.

.. figure:: /images/editors_graph-editor_fcurves_introduction.png

   A simple driver.

.. seealso::

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

In addition, you can also use the scrollbars to pan and zoom the view. 


.. _graph_editor-2d-cursor:
.. _bpy.types.SpaceGraphEditor.cursor:



Header
======



View Controls
-------------

.. figure:: /images/editors_graph-editor_introduction_header-view.png

   View controls.

Show Only Selected (mouse cursor icon)
   Only include curves related to the selected objects and data.
Show Hidden (ghost icon)
   Include curves from objects/bones that are not visible.
Show Only Errors (livesaver icon)
   Only include curves and drivers that are disabled or have errors.
   Useful for debugging.
Search Filter (magnifying glass icon) :kbd:`F`
   Only include curves with keywords contained in the search field.

   Multi-Word (az icon)
      Fuzzy/Multi-Word name filtering matches word snippets/partial words,
      instead of having to match everything. It breaks down the search string based on white-space placement.
      e.g. "lo ro" will filter all location and rotation, while "lc rt" will *not* work.
Type Filter
   Filter curves by property type.

   Data-Slock Sort (az icon)
      Objects data-blocks appear in alphabetical order, so that it is easier to find where they occur
      (as well as helping to keep the animation of related objects together in the NLA for instance).

      If you find that your playback speed suffers from this being enabled
      (it should only really be an issue when working with lots of objects in the scene),
      you can turn this off.

Normalize
   Normalize curves so the maximum or minimum point equals 1.0 or -1.0.

   Auto
      Automatically recalculate curve normalization on every curve edit.
      This is useful to prevent curves from jumping after tweaking it.


Curve Controls
--------------

.. figure:: /images/editors_graph-editor_introduction_header-edit.png

   Curve controls.

Proportional Editing :kbd:`O`
   See :doc:`Proportional editing </scene_layout/object/editing/transform/control/proportional_edit>`.
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
      Center of the *2D Cursor*. *Playhead* + *Cursor*.
   Individual Centers
      Rotate the selected keyframe *Bézier* handles.

Copy Keyframes :kbd:`Ctrl-C`
   Copy the selected keyframes to memory.
Paste Keyframes :kbd:`Ctrl-V`
   Paste keyframes from memory to the current frame for selected curves.
Create Snapshot (ghost icon)
   Creates a picture with the current shape of the curves.


Sidebar Region
==============

The panels in the *Sidebar region*.


Drivers Tab
-----------
   See :doc:`/animation/drivers/drivers_panel`.

Modifiers Tab
-------------
   See :doc:`F-Modifiers </editors/graph_editor/fcurves/modifiers>`.


.. (Todo) duplicated here: \editors\graph_editor\fcurves\properties.rst

View Properties Panel
---------------------

.. figure:: /images/editors_graph-editor_fcurves_properties_view-panel.png

   View Properties panel.

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

