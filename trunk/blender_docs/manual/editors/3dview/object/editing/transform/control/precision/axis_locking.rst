
************
Axis Locking
************

.. figure:: /images/editors_3dview_object_editing_transform_control_precision_axis-locking_z-axis.png
   :width: 150px
   :align: right

   Axis locking.

This option limits the transformation to the specified axis.

:doc:`Transformations (translation/scale/rotation) </editors/3dview/object/editing/transform/introduction>`
in *Object Mode* and *Edit Mode*, as well as extrusion in *Edit Mode*)
can be locked to a particular axis relative to the current
:doc:`transform orientation </editors/3dview/object/editing/transform/control/orientations>`.
By locking a transformation to a particular axis you are restricting transformations to a single dimension.


Usage
=====

A locked axis will display in a brighter color than an unlocked axis. For example in the image to the right,
the Z axis is drawn in light blue as movement is constrained to this axis. This example, can be achieved in two ways:


Hotkey
------

The axis of movement can be changed at any time during transformation by typing :kbd:`X`, :kbd:`Y`, :kbd:`Z`.


Pointing
--------

   .. figure:: /images/editors_3dview_object_editing_transform_control_precision_axis-locking_grab-mmb.jpg

      Axis-Constraint in action.

Holding :kbd:`MMB` after starting a transformation lets you select an axis to constrain to.
A visual option to constrain the translation will be available,
showing the three axes in the 3D View space. A dotted white line is used as a pointer.
The axis of choice to confirm the operation
will depend on the highlighted axis about which the :kbd:`MMB` is released.

When you already moved the mouse in the desired direction,
pressing :kbd:`MMB` will lock to the axis which was pointed at.


Axis Locking Types
==================

Axis Locking
------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Object and Edit Modes (translate, rotate, scale, extrude)
   | Hotkey:   :kbd:`X`, :kbd:`Y`, :kbd:`Z` or :kbd:`MMB` after moving the mouse in the desired direction.

Axis locking limits the transformation to a single axis (or forbids transformations along two axes).
An object, face, vertex or other selectable item will only be able to move,
scale or rotate in a single dimension.


.. _view3d-transform-plane-lock:

Plane Locking
-------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Object and Edit Modes (translate, scale)
   | Hotkey:   :kbd:`Shift-X`, :kbd:`Shift-Y`, :kbd:`Shift-Z` or :kbd:`Shift-MMB`
               after moving the mouse in the desired direction.

.. figure:: /images/editors_3dview_object_editing_transform_control_precision_axis-locking_plane-locking.png
   :width: 150px
   :align: right

   Plane locking.


Plane locking locks the transformation to *two* axes
(or forbids transformations along one axis),
thus creating a plane in which the element can be moved or scaled freely.
Plane locking only affects translation and scaling.

Note that for rotation, both axis and plane locking have the same effect because a rotation is
always constrained around one axis.
*Trackball* type rotations :kbd:`R-R` cannot be locked at all.


Axis Locking Modes
------------------

.. figure:: /images/editors_3dview_object_editing_transform_control_precision_axis-locking_locking-modes.png
   :width: 340px

   Axis locking modes.

   A and B show Z axis locking in *Global* and *Normal* orientations respectively.
   C and D show the same situation with face selection,
   E and F with edge selection and G and H with vertex selection.

A single key press constrains movement to the corresponding *Global* axis. A second
key press of the *same* key constrains movement to the current transform orientation
selection (except if it is set to *Global*,
in which case the *Local* orientation is used). Finally,
a third key press of the same key removes constraints.

The orientation can be set
in the :doc:`Transform Orientation </editors/3dview/object/editing/transform/control/orientations>`
selector of the 3D View header.

.. or independent in the Operator panel?

For example, if the current transform orientation is set to *Normal*,
pressing :kbd:`G` to start translation, followed by :kbd:`Z` will lock translation
in the Z direction relative to the *Global* orientation, pressing :kbd:`Z`
again will lock translation to the Z axis relative to the *Normal* orientation.
Pressing :kbd:`Z` again will remove all constraints.
The current mode will be displayed in the left hand side of the *3D View header*.

As can be seen in the *Axis locking modes* image,
the direction of the transform also takes into account the selection.

Note that using a locked axis does not prevent you from using the keyboard to enter
:doc:`numeric transformation </editors/3dview/object/editing/transform/control/precision/numeric_input>` values.
