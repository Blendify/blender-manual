
**************
Control Points
**************

.. _modeling-curves-extrude:

Extrude Curve and Move
======================

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Panel:     :menuselection:`Tool Shelf --> Tools --> Curve Tools --> Modeling: Extrude`
   :Menu:      :menuselection:`Curve --> Extrude Curve and Move`
   :Hotkey:    :kbd:`E`

Extrudes points by duplicating the selected points, which then can be moved.
If the selection is an end point, a new point will be connected to the selected point,
else a new unconnected point is created.

.. Mode
.. (todo) looks like a bug, internal parameter?


.. _modeling-curves-make-segment:

Make Segment
============

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Curve --> Make Segment`
   :Hotkey:    :kbd:`F`

Connects two disconnected control points.
The selection must be loose points, or the first/last point of a curve, then press :kbd:`F`.
If the points belong to different curves, these are joined by a segment to become a single curve.

.. list-table::

   * - .. figure:: /images/modeling_curves_editing_introduction_two-curves.png
          :width: 320px

          Two curves before.

     - .. figure:: /images/modeling_curves_editing_introduction_make-segment.png
          :width: 320px

          Curve after joining.

Note that you can only join curves of the same type (i.e. Bézier with Bézier, NURBS with NURBS)
Additionally, you can close a curve by toggling cyclic.


.. _modeling-curve-tilt:

Tilt
====

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Tool:      :menuselection:`Tool Shelf --> Tilt`
   :Panel:     :menuselection:`Sidebar --> Transform --> Tilt`
   :Menu:      :menuselection:`Control Points --> Tilt`
   :Hotkey:    :kbd:`Ctrl-T`

This setting controls how the normals (visualized as arrows)
twist around each control point -- so it is only relevant with 3D curves!
The tilt will be interpolated from point to point (you can check it with the normals).

.. figure:: /images/modeling_curves_properties_introduction_extrude-mean-tilt.png
   :width: 320px

   30 degree Mean Tilt of all control points.


Clear Tilt
==========

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Control Points --> Clear Tilt`
   :Hotkey:    :kbd:`Alt-T`

You can also reset the tilt to its default value (i.e. perpendicular to the original curve plane).
With NURBS, the tilt is always smoothly interpolated. However, with Bézier,
you can choose the :ref:`interpolation algorithm <bpy.types.Spline.tilt_interpolation>`.


Set Handle Type
===============

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Panel:     :menuselection:`Tool Shelf --> Tools --> Curve Tools --> Handles:`
   :Menu:      :menuselection:`Curve --> Control Points --> Set Handle Type`
   :Hotkey:    :kbd:`V`

Handle types are a property of :ref:`Bézier curves <curve-bezier>` and
can be used to alter features of the curve.
For example, switching to *Vector handles* can be used to create curves with sharp corners.
Read the :ref:`Bézier curves <curve-bezier-handle-type>` page for more details.

Toggle Free/Align :kbd:`V T`
   Additionally, this shortcut can be used to toggle between Free and Aligned handle types.


Recalc Normals
==============

Todo.


Smooth
======

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Panel:     :menuselection:`Tool Shelf --> Tools --> Curve Tools --> Modeling: Smooth`
   :Menu:      :menuselection:`Specials --> Smooth`

Curve smoothing is available through the specials menu. For Bézier curves, this smoothing
operation reduces the distance between the selected control point/s and
their neighbors, while keeping the neighbors anchored.
Does not effect control point tangents.

.. figure:: /images/modeling_curves_editing_introduction_smoothing-1.png

   Original, unsmoothed Curve.

.. figure:: /images/modeling_curves_editing_introduction_smoothing-2.png

   Entire curve smoothed over 20 times by holding :kbd:`Shift-R` to repeat last step.

.. figure:: /images/modeling_curves_editing_introduction_smoothing-3.png

   Only three control points in the center smoothed over 20 times.


Smooth Curve Tilt
=================

Todo.


Smooth Curve Radius
===================

Todo.


Smooth Curve Weight
===================

Todo.


Hooks
=====

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Curve --> Control Points --> Hooks`
   :Hotkey:    :kbd:`Ctrl-H`

:doc:`Hooks </modeling/modifiers/deform/hooks>` can be added to control one or more points with other objects.


Make Vertex Parent
==================

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Hotkey:    :kbd:`Ctrl-P`

You can make other selected objects :ref:`children <object-parenting>`
of one or three control points :kbd:`Ctrl-P`, as with mesh objects.

To select a mesh (that is in view) while editing a curve, :kbd:`Ctrl-P` click on it.
Select either one or three control points,
then :kbd:`Ctrl-RMB` the object and use :kbd:`Ctrl-P` to make a vertex parent.
Selecting three control points will make the child follow
the median point between the three vertices. An alternative would be to use
a :doc:`Child of Constraint </animation/constraints/relationship/child_of>`.
See also the :doc:`Curve Modifier </modeling/modifiers/deform/curve>`.
