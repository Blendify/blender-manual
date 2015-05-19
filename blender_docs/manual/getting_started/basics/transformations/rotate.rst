
Rotate
******

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object* and *Edit* modes
   | Menu:     :menuselection:`Object/Mesh/Curve/Surface --> Transform --> Rotate`
   | Hotkey:   :kbd:`R`


Description
===========

Rotation is also known as a spin, twist, orbit, pivot, revolve,
or roll and involves changing the orientation of elements (vertices, edge, face, Object etc)
around one or more axes or the element's Pivot Point.
There are multiple ways to rotate an element which include:


- The keyboard shortcut (:kbd:`R`)
- The 3D manipulator widget
- The Properties menu (:kbd:`N`)

Basic rotation usage and common options are described below. For additional information, you
may wish to read the Transform Control and Orientation pages which provide more information
about options such as Precision, Axis Locking, Numeric Input,
Snapping and the different types of Pivot Point.

:doc:`Read more about Transform Control </3d_interaction/transform_control>`
:doc:`Read more about Transform Orientations </getting_started/basics/transformations/transform_control/transform_orientations>`


----


Usage
=====

Rotation using the keyboard shortcut
------------------------------------

- Use :kbd:`RMB` to select the elements you want to rotate.
- Tap :kbd:`R` once to enter rotation mode.
- Rotate the elements by moving the mouse.
  The closer the mouse is to the elements's center, the higher the rotation influence.
- :kbd:`LMB` click to accept changes.

The amount of rotation will be displayed in the bottom left hand corner of the 3D window.


.. figure:: /images/3D_interaction-Transformations-Basic-Rotate-rotate_value_header.jpg

   Rotation values


Constraining the rotation axis (axis locking)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Rotation can be constrained to a particular axis or axes through the use of
:doc:`Axis Locking </getting_started/basics/transformations/transform_control/axis_locking>`.
To constrain rotation, the following shortcuts can be used:


- :kbd:`R`, :kbd:`X`: Rotate only along the **X Axis**
- :kbd:`R`, :kbd:`Y`: Rotate only along the **Y Axis**
- :kbd:`R`, :kbd:`Z`: Rotate only along the **Z Axis**

Axis locking can also be enabled by pressing the :kbd:`MMB` after enabling rotation and
moving the mouse in the desired direction e.g.


- :kbd:`R`, move the mouse along the X axis, :kbd:`MMB`: Rotate only along the **X Axis**

:doc:`Read more about Axis Locking </getting_started/basics/transformations/transform_control/axis_locking>`


Fine Tuning The Rotation
^^^^^^^^^^^^^^^^^^^^^^^^

:doc:`Precise control </getting_started/basics/transformations/transform_control/precision>` can be had over rotation
through the use of the :kbd:`Shift` and :kbd:`Ctrl` keys to limit rotation to discrete amounts.
You can also enter a :doc:`numerical value </getting_started/basics/transformations/transform_control/numeric_input>`
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


:doc:`Read more about Precision Control </getting_started/basics/transformations/transform_control/precision>`
:doc:`Read more about Numerical Transformations </getting_started/basics/transformations/transform_control/numeric_input>`
:doc:`Read more about Transform Orientations </getting_started/basics/transformations/transform_control/transform_orientations>`


Rotation with the 3D Transform Manipulator
------------------------------------------

.. figure:: /images/Icon-library_3D-Window_3D-transform-rotate-manipulator.jpg
   :width: 100px

   Rotation Transform Manipulator


In the 3D View header, ensure that the Transform Manipulator is enabled (the red, green,
and blue triad is selected). Set the manipulator type to rotation
(the highlighted arc icon shown below).


.. figure:: /images/3D_interaction-Transformations-Basic-Rotate-rotate_manipulator_header.jpg

- Select your element with :kbd:`RMB`.
- Use :kbd:`LMB` and drag any of the three colored axes on the rotation manipulator to rotate
  your object along that axis.
  You can also use :kbd:`Shift`, :kbd:`Ctrl` or numeric input with the 3D manipulator widget for further control.
- Your changes will be applied when you release :kbd:`LMB` or press :kbd:`Spacebar` or
  :kbd:`Return`. Your changes will be cancelled if you press :kbd:`RMB` or :kbd:`Esc`.

:doc:`Read more about the 3D Transform Manipulator </getting_started/basics/transformations/transform_control/manipulators>`


Rotation with the Properties Panel
----------------------------------

.. figure:: /images/3D_interaction-Transformations-Basic-Rotate-rotate_properties_panel.jpg
   :width: 180px

   Rotation transform properties panel.


Rotation values can also be specified in the Properties panel (:kbd:`N`)
by altering the degree value in the rotation slider of the Transform panel.
Rotation along particular axes can be enabled or disabled by toggling the padlock icon.
The rotation mode (Euler, Axis Angle, Quaternion)
can also be set in this panel from the drop down box.

:doc:`Read more about Panels </getting_started/basics/interface/panels>`

:doc:`Read more about rotation modes </getting_started/basics/transformations/transform_control/transform_orientations>`

`Additional detail about rotation modes
<http://wiki.blender.org/index.php/User:Pepribal/Ref/Appendices/Rotation>`__

