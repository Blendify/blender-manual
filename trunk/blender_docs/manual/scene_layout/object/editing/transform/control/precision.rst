
*********
Precision
*********

.. admonition:: Reference
   :class: refbox

   :Mode:      Object and Edit Modes
   :Hotkey:    :kbd:`Ctrl` and/or :kbd:`Shift`

Holding :kbd:`Ctrl` during a transform operation (such as move, rotate or scale)
will toggle :ref:`Transform Snapping <transform-snap>`.
When the :ref:`Snap Element <transform-snap-element>` is set to *Increment*,
this allows the transformation to be performed in discrete amounts.

Holding :kbd:`Shift` during a transform operation will transform
the object at 1/10th the speed, allowing much finer control.

The magnitude of the transformation can be viewed in the 3D View header.
Releasing :kbd:`Ctrl` or :kbd:`Shift` during the transformation will cause
the movement to revert back to its normal mode of operation.

.. note::

   The snapping behaviors described on this page **only** apply
   when :ref:`Increment Snap <transform-snap-element>` is selected.

.. tip::

   It is possible to enable both snapping and precision mode,
   simply hold :kbd:`Ctrl` and :kbd:`Shift`. This has the following effects:

   Move
      Changes in 0.1 unit increments, regardless of zoom level.
   Rotation
      Changes in 1 unit increments.
   Scale
      Changes in 0.01 unit increments.


Usage
=====

With Hotkeys
------------

Press :kbd:`G`, :kbd:`R` or :kbd:`S` and then hold either :kbd:`Ctrl`,
:kbd:`Shift` or :kbd:`Shift-Ctrl`.


With the Transform Gizmo
------------------------

Hold :kbd:`Ctrl`, :kbd:`Shift` or :kbd:`Shift-Ctrl` and click on the appropriate
gizmo handle. Then move the mouse in the desired direction.
The reverse action will also work i.e. clicking the gizmo handle and
then holding the shortcut key for precision control.

.. seealso::

   :doc:`Read more about the Transform Gizmo </scene_layout/object/editing/transform/control/gizmos>`.

.. tip:: Combining with Other Controls

   All of the precision controls detailed on the page can be combined with
   the :doc:`Axis Locking </scene_layout/object/editing/transform/control/axis_locking>` controls and
   used with the different :doc:`Pivot Points </scene_layout/object/editing/transform/control/pivot_point/index>`.


Snapping
========

Move
----

.. figure:: /images/scene-layout_object_editing_transform_control_precision_introduction_blender-units.png
   :align: right
   :width: 200px
   :figwidth: 200px

   One unit (default zoom level).

Snapping while moving objects changes the object location in 1 unit increments.
While in an :doc:`aligned view </editors/3dview/navigate/align>`,
The increment amount is changed based on the :ref:`zoom level <editors_3dview_navigation_zoom>`.
For example, at a base zoom level objects are moved in increments of 1 unit (i.e. between the two light gray lines).
Zooming in enough to see the next set of gray lines will snap in increments of 1/10 of a unit.
Zooming in further until will snap in increments of 1/100 of a unit and so on until the zoom limit is reached.
Zooming out will have the opposite effect and
cause movement to happen by increments of 10, 100 units, etc.

.. container:: lead

   .. clear


Rotation
--------

Holding :kbd:`Ctrl` will cause rotations of 5 degrees.


Scale
-----

Holding :kbd:`Ctrl` will cause size changes in increments of 0.1 units.

.. note:: Snapping modes

   Note that if you have a :ref:`Snap Element <transform-snap-element>` option enabled,
   holding :kbd:`Ctrl` will cause the selection to snap to the nearest element.

   Read more about :doc:`snapping </scene_layout/object/editing/transform/control/snap>`.


Precision
=========

Holding :kbd:`Shift` during transformations allows for very fine control that does not
rely on fixed increments. Rather, large movements of the mouse across
the screen only result in small transformations of the selection.

In rotation mode the selected element will be rotate in 0.01 degree increments.
