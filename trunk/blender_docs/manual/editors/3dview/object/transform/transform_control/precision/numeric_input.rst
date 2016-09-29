
*************
Numeric Input
*************

.. figure:: /images/editors_3dview_transform_control-numeric_input_numeric-input-header.png

   Numeric input in the 3D View header.


Using the mouse for transformations is convenient,
but if you require more precise control, you can also enter numeric values.
After pressing :kbd:`G`, :kbd:`R`, :kbd:`S`
type a number to indicate the magnitude of the transformation.

You can see the numbers you enter in the bottom left hand corner of the 3D View header.
Negative numbers and decimals can be entered by pressing :kbd:`Minus` and :kbd:`.` respectively.


Translation
===========

To move Objects, vertices, faces or edges select the element,
press :kbd:`G` and then type a number.
By default and with no other key presses, movement will occur along the X-axis.
To confirm the movement, press :kbd:`Return` or :kbd:`LMB`.
To cancel the movement, press :kbd:`Esc` or :kbd:`RMB`. If you mistype the value,
press :kbd:`Backspace` to cancel the current entry and retype a new value.

To enter numeric values for multiple axes, use :kbd:`Tab` after entering a value for the axis.
e.g. To move an Object, one (1) Blender unit on all three axes press:
:kbd:`G 1` and :kbd:`Tab 1` and :kbd:`Tab 1`.
This will move the element one unit along the X-axis,
followed by the Y-axis and then the Z-axis.

You can also combine numeric input with
:doc:`Axis Locking </editors/3dview/object/transform/transform_control/precision/axis_locking>`
to limit movement to a particular axis. To do so, press :kbd:`G` followed by :kbd:`X`,
:kbd:`Y`, :kbd:`Z` to indicate the axis.  Then type in the transform amount using (:kbd:`0` - :kbd:`9`)
followed by :kbd:`Return` to confirm. Pressing :kbd:`X`, :kbd:`Y`,
:kbd:`Z` will initially constrain movement to the *Global* axis.
Pressing :kbd:`X`, :kbd:`Y`, :kbd:`Z` again will constrain movement to the orientation set
in the :doc:`Transform Orientation </editors/3dview/object/transform/transform_control/transform_orientations>`
setting of the 3D View header.


Rotation
========

To specify a value for clockwise rotation, press :kbd:`R`, (:kbd:`0` - :kbd:`9`),
then :kbd:`Return` to confirm. To specify counter-clockwise rotation
press :kbd:`R`, :kbd:`Minus`, (kbd:`0` - :kbd:`9`), then :kbd:`Return` to confirm.
Note that 270 degrees of clockwise rotation is
equivalent to -90 degrees of counter-clockwise rotation.


Scaling
=======

Objects, faces and edges can be scaled by pressing :kbd:`S`,
(:kbd:`0` - :kbd:`9`), then :kbd:`Return` to confirm.
Scaling transformations can also be constrained to an axis by
pressing :kbd:`X`, :kbd:`Y`, :kbd:`Z` after pressing :kbd:`S`.
Essentially, scaling with numeric values works in almost identical fashion to translation.
The primary difference is that by default, scaling applies equally to all three axes.
e.g. pressing :kbd:`S 0 5`, :kbd:`Return` will scale an Object by 0.5 on all three axes.

.. tip::

   Numeric input can also be inputed in the
   :doc:`Properties </editors/3dview/object/properties/transforms>` region.
