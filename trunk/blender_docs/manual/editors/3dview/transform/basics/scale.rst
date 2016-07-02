
*****
Scale
*****

.. admonition:: Reference
   :class: refbox

   | Mode:     Object and Edit Modes
   | Menu:     :menuselection:`Object/Mesh/Curve/Surface --> Transform --> Scale`
   | Hotkey:   :kbd:`S`


Pressing :kbd:`S` will enter the *Scale* transformation mode where the
selected element is scaled inward or outward according to the mouse pointer's location. The
element's scale will increase as the mouse pointer is moved away from the Pivot Point and
decrease as the pointer is moved towards it. If the mouse pointer crosses from the original side of the
:doc:`Pivot Point </editors/3dview/transform/transform_control/pivot_point/index>` to the opposite side,
the scale will continue in the negative direction and flip the element.

.. figure:: /images/editors_3dview_Transformations-Basic-Scale-scale_basic_usage.jpg
   :width: 640px

   Basic scale usage. From left to right, the panels show: the original Object,
   a scaled down Object, a scaled up Object and a scale-flipped Object.


There are multiple ways to scale an element which include:

- The keyboard shortcut :kbd:`S`
- The 3D manipulator widget
- The Properties menu :kbd:`N`

Basic scale usage and common options are described below. For additional information, you may
wish to read the :doc:`Transform Control </editors/3dview/transform/transform_control/index>`
and :doc:`Transform Orientations </editors/3dview/transform/transform_control/transform_orientations>`
pages which provide more information about options such as Precision, Axis Locking, Numeric Input,
Snapping and the different types of Pivot Point.


Usage
=====

Scaling using the keyboard shortcut
-----------------------------------

- Use :kbd:`RMB` to select the elements you want to scale.
- Tap :kbd:`S` once to enter scale mode.
- Scale the elements by moving the mouse.
- :kbd:`LMB` click to accept changes.

The amount of scaling will be displayed in the bottom left hand corner of the 3D View editor.

.. figure:: /images/editors_3dview_Transformations-Basic-Scale-scale_value_header.jpg

   Scale values.


Constraining the scaling axis (axis locking)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Scaling can be constrained to a particular axis or axes through the use of
:doc:`Axis Locking </editors/3dview/transform/transform_control/precision/axis_locking>`.
To constrain scaling, the following shortcuts can be used:

- :kbd:`S`, :kbd:`X`: Scale only along the *X-Axis*
- :kbd:`S`, :kbd:`Y`: Scale only along the *Y-Axis*
- :kbd:`S`, :kbd:`Z`: Scale only along the *Z-Axis*

Axis locking can also be enabled by pressing the :kbd:`MMB` after enabling scaling and
moving the mouse in the desired direction e.g.

- :kbd:`S`, move the mouse along the X axis, :kbd:`MMB`: Scale only along the *X-Axis*


Fine Tuning The Scaling
^^^^^^^^^^^^^^^^^^^^^^^

:doc:`Precise control </editors/3dview/transform/transform_control/precision/introduction>`
can be had over scaling through the use of the :kbd:`Shift` and :kbd:`Ctrl`
keys to limit scaling to discrete amounts.
You can also enter a :doc:`numerical value </editors/3dview/transform/transform_control/precision/numeric_input>`
in Blender Units (BU) to specify the amount of scaling after after initiating a scale transformation.

- Hold :kbd:`Ctrl` down while scaling to scale the selected element in degree 0.1 BU increments.
- Hold :kbd:`Shift` down while scaling to scale the selected element in very fine increments.
- Hold :kbd:`Shift-Ctrl` down while scaling to scale the selected element in 0.01 BU increments.
- Press :kbd:`S`, type in a number and press :kbd:`Return` to confirm.

.. tip:: Orientation dependent scaling

   By default, all scaling happens around a Global Orientation.
   You can change the scaling orientation by pressing the axis key twice. For example, pressing
   :kbd:`S`, :kbd:`X`, :kbd:`X` will by default set scaling to occur around the local orientation.

.. seealso::

   - :doc:`Read more about Precision Control
     </editors/3dview/transform/transform_control/precision/introduction>`
   - :doc:`Read more about Numerical Transformations
     </editors/3dview/transform/transform_control/precision/numeric_input>`
   - :doc:`Read more about Transform Orientations
     </editors/3dview/transform/transform_control/transform_orientations>`


Scaling with the 3D Transform Manipulator
-----------------------------------------

.. figure:: /images/widget3d-transform-scale.jpg
   :width: 100px

   Scaling Transform Manipulator.


In the 3D View header, ensure that the Transform Manipulator is enabled (the red, green,
and blue triad is selected). Set the manipulator type to scale
(the highlighted square icon shown below).

.. figure:: /images/editors_3dview_Transformations-Basic-Scale-scale_manipulator_header.jpg

   Todo.


- Select your element with :kbd:`RMB`.
- Use :kbd:`LMB` and drag any of the three colored axes on the scaling manipulator to scale
  your object along that axis.
  You can also use :kbd:`Shift`, :kbd:`Ctrl` or numeric input with the 3D manipulator widget for further control.
- Your changes will be applied when you release :kbd:`LMB` or press :kbd:`Spacebar` or
  :kbd:`Return`. Your changes will be cancelled if you press :kbd:`RMB` or :kbd:`Esc`.

:doc:`Read more about the 3D Transform Manipulator </editors/3dview/transform/transform_control/precision/manipulators>`


Scaling with the Properties Panel
---------------------------------

.. figure:: /images/editors_3dview_Transformations-Basic-Scale-scale_properties_panel.jpg
   :width: 180px

   Scale transform properties panel.


Scale values can also be specified in the Properties panel :kbd:`N`
by altering the amount value in the scaling slider of the Transform panel.
Scaling along particular axes can be enabled or disabled by toggling the padlock icon.

.. seealso::

   - :doc:`Read more about Panels </interface/editors/panels>`
   - :doc:`Read more about scaling modes </editors/3dview/transform/transform_control/transform_orientations>`
