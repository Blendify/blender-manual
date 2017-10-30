
********
Snapping
********

There are two types of snap operations that you can use in Blender. The first type snaps your
selection or cursor to a given point while the second type is used during transformations
(translate, rotate, scale) and snaps your selection to elements within the scene.


.. _bpy.ops.view3d.snap:

Snap Menu
=========

.. admonition:: Reference
   :class: refbox

   | Mode:     Object, Edit, and Pose Mode
   | Menu:     :menuselection:`Object/Object type --> Snap`
   | Hotkey:   :kbd:`Shift-S`

The *Snap* menu (also available from the 3D header in both *Object Mode* and *Edit Mode*
:menuselection:`Object --> Snap` and :menuselection:`Mesh --> Snap`).
This menu provides a number of options to move the cursor or your selection to a defined point
(the cursor, selection or the grid).

Selection to Grid
   Snaps the currently selected object(s) to the nearest grid point.
Selection to Cursor
   Moves each one of the currently selected object(s) to the cursor location.
Selection to Cursor (Offset)
   Places the selection at the position of the 3D cursor.
   If there are multiple objects selected, they are not moved individually at the cursor position;
   instead, they are centered around the 3D cursor, maintaining their relative distances.
Selection to Active
   Moves the selection to the origin of the active object.

Cursor to Selected
   Places the cursor to the center of the current selection, unless see below.
Cursor to Center
   Places the cursor to the origin of the world (location 0, 0, 0).
Cursor to Grid
   Places the cursor to the nearest grid point.
Cursor to Active
   Places the cursor to the origin of the *active* (last selected) object.

The *Cursor to Selected* option is also affected by the current :ref:`pivot-point-index`. For example:

- With the *Bounding Box Center* pivot point active,
  the *Cursor to Selected* option will snap the 3D cursor to the
  center of the bounding box surrounding the objects' origins.
- When the *Median Point* pivot point is selected,
  *Cursor to Selected* will snap the 3D cursor to the
  `median <https://en.wikipedia.org/wiki/Median>`__ of the object origins.


.. _transform-snap:

Transform Snapping
==================

.. admonition:: Reference
   :class: refbox

   | Mode:     Object, Edit, and Pose Mode
   | Header:   :menuselection:`Snap`
   | Hotkey:   :kbd:`Shift-Tab`

The ability to snap Objects and Mesh element to various types of scene elements during a
transformation is available by toggling the magnet icon (which will turn red)
in the 3D View's header buttons.

.. figure:: /images/editors_3dview_object_editing_transform_control_snap_header-magnet-icon.png

   Magnet icon in the 3D View header (red when enabled).


.. _transform-snap-element:

Snap Element
------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Object, Edit, and Pose Mode
   | Header:    :menuselection:`Snap Element`
   | Hotkey:   :kbd:`Ctrl-Shift-Tab`

.. figure:: /images/editors_3dview_object_editing_transform_control_snap_element-menu.png
   :align: right

   Snap Element menu.

Volume
   Snaps to regions within the volume of the first Object found below the mouse cursor.
   Unlike the other options, this one controls the depth
   (i.e. Z-coordinates in current view space) of the transformed element.
   By toggling the button that appears to the right of the snap target menu (see below),
   target objects will be considered as a whole when determining the volume center.
Face
   Snap to the surfaces of faces in mesh objects. Useful for retopologizing.
Edge
   Snap to edges of mesh objects.
Vertex
   Snap to vertices of mesh objects.
Increment
   Snap to grid points. When in Orthographic view, the snapping increment changes depending on zoom level.

   .. note::

      In this context the grid does not mean the visual grid cue displayed.
      Snapping will use the resolution of the displayed grid,
      but all transformations are relative to the initial position (before the snap operation).


Snap Target
-----------

Snap target options become active when either *Vertex*, *Edge*,
*Face*, or *Volume* is selected as the snap element.
These determine what part of the selection snaps to the target objects.

Active
   Moves the active element (vertex in Edit Mode, object in Object Mode) to the target.
Median
   Moves the median of the selection to the target.
Center
   Moves the current transformation center to the target. Can be used with 3D cursor to snap with an offset.
Closest
   Moves the closest point of the selection to the target.

.. list-table::

   * - .. figure:: /images/editors_3dview_object_editing_transform_control_snap_target-closest.png

          Closest.

     - .. figure:: /images/editors_3dview_object_editing_transform_control_snap_target-active.png

          Active.

     - .. figure:: /images/editors_3dview_object_editing_transform_control_snap_target-median.png

          Median.


Additional Snap Options
-----------------------

.. list-table::

   * - .. figure:: /images/editors_3dview_object_editing_transform_control_snap_options-object-mode.png

          Object Mode.

     - .. figure:: /images/editors_3dview_object_editing_transform_control_snap_options-edit-mode.png

          Edit Mode.

As seen by the yellow highlighted areas in the image above,
additional controls are available to alter snap behavior. These options vary between mode
(Object and Edit) as well as Snap Element. The four options available are:

.. list-table::
   :header-rows: 1
   :widths: 13 87

   * - Icon
     - Details
   * - .. figure:: /images/editors_3dview_object_editing_transform_control_snap_option-icon-rotation.png
          :width: 42px
     - Align rotation with the snapping target.
   * - .. figure:: /images/editors_3dview_object_editing_transform_control_snap_option-icon-project.png
          :width: 42px
     - Project individual elements on the surface of other objects.
   * - .. figure:: /images/editors_3dview_object_editing_transform_control_snap_option-icon-self.png
          :width: 42px
     - Snaps elements to its own mesh.
   * - .. figure:: /images/editors_3dview_object_editing_transform_control_snap_option-icon-whole.png
          :width: 42px
     - Consider Objects as whole when finding volume center.
   * - .. figure:: /images/editors_3dview_object_editing_transform_control_snap_option-icon-absolute.png
          :width: 42px
     - Snap to grid, instead of snapping in increments relative to the current location.


Multiple Snap Targets
^^^^^^^^^^^^^^^^^^^^^

.. figure:: /images/editors_3dview_object_editing_transform_control_snap_target-multiple.png

   Multiple snapping targets.

Once transforming a selection with Snapping on (not just when holding :kbd:`Ctrl`),
you can press :kbd:`A` to mark the current snapping point, then proceed to mark as many other
snapping points as you wish and the selection will be snapped to the average location of all
the marked points.

Marking a point more than once will give it more weight in the averaged location.
