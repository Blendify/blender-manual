
************
Introduction
************

.. admonition:: Reference
   :class: refbox

   | Mode:     Object and Edit Modes
   | Hotkey:   :kbd:`Ctrl` and/or :kbd:`Shift`


Holding :kbd:`Ctrl` during a transform operation (such as grab, rotate or scale)
will toggle :ref:`Transform Snapping <transform-snap>`.
When the :ref:`Snap Element <transform-snap-element>` is set to *Increment*,
this allows the transformation to be performed in fixed amounts.

Holding :kbd:`Shift` during a transform operation will transform the object at 1/10th the speed,
allowing much finer control.

The magnitude of the transformation can be viewed in the 3D View header in the bottom left hand corner.
Releasing :kbd:`Ctrl` or :kbd:`Shift` during the transformation will cause the movement
to revert back to its normal mode of operation.

.. note::

   The snapping behaviors described on this page **only** apply when :ref:`Increment Snap <transform-snap-element>`
   is selected.


Usage
=====

With hotkeys
------------

Press :kbd:`G`, :kbd:`R` or :kbd:`S` and then hold either :kbd:`Ctrl`,
:kbd:`Shift` or :kbd:`Ctrl-Shift`.


With the Transform Manipulator
------------------------------

Hold :kbd:`Ctrl`, :kbd:`Shift` or :kbd:`Ctrl-Shift` and click on the appropriate manipulator handle.
Then move the mouse in the desired direction. The reverse action will also work i.e.
clicking the manipulator handle and then holding the shortcut key for precision control.

.. seealso::

   :doc:`Read more about the Transform Manipulator </editors/3dview/transform/transform_control/manipulators>`

.. tip:: Combining with other controls

   All of the precision controls detailed on the page can be combined with the
   :doc:`Axis Locking </editors/3dview/transform/transform_control/precision/axis_locking>`
   controls and used with the different
   :doc:`Pivot Points </editors/3dview/transform/transform_control/pivot_point/index>`.


Holding CTRL
============

Grab/move transformations
-------------------------

.. figure:: /images/interaction-transform_control_precision_blender-units.png
   :align: right

   1 Blender Unit (default zoom level).


For grab/move operations at the default zoom level,
holding :kbd:`Ctrl` will cause your selection to move by increments of 1 Blender Unit
(1 BU) (i.e. between the two light gray lines). Zooming in enough to see the next set of gray
lines will now cause :kbd:`Ctrl` movements to occur by 1/10 of a BU. Zooming in further
until the next set of gray lines becomes visible will cause movement to happen by 1/100 of a
BU and so on until the zoom limit is reached.
Zooming out will have the opposite effect and cause movement to happen by increments of 10,
100 etc BU.

.. seealso::

   :doc:`Read more about Zooming </editors/3dview/navigate/introduction>`


Rotation transformations
------------------------

Holding :kbd:`Ctrl` will cause rotations of 5 degrees.


Scale transformations
---------------------

Holding :kbd:`Ctrl` will cause size changes in increments of 0.1 BU.

.. note:: Snapping modes

   Note that if you have a
   :ref:`Snap Element <transform-snap-element>` option enabled,
   holding :kbd:`Ctrl` will cause the selection to snap to the nearest element.

   :doc:`Read more about Snapping </editors/3dview/transform/transform_control/precision/snap>`


Holding SHIFT
=============

Holding :kbd:`Shift` during transformations allows for very fine control that does not
rely on fixed increments. Rather, large movements of the mouse across the screen only result
in small transformations of the selection.


Holding CTRL and SHIFT
======================

Grab/move transformations
-------------------------

For grab/move operations at the default zoom level, holding :kbd:`Ctrl-Shift` will cause
your selection to move by increments of 1/10 Blender Units. Holding :kbd:`Ctrl-Shift` at
any zoom level will cause the transformation increments to always be 1/10 of the increment if
you were only holding :kbd:`Ctrl`.


Rotation transformations
------------------------

Holding :kbd:`Ctrl-Shift` will cause rotations of 1 degree.


Scale transformations
---------------------

Holding :kbd:`Ctrl-Shift` will cause size changes in 0.01 BU increments.
