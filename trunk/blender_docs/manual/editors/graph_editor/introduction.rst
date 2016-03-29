
************
Graph Editor
************

The graph editor is the main animation editor.
It allows you to modify the animation for any properties using :doc:`F-Curves </editors/graph_editor/fcurves>`.

The graph editor has two modes, *F-Curve* for :doc:`Actions </animation/actions>`,
and *Drivers* for :doc:`Drivers </animation/drivers>`. Both are very similar in function.


.. figure:: /images/editors_graph_example.jpg
   :width: 600px

   The Graph Editor.


Curve Editor Area
=================

Here you can see and edit the curves and keyframes.


.. figure:: /images/Graph_Curve.jpg

   A curve with different types of interpolation.


See :doc:`F-Curves </editors/graph_editor/fcurves>` for more info.


Navigation
----------

As with most windows, you can:

*Pan* :kbd:`MMB`
   Pan the view vertically (values) or horizontally (time) with click and drag.

*Zoom* :kbd:`Wheel`
   Zoom in and out with the mouse wheel.

*Scale View* :kbd:`Ctrl-MMB`
   Scale the view vertically or horizontally.

These are some other useful tools.

*View All* :kbd:`Home`
   Reset viewable area to show all keyframes.

*View Selected* :kbd:`NumpadPeriod`
   Reset viewable area to show selected keyframes.


2D Cursor
---------

.. figure:: /images/Graph_2DCursor.jpg

   Graph Editor 2D Cursor.


The current frame is represented by a green vertical line called the *Time Cursor*.

As in the :doc:`Timeline </editors/timeline>`,
you can change the current frame by pressing or holding :kbd:`LMB`.

The green horizontal line is called the *Cursor*.
This can be disabled via the *View Menu* or the *View Properties* panel.

The *Time Cursor* and the *Cursor* make the *2D Cursor*.
The *2D Cursor* mostly used for editing tools.


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


.. figure:: /images/Graph_Markers.jpg

   Graph Editor Markers.


*Markers* can be modified in the *Graph Editor* though its usually best to use the *Timeline*.

See :doc:`Markers </animation/markers>` for more info.


Header
======

Here you'll find.


- The menus.
- Graph Editor mode.
- View controls.
- Curve controls.

Header Controls
---------------

.. figure:: /images/Graph_Header_Mode.jpg

   Graph Mode.


Mode
   F-Curve for :doc:`Actions </animation/actions>`,
   and Drivers for :doc:`Drivers </animation/drivers>`.


.. figure:: /images/Graph_Header_View.jpg

   View Controls.


View controls
   Show Only Selected
      Only include curves related to the selected objects and data.

   Show Hidden
      Include curves from objects/bones that are not visible.

   Show Only Errors
      Only include curves that are disabled or have errors.

   Search Filter
      Only include curves with keywords contained in the search text.

   Type Filter
      Filter curves by property type.

   Normalize
      Normalize curves so the maximum or minimum point equals 1.0 or -1.0.

   Auto
      Automatically recalculate curve normalization on every curve edit.


.. figure:: /images/Graph_Header_Edit.jpg

   Curve Controls.


Curve controls
   Auto Snap
      Auto snap the keyframes for transformations.

      *No Auto-Snap*
      *Time Step*
      *Nearest Frame*
      *Nearest Marker*

   Pivot Point
      Pivot point for rotation.

      Bounding Box Center
         Center of the select keyframes.

      2D Cursor
         Center of the *2D Cursor*. *Time Cursor* + *Cursor*.

      Individual Centers
         Rotate the selected keyframe *Bezier* handles.

   *Copy Keyframes* :kbd:`Ctrl-C`
      Copy the selected keyframes to memory.

   *Paste Keyframes* :kbd:`Ctrl-V`
      Paste keyframes from memory to the current frame for selected curves.

   Create Snapshot
      Creates a picture with the current shape of the curves.


Channels Region
===============

.. figure:: /images/Graph_Channels.jpg

   Channels Region.


The channels region is used to select and manage the curves for the graph editor.

Hide curve
   Represented by the eye icon.

Deactivate/Mute curve
   Represented by the speaker icon.

Lock curve from editing
   Represented by the padlock icon.


Channel Editing
---------------

*Select channel* :kbd:`LMB`

*Multi Select/Deselect* :kbd:`Shift-LMB`

*Toggle Select All* :kbd:`A`

*Border Select* (:kbd:`LMB` drag) or :kbd:`B` (:kbd:`LMB` drag)

*Border Deselect* (:kbd:`Shift-LMB` drag) or :kbd:`B` (:kbd:`Shift-LMB` drag)

*Delete selected* :kbd:`X` or :kbd:`Delete`

*Lock selected* :kbd:`Tab`

*Make only selected visible* :kbd:`V`

*Enable Mute Lock selected* :kbd:`Shift-Ctrl-W`

*Disable Mute Lock selected* :kbd:`Alt-W`

*Toggle Mute Lock selected* :kbd:`Shift-W`


Properties Region
=================

The panels in the *Properties Region*.


View Properties Panel
---------------------

.. figure:: /images/Graph_View_Properties_Panel.jpg

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


Active F-Curve Panel
--------------------

.. figure:: /images/Graph_Active_Fcurve_Panel.jpg

   Active F-Curve Panel.


This panel displays properties for the active *F-Curve*.

*Channel Name* (X Location)
   *ID Type* + Channel name.

RNA Path
   *RNA Path* to property + Array index.

Color Mode
   *Color Mode* for the active *F-Curve*.

   Auto Rainbow
      Increment the *HUE* of the *F-Curve* color based on the channel index.

   Auto XYZ to RGB
      For property sets like location xyz, automatically set the set of colors to red, green, blue.

   User Defined
      Define a custom color for the active *F-Curve*.


Active Keyframe Panel
---------------------

.. figure:: /images/Graph_Active_Keyframe_Panel.jpg

   Active Keyframe Panel.


Interpolation
   Set the forward interpolation for the active keyframe.

   Constant
      Keep the same value till the next keyframe.

   Linear
      The difference between the next keyframe.

   Bezier
      Bezier interpolation to the next keyframe.

Key
   Frame
      Set the frame for the active keyframe.

   Value
      Set the value for the active keyframe.

Left Handle
   Set the position of the left interpolation handle for the active keyframe.

Right Handle
   Set the position of the right interpolation handle for the active keyframe.


Drivers Panel
-------------

.. figure:: /images/Graph_Drivers_Panel.jpg

   Drivers Panel.


See :ref:`animation_drivers_panel` for more info.


Modifiers Panel
---------------

.. figure:: /images/Graph_Modifiers_Panel.jpg

   Modifiers Panel.


See :doc:`F-Modifiers </editors/graph_editor/fmodifiers>` for more info.


.. seealso::

   - :doc:`Graph Editor - F-Curves </editors/graph_editor/fcurves>`
   - :doc:`Graph Editor - F-Modifiers </editors/graph_editor/fmodifiers>`
   - :doc:`Actions </animation/actions>`
   - :doc:`Drivers </animation/drivers>`
