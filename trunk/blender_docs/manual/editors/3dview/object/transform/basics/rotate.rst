
******
Rotate
******

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

Basic rotation usage and common options are described below. For additional information, you
may wish to read the :doc:`Transform Control </editors/3dview/object/transform/transform_control/index>` and
:doc:`Read more about Transform Orientations </editors/3dview/object/transform/transform_control/transform_orientations>`
pages which provide more information about options such as Precision, Axis Locking, Numeric Input,
Snapping and the different types of Pivot Point.


Usage
=====

Rotation using the keyboard shortcut
------------------------------------

- Use :kbd:`RMB` to select the elements you want to rotate.
- Tap :kbd:`R` once to enter rotation mode.
- Rotate the elements by moving the mouse.
  The closer the mouse is to the elements's center, the higher the rotation influence.
- :kbd:`LMB` click to accept changes.

The amount of rotation will be displayed in the bottom left hand corner of the 3D View editor.

.. figure:: /images/editors_3dview_transform_basics_rotate_display-values.png

   Rotation values.


Axis Locking
^^^^^^^^^^^^

Rotation can be constrained to a particular axis or axes through the use of
:doc:`Axis Locking </editors/3dview/object/transform/transform_control/precision/axis_locking>`.
To constrain rotation, the following shortcuts can be used:

- :kbd:`R`, :kbd:`X`: Rotate only along the *X-Axis*
- :kbd:`R`, :kbd:`Y`: Rotate only along the *Y-Axis*
- :kbd:`R`, :kbd:`Z`: Rotate only along the *Z-Axis*

Axis locking can also be enabled by pressing the :kbd:`MMB` after enabling rotation and
moving the mouse in the desired direction e.g.

- :kbd:`R`, move the mouse along the X axis, :kbd:`MMB`: Rotate only along the *X-Axis*


Precision
^^^^^^^^^

:doc:`Precise control </editors/3dview/object/transform/transform_control/precision/introduction>` can be had over rotation
through :kbd:`Shift` and :kbd:`Ctrl` to limit rotation to discrete amounts.
You can also enter a :doc:`numerical value </editors/3dview/object/transform/transform_control/precision/numeric_input>`
in degrees to specify the amount of rotation after after initiating a rotation transformation.

- Hold :kbd:`Ctrl` down while performing a rotation to rotate the selected element in 5 degree increments.
- Hold :kbd:`Shift` down while performing a rotation to rotate the selected element in 0.01 degree increments.
- Hold :kbd:`Shift-Ctrl` down while performing a rotation to rotate the selected element in 1 degree increments.
- Press :kbd:`R`, type in a number and press :kbd:`Return` to confirm.
- Press :kbd:`R`, :kbd:`R` to enable Trackball rotation.

.. tip:: Orientation dependant rotations

   By default, all rotations happen around a Global Orientation.
   You can change the rotation orientation by pressing the axis key twice.
   For example, pressing :kbd:`R`, :kbd:`X`,
   :kbd:`X` will by default set rotation to occur around the local orientation.

.. seealso::

   - :doc:`Read more about Precision Control
     </editors/3dview/object/transform/transform_control/precision/introduction>`.
   - :doc:`Read more about Numerical Transformations
     </editors/3dview/object/transform/transform_control/precision/numeric_input>`.
   - :doc:`Read more about Transform Orientations
     </editors/3dview/object/transform/transform_control/transform_orientations>`.


Rotation with the 3D Transform Manipulator
------------------------------------------

.. figure:: /images/widget3d-transform-rotate.jpg

   Rotation Transform Manipulator.


In the 3D View header, ensure that the Transform Manipulator is enabled
(the red, green, and blue triad is selected).
Set the manipulator type to rotation (the highlighted arc icon shown below).

.. figure:: /images/editors_3dview_transform_basics_rotate_header.png


- Select your element with :kbd:`RMB`.
- Use :kbd:`LMB` and drag any of the three colored axes on the rotation manipulator to rotate
  your object along that axis.
  You can also use :kbd:`Shift`, :kbd:`Ctrl` or numeric input with the 3D manipulator widget for further control.
- Your changes will be applied when you release :kbd:`LMB` or press :kbd:`Spacebar` or
  :kbd:`Return`. Your changes will be canceled if you press :kbd:`RMB` or :kbd:`Esc`.

.. seealso::

   :doc:`Read more about the 3D Transform Manipulator </editors/3dview/object/transform/transform_control/manipulators>`.
