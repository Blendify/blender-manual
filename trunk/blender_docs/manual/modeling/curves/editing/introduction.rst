.. (todo) spin, split tool; control point: recalc normals, set curve radius = Shrink/Fatten

************
Introduction
************

This page covers the basics of curve editing.


Transform
=========

Translation, Rotation, Scale
----------------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Transform`
   | Menu:     :menuselection:`Curve --> Transform --> Grab/Move, Rotate, Scale, ...`
   | Hotkey:   :kbd:`G`, :kbd:`R`, :kbd:`S`


Like other elements in Blender, Curve control points can be grabbed/moved :kbd:`G`,
rotated :kbd:`R` or scaled :kbd:`S`
as described in the :doc:`Basic Transformations </editors/3dview/object/transform/introduction>` section.
When in *Edit Mode*, :doc:`proportional editing
</editors/3dview/object/transform/transform_control/proportional_edit>`
is also available for transformation actions.


.. _modeling-curves-transform-panel:

Transform Panel
---------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Properties region --> Transform`

When nothing is selected, the panel is empty.
When more than one vertex is selected, the median values is edited
and "Median" is added in front of the labels.

Control Point, Vertex
   The first controls (X, Y, Z) show the coordinates of the selected point or handle (vertex).
   In case of a NURBS curve, there is a fourth component available (W),
   which defines the weight of the selected control point or the median weight.
Space
   The Space radio buttons let you choose if those coordinates are relative to the object origin (local) or
   the global origin (global).

   Global, Local


Data
^^^^

Weight
   ToDo.
Radius
   Radius is used for beveling.
Tilt
   ToDo.


Tools
-----

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Curve --> Transform`


The *To Sphere*, *Shear*, *Warp* and *Push/Pull* transform tools are described in the
:doc:`Transformations </modeling/meshes/editing/transform/index>` sections.
The two other tools, *Tilt* and *Shrink/Fatten Radius* are related to
:doc:`Curve Extrusion </modeling/curves/editing/extrude>`.


Mirror
======

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Curve --> Mirror`
   | Hotkey:   :kbd:`Ctrl-M`


The *Mirror* tool is also available, behaving exactly as with
:doc:`mesh vertices </modeling/meshes/editing/transform/mirror>`.


Snap
====

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Curve --> Snap`
   | Hotkey:   :kbd:`Shift-S`


:doc:`Mesh snapping </editors/3dview/object/transform/transform_control/precision/snap>`
also works with curve components.
Both control points and their handles will be affected by snapping,
except for within itself (other components of the active curve).
Snapping works with 2D curves but points will be constrained to the local XY axes.


.. _modeling-curves-extrude:

Extrude Curve and Move
======================

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Curve Tools --> Modeling: Extrude`
   | Menu:     :menuselection:`Curve --> Extrude Curve and Move`
   | Hotkey:   :kbd:`E`

Extrudes points by duplicating the selected points, which then can be translated.
If the selection is an end point a new point will be connected to the selected point,
else a new unconnected point is created.

Mode
   ToDo.


Duplicate or Extrude to Cursor
==============================

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Hotkey:   :kbd:`Ctrl-LMB`

Interactively places new points with :kbd:`Ctrl-LMB` at the cursor position.
With the selection it deals in same manner as the *Extrude Curve and Move* tool.


Add Duplicate
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Curve Tools --> Curves: Duplicate`
   | Menu:     :menuselection:`Curve --> Add Duplicate`
   | Hotkey:   :kbd:`Shift-D`


This command duplicates the selected control points,
along with the curve segments implicitly selected (if any).
If only a handle is selected, the full point will be duplicated too.
The copy is selected and placed in *Grab* mode, so you can move it to another place.


Separate
========

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Curve --> Separate`
   | Hotkey:   :kbd:`P`


Curve objects that are made of multiple distinct curves can be separated into their own
objects by selecting the desired segments and pressing :kbd:`P`.
Note, if there is only one curve in a Curve object,
*Separate* will create a new Curve object with no control points.


.. _modeling-curves-make-segment:

Make Segment
============

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Curve --> Make Segment`
   | Hotkey:   :kbd:`F`


Connects two disconnected control points.
The selection must be loose points, or the first/last point of a curve, then press :kbd:`F`.
If the points belong to different curves, these are joined by a segment to become a single curve.

.. figure:: /images/editing_curves_two-curves-joined.png
   :width: 600px

   Curves before and after joining.

Note that you can only join curves of the same type (i.e. Bézier with Bézier, NURBS with NURBS)
Additionally, you can close a curve by toggling cyclic.


.. _modeling-curves-toggle-cyclic:

Toggle Cyclic
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Curve Tools --> Curves: Delete`
   | Menu:     :menuselection:`Curve --> Toggle Cyclic`
   | Hotkey:   :kbd:`Alt-C`


This toggles between an open curve and closed curve (Cyclic).
Only curves with at least one selected control point will be closed/open.
The shape of the closing segment is based on the start and end handles for Bézier curves,
and as usual on adjacent control points for NURBS.
The only time a handle is adjusted after closing is if the handle is an *Auto* one.
Fig. :ref:`fig-curves-editing-open-close` is the same Bézier curve open and closed.

This action only works on the original starting control-point or the last control-point added.
Deleting a segment(s) does not change how the action applies;
it still operates only on the starting and last control-points. This means that
:kbd:`Alt-C` may actually join two curves instead of closing a single curve! Remember
that when a 2D curve is closed, it creates a renderable flat face.

.. _fig-curves-editing-open-close:

.. figure:: /images/modeling_curves_editing_introduction_open-closed-cyclic.png

   Open and Closed curves.


Delete
======

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Curve Tools --> Curves: Delete`
   | Menu:     :menuselection:`Curve --> Delete...`
   | Hotkey:   :kbd:`X`, :kbd:`Delete`; :kbd:`Ctrl-X`

Options for the *Erase* pop-up menu:

Vertices
   This will delete the selected control points, *without* breaking the curve (i.e.
   the adjacent points will be directly linked, joined, once the intermediary ones are deleted).
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

   * - .. figure:: /images/editing_curves_delete-selected.png
          :width: 320px

          Deleting Curve Selected.

     - .. figure:: /images/editing_curves_delete-segment.png
          :width: 320px

          Deleting Curve segments.


Control Points
==============

Tilt
----

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Transform --> Tilt`
   | Menu:     :menuselection:`Curve --> Control Points --> Tilt/Clear Tilt`
   | Hotkey:   :kbd:`Ctrl-T`, :kbd:`Alt-T`

Tilt :kbd:`Ctrl-T`
   Lets you define the tilt of the selected control points.
   The tilt will be interpolated from point to point (you can check it with the normals).
   The tilt angle is defined interactively first, and then it can be adjusted in the Operator panel *Angle*.
Clear Tilt :kbd:`Alt-T`
   Brings the tilt of those selected control points back to 0.


Set Handle Type
---------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Curve Tools --> Handles:`
   | Menu:     :menuselection:`Curve --> Control Points --> Set Handle Type`
   | Hotkey:   :kbd:`V`


Handle types are a property of :doc:`Bézier curves </modeling/curves/bezier>` and
can be used to alter features of the curve.
For example, switching to *Vector handles* can be used to create curves with sharp corners.
Read the :doc:`Bézier curves </modeling/curves/bezier>` page for more details.

Toggle Free/Align :kbd:`V-T`
   Additionally, the this shortcut can be used to toggle between Free and Aligned handle types.


.. _modeling-curve-weight:

Set Goal Weight
---------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :kbd:`W` :menuselection:`--> Set Goal Weight`


This sets the "goal weight" of selected control points,
which is used when a curve has :doc:`Soft Body </physics/soft_body/index>` physics,
forcing the curve to "stick" to their original positions, based on the weight.


Smoothing
---------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Curve Tools --> Modeling: Smooth`
   | Hotkey:   :kbd:`W` :menuselection:`--> smooth`


Curve smoothing is available through the specials menu. For Bézier curves, this smoothing
operation reduces the distance between the selected control point/s and
their neighbors, while keeping the neighbors anchored.
Does not effect control point tangents.

.. figure:: /images/modeling_curves_smoothing_example1.jpg

   Original, unsmoothed Curve.

.. figure:: /images/modeling_curves_smoothing_example2.jpg

   Entire curve smoothed over 200 times by holding :kbd:`Shift-R` to repeat last step.

.. figure:: /images/modeling_curves_smoothing_example3.jpg

   Only three control points in the center smoothed over 200 times.


Hooks
------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Curve --> Control Points --> Hooks`
   | Hotkey:   :kbd:`Ctrl-H`


:doc:`Hooks </modeling/modifiers/deform/hooks>` can be added to control one or more points with other objects.


Segments
========

.. _modeling-curves-subdivision:

Subdivision
-----------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Curve Tools --> Modeling: Subdivide`
   | Menu:     :menuselection:`Surface tools --> Modeling --> Subdivide`
   | Hotkey:   :kbd:`W`


Curve subdivision simply subdivides all selected segments by adding one or
more control points between the selected segments.

Number of Cuts
   The number of cuts can be adjusted from the Operator panel.


.. _curve-switch-direction:

Switch Direction
----------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Curve Tools --> Curves: Switch Direction`
   | Menu:     :menuselection:`Curve --> Segments --> Switch Direction`,
     :menuselection:`Specials --> Switch Direction`


This tool will "reverse" the direction of any curve with at least one selected element
(i.e. the start point will become the end one, and *vice versa*).
This is mainly useful when using a curve as path, or using the bevel and taper options.


.. _curves-show-hide:

Show/Hide
=========

When in *Edit Mode*, you can hide and reveal elements from the display.
You can only show or hide control points, as segments are always shown,
unless all control points of the connected curve are hidden,
in which case the curve is fully hidden.

See :ref:`object-show-hide` in *Object Mode*.
See also the :doc:`/modeling/curves/curve_display` panel.


.. _curve-convert-type:

Set Spline Type
===============

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Curve Tools --> Curves: Set Spline type`

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


Curve Parenting
===============

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Hotkey:   :kbd:`Ctrl-P`


You can make other selected objects :ref:`children <object-parenting>`
of one or three control points :kbd:`Ctrl-P`, as with mesh objects.

To select a mesh (that is in view) while editing a curve, :kbd:`Ctrl-P` click on it.
Select either one or three control points,
then :kbd:`Ctrl-RMB` the object and use :kbd:`Ctrl-P` to make a vertex parent.
Selecting three control points will make the child follow
the median point between the three vertices. An alternative would be to use a
:doc:`Child of Constraint </rigging/constraints/relationship/child_of>`
