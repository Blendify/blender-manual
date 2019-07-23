
*****
Curve
*****

This page covers the basics of curve editing.


Transform
=========

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Curve --> Transform`

A Bézier curve can be edited by transforming the locations of both control points and handles.
NURBS curve on the other hand have only control points.

Move, Rotate, Scale
   Like other elements in Blender, curve control points and handles can be
   moved, rotated, or scaled as described in
   :doc:`Basic Transformations </scene_layout/object/editing/transform/introduction>`.
To Sphere, Shear, Warp, Bend, Push/Pull, Warp, Randomize
   The transform tools are described in the
   :doc:`Transformations </modeling/meshes/editing/transform/index>` sections.
Move/Scale Texture Space
   Like other objects, curves have textures spaces which can be
   :ref:`edited <properties-texture-space-editing>`.


.. _modeling-curve-radius:

Radius
------

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Tool:      :menuselection:`Tool Shelf --> Radius`
   :Panel:     :menuselection:`Sidebar --> Transform --> Radius`
   :Menu:      :menuselection:`Curve --> Transform --> Radius`
   :Hotkey:    :kbd:`Alt-S`

The Radius allows you to directly control the width of the extrusion along the "spinal" curve.
The radius will be interpolated from point to point (you can check it with the normals).
The *Radius* of the points is set using the *Radius* transform tool. Or in the Siderbar *Transform* panel.

.. figure:: /images/modeling_curves_properties_introduction_extrude-radius.png
   :width: 320px

   One control point radius set to zero.


Mirror
======

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Curve --> Mirror`
   :Hotkey:    :kbd:`Ctrl-M`

The *Mirror* tool is also available, behaving exactly as with
:doc:`mesh vertices </modeling/meshes/editing/transform/mirror>`.


Snap
====

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Curve --> Snap`
   :Hotkey:    :kbd:`Shift-S`

:doc:`Mesh snapping </scene_layout/object/editing/transform/control/snap>`
also works with curve components.
Both control points and their handles will be affected by snapping,
except for within itself (other components of the active curve).
Snapping works with 2D curves but points will be constrained to the local XY axes.

Spin
====

TODO.


Add Duplicate
=============

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Panel:     :menuselection:`Tool Shelf --> Tools --> Curve Tools --> Curves: Duplicate`
   :Menu:      :menuselection:`Curve --> Add Duplicate`
   :Hotkey:    :kbd:`Shift-D`

This tool duplicates the selected control points,
along with the curve segments implicitly selected (if any).
If only a handle is selected, the full point will be duplicated too.
The copy is selected and placed in select mode, so you can move it to another place.


Split
=====

TODO.


Separate
========

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Curve --> Separate`
   :Hotkey:    :kbd:`P`

Curve objects that are made of multiple distinct curves can be separated into their own
objects by selecting the desired segments and pressing :kbd:`P`.
Note, if there is only one curve in a Curve object,
*Separate* will create a new Curve object with no control points.


.. _modeling-curves-toggle-cyclic:

Toggle Cyclic
=============

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Panel:     :menuselection:`Tool Shelf --> Tools --> Curve Tools --> Curves: Toggle Cyclic`
   :Menu:      :menuselection:`Curve --> Toggle Cyclic`
   :Hotkey:    :kbd:`Alt-C`

This toggles between an open curve and closed curve (Cyclic).
Only curves with at least one selected control point will be closed/open.
The shape of the closing segment is based on the start and end handles for Bézier curves,
and as usual on adjacent control points for NURBS.
The only time a handle is adjusted after closing is if the handle is an *Auto* one.
Fig. :ref:`fig-curves-editing-open-close` is the same Bézier curve open and closed.

This action only works on the original starting control point or the last control point added.
Deleting a segment(s) does not change how the action applies;
it still operates only on the starting and last control points. This means that
:kbd:`Alt-C` may actually join two curves instead of closing a single curve!
Remember that when a 2D curve is closed, it creates a renderable flat face.

.. _fig-curves-editing-open-close:

.. figure:: /images/modeling_curves_editing_introduction_open-closed-cyclic.png

   Open and Closed curves.


.. _curve-convert-type:

Set Spline Type
===============

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Panel:     :menuselection:`Tool Shelf --> Tools --> Curve Tools --> Curves: Set Spline type`

.. figure:: /images/modeling_curves_editing_introduction_set-spline-type.png
   :align: right

   Set Spline Type button.

You can convert splines in a curve object between Bézier, NURBS, and Poly curves.
Press :kbd:`T` to bring up the Tool Shelf. Clicking on the *Set Spline Type*
button will allow you to select the Spline type (Poly, Bézier or NURBS).

Note, this is not a "smart" conversion, i.e. Blender does not try to keep the same shape,
nor the same number of control points. For example, when converting a NURBS to a Bézier,
each group of three NURBS control points become a unique Bézier one (center point and two handles).

.. seealso::

   :ref:`object-convert-to`/from Mesh.


.. _curves-show-hide:

Show/Hide
=========

When in *Edit Mode*, you can hide and reveal elements from the display.
You can only show or hide control points, as segments are always shown,
unless all control points of the connected curve are hidden,
in which case the curve is fully hidden.

See :ref:`object-show-hide` in *Object Mode*.
See also the :doc:`/modeling/curves/curve_display` panel.


Cleanup
=======

Decimate Curve
--------------

TODO.


Delete
======

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Panel:     :menuselection:`Tool Shelf --> Tools --> Curve Tools --> Curves: Delete`
   :Menu:      :menuselection:`Curve --> Delete...`
   :Hotkey:    :kbd:`X`, :kbd:`Delete`; :kbd:`Ctrl-X`

Options for the *Erase* pop-up menu:

Vertices
   This will delete the selected control points, *without* breaking the curve
   (i.e. the adjacent points will be directly linked, joined, once the intermediary ones are deleted).
   Remember that NURBS order cannot be higher than its number of control points,
   so it might decrease when you delete some control point.
   Of course, when only one point remains, there is no more visible curve,
   and when all points are deleted, the curve itself is deleted.
Segment
   Deletes the segment that connects the selected control points and disconnecting them.
Dissolve Vertices :kbd:`Ctrl-X`
   Deletes the selected control points, while the remaining segment is fitted to the deleted curve
   by adjusting its handles.

.. list-table::

   * - .. figure:: /images/modeling_curves_editing_introduction_make-segment.png

          Before deleting.

     - .. figure:: /images/modeling_curves_editing_introduction_delete-vertices.png

          Deleting vertices.

   * - .. figure:: /images/modeling_curves_editing_introduction_delete-segment.png

          Deleting segment.

     - .. figure:: /images/modeling_curves_editing_introduction_dissolve-vertices.png

          Dissolve vertices.
