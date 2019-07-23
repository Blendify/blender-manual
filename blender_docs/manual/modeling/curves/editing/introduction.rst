
************
Introduction
************

This page covers the basics of curve editing.


Transform
=========

A Bézier curve can be edited by transforming the locations of both control points and handles.
NURBS curve on the other hand have only control points.


Move, Rotation, Scale
---------------------

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Panel:     :menuselection:`Tool Shelf --> Tools --> Transform`
   :Menu:      :menuselection:`Curve --> Transform --> Move, Rotate, Scale, ...`
   :Hotkey:    :kbd:`G`, :kbd:`R`, :kbd:`S`

Like other elements in Blender, curve control points and handles can be
moved :kbd:`G`, rotated :kbd:`R` or scaled :kbd:`S` as described in
the :doc:`Basic Transformations </scene_layout/object/editing/transform/introduction>` section.
When in *Edit Mode*,
:doc:`Proportional Editing </scene_layout/object/editing/transform/control/proportional_edit>`
is also available for transformation actions.


.. _modeling-curves-transform-panel:

Transform Panel
---------------

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Panel:     :menuselection:`Sidebar region --> Transform`

When nothing is selected, the panel is empty.
When more than one vertex is selected, the median values are edited
and "Median" is added in front of the labels.

Control Point, Vertex
   The first controls (X, Y, Z) show the coordinates of the selected point or handle (vertex).
   In case of a NURBS curve, there is a fourth component available (W),
   which defines the weight of the selected control point or the median weight.
Space
   The Space radio buttons let you choose if those coordinates are relative to the object origin (local) or
   the global origin (global).

   Global, Local


Tools
-----

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Curve --> Transform`

The *To Sphere*, *Shear*, *Warp* and *Push/Pull* transform tools are described
in the :doc:`Transformations </modeling/meshes/editing/transform/index>` sections.
The two other tools, *Tilt* and *Radius* are related to
:doc:`Curve Extrusion </modeling/curves/properties/geometry>`.

.. _modeling-curve-radius:

Radius
------

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit mode
   :Panel:     :menuselection:`Tool Shelf --> Tools --> Transform --> Radius`
   :Hotkey:    :kbd:`Alt-S`

Radius :kbd:`Alt-S`
   Lets you define the radius of the selected control points.
   The radius will be interpolated from point to point (you can check it with the normals).


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
          :width: 320px

          Before deleting.

     - .. figure:: /images/modeling_curves_editing_introduction_delete-vertices.png
          :width: 320px

          Deleting vertices.

   * - .. figure:: /images/modeling_curves_editing_introduction_delete-segment.png
          :width: 320px

          Deleting segment.

     - .. figure:: /images/modeling_curves_editing_introduction_dissolve-vertices.png
          :width: 320px

          Dissolve vertices.


.. _modeling-curve-weight:

Set Goal Weight
===============

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Specials --> Set Goal Weight`

This sets the Soft Body Goal Weight of selected control points.
The precise value can be adjusted in the :ref:`ui-undo-redo-adjust-last-operation` Panel.
To adjust the *Mean Weight* (average) of selected control points use
:menuselection:`Sidebar region --> Transform --> Mean Weight`.


Duplicate or Extrude to Cursor
==============================

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Hotkey:    :kbd:`Ctrl-LMB`

Interactively places new points with :kbd:`Ctrl-LMB` at the cursor position.
With the selection it deals in same manner as the *Extrude Curve and Move* tool.
