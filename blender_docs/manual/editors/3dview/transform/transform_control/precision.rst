
Precision
*********

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object* and *Edit* modes
   | Hotkey:   :kbd:`Ctrl` and/or :kbd:`Shift`


Description
===========

Holding :kbd:`Ctrl` or :kbd:`Shift` during a transformation operation
(such as grab/move, rotate or scale)
will allow you to perform the transformation in either fixed amounts,
very small amounts or both. The magnitude of the transformation can be viewed in the 3D window
header in the bottom left hand corner. Releasing :kbd:`Ctrl` or :kbd:`Shift`
during the transformation will cause the movement to revert back to its normal mode of
operation.

:doc:`Read more about Window Headers </interface/window_system/headers>`


Usage
=====

With hotkeys
------------

Press :kbd:`G`, :kbd:`R` or :kbd:`S` and then hold either :kbd:`Ctrl`,
:kbd:`Shift` or :kbd:`Ctrl-Shift`.


With the Transform Manipulator
------------------------------

Hold :kbd:`Ctrl`,
:kbd:`Shift` or :kbd:`Ctrl-Shift` and click on the appropriate manipulator handle.
Then move the mouse in the desired direction. The reverse action will also work i.e.
clicking the manipulator handle and then holding the shortcut key for precision control.

:doc:`Read more about the Transform Manipulator </editors/3dview/transform/transform_control/manipulators>`


.. tip:: Combining with other controls

   All of the precision controls detailed on the page can be combined with the
   :doc:`Axis Locking </editors/3dview/transform/transform_control/axis_locking>`
   controls and used with the different
   :doc:`Pivot Points </editors/3dview/transform/transform_control/pivot_point/index>`.


Holding CTRL
============

Grab/move transformations
-------------------------

.. figure:: /images/interaction-Transform_Control_Precision_blender-units.jpg

   1 Blender Unit - shown at the default zoom level.


For grab/move operations at the default zoom level,
holding :kbd:`Ctrl` will cause your selection to move by increments of 1 Blender Unit
(1 BU) (i.e. between the two light grey lines). Zooming in enough to see the next set of grey
lines will now cause :kbd:`Ctrl` movements to occur by 1/10 of a BU. Zooming in further
until the next set of grey lines becomes visible will cause movement to happen by 1/100 of a
BU and so on until the zoom limit is reached.
Zooming out will have the opposite effect and cause movement to happen by increments of 10,
100 etc BU.

:doc:`Read more about Zooming </editors/3dview/navigate/introduction>`


Rotation transformations
------------------------

Holding :kbd:`Ctrl` will cause rotations of 5 degrees.


Scale transformations
---------------------

Holding :kbd:`Ctrl` will cause size changes in increments of 0.1 BU.


.. note:: Snapping modes

   Note that if you have a
   :doc:`Snap Element </editors/3dview/transform/transform_control/snap#snap_element>` option enabled,
   holding :kbd:`Ctrl` will cause the selection to snap to the nearest element.

   :doc:`Read more about Snapping </editors/3dview/transform/transform_control/snap>`


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

