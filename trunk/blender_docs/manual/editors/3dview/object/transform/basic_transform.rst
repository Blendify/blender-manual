
*********************
Basic Transformations
*********************

Grab/Move
=========

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode, Edit Mode, and Pose Mode for the 3D View;
   | Menu:     Context sensitive, :menuselection:`Object Based --> Transform --> Grab/Move`
   | Hotkey:   :kbd:`G`


In Object Mode, the grab/move option lets you translate (move) objects.
It also lets you translate any elements that make up the object within the 3D space of the active 3D View.
Grab/Move works similarly here as it does
in the Node Editor, Graph Editor, UV/Image Editor, Sequencer, etc.

Options and other details will be discussed in their respective sections.

.. figure:: /images/editors_3dview_transform_basics_grab_display-values.png

   Translation Display.


While Grab/Move is active, the amount of change in the X, Y,
and Z co-ordinates is displayed at the bottom left corner of the 3D View editor.

There are two ways to Grab/Move in *3D View*:

- Using shortcuts and combinations of shortcuts.
- Using the *Transform Manipulator Widget*. This can be toggled in the header of the 3D View.


Shortcuts
---------

A quicker way to move objects in 3D space is with :kbd:`G`.
Pressing :kbd:`G` activates "Grab/Move" transformation mode.
The selected object or data then moves freely according to the mouse pointer's location and camera.
Using this shortcut in combination with specific shortcuts which specify a chosen axis gives you
full control over your transformation.

:kbd:`LMB`
   Confirm the move, and leave the object or data at its current location on the screen.
:kbd:`RMB` or :kbd:`Esc`
   Cancel the move, and return the object or data to its original location.


You can also move an object by clicking and holding :kbd:`RMB` on the object to move it.
To confirm the action, press :kbd:`LMB`.

.. Footer: This decimal number is displayed at the bottom left corner of the 3D View editor as it is entered.

.. note::

   This behavior can be changed using *Release Confirms* in the :doc:`User Preferences </preferences/editing>`,
   so that a single :kbd:`RMB` drag can be used to move and confirm.


.. tip::

   Moving an object in Object Mode changes the object's origin.
   Moving the object's vertices/edges/faces in Edit Mode does not change the object's origin.


Rotate
======

.. admonition:: Reference
   :class: refbox

   | Mode:     Object and Edit Modes
   | Menu:     :menuselection:`Object/Mesh/Curve/Surface --> Transform --> Rotate`
   | Hotkey:   :kbd:`R`


Rotation is also known as a spin, twist, orbit, pivot, revolve,
or roll and involves changing the orientation of elements (vertices, edge, face, Object etc)
around one or more axes or the element's Pivot Point.
There are multiple ways to rotate an element which include:

- The keyboard shortcut :kbd:`R`.
- The 3D manipulator widget.
- The Properties region :kbd:`N`.


.. _view3d-transform-trackball:

Trackball Rotation
------------------

A free rotation mode.
Press :kbd:`R`, :kbd:`R` to enable Trackball rotation.


Usage
-----

Rotation using the keyboard shortcut
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

- Use :kbd:`RMB` to select the elements you want to rotate.
- Tap :kbd:`R` once to enter rotation mode.
- Rotate the elements by moving the mouse.
  The closer the mouse is to the elements's center, the higher the rotation influence.
- :kbd:`LMB` click to accept changes.

The amount of rotation will be displayed in the bottom left hand corner of the 3D View editor.

.. figure:: /images/editors_3dview_transform_basics_rotate_display-values.png

   Rotation values.


Scale
=====

.. admonition:: Reference
   :class: refbox

   | Mode:     Object and Edit Modes
   | Menu:     :menuselection:`Object/Mesh/Curve/Surface --> Transform --> Scale`
   | Hotkey:   :kbd:`S`


Pressing :kbd:`S` will enter the *Scale* transformation mode where the
selected element is scaled inward or outward according to the mouse pointer's location. The
element's scale will increase as the mouse pointer is moved away from the Pivot Point and
decrease as the pointer is moved towards it. If the mouse pointer crosses from the original side of the
:doc:`Pivot Point </editors/3dview/object/transform/transform_control/pivot_point/index>` to the opposite side,
the scale will continue in the negative direction and flip the element.

.. figure:: /images/editors_3dview_object_transform_basics_scale_basic-usage.png

   Basic scale usage. From left to right, the panels show: the original Object,
   a scaled down Object, a scaled up Object and a scale-flipped Object.


There are multiple ways to scale an element which include:

- The keyboard shortcut :kbd:`S`
- The 3D manipulator widget
- The Properties menu :kbd:`N`


Usage
-----

Scaling using the keyboard shortcut
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

- Use :kbd:`RMB` to select the elements you want to scale.
- Tap :kbd:`S` once to enter scale mode.
- Scale the elements by moving the mouse.
- :kbd:`LMB` click to accept changes.

The amount of scaling will be displayed in the footer of the 3D View editor.

.. figure:: /images/editors_3dview_transform_basics_scale_display-values.png

   Scale values.

Precision, Axis Locking, Numeric Input,
Snapping and the different types of Pivot Point.

.. seealso::

   For additional information, you may wish to read the 
   :doc:`Transform Control </editors/3dview/object/transform/transform_control/index>`:

   - :doc:`Numerical Transformations </editors/3dview/object/transform/transform_control/precision/numeric_input>`
   - :doc:`Transform Orientations </editors/3dview/object/transform/transform_control/transform_orientations>`
   - :doc:`3D Transform Manipulator </editors/3dview/object/transform/transform_control/manipulators>`.
