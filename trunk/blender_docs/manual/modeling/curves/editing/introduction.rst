
************
Introduction
************

This page covers the basics of curve editing. Curve basics,
selecting and advanced editing are covered in the following pages:

- :doc:`Curve basics </modeling/curves/introduction>`
- :doc:`Curve Selecting </modeling/curves/selecting>`


Curve Display
=============

Display Options
---------------

.. figure:: /images/modeling_curves_editing_introduction_curve-display-panel.png
   :align: right

   Curve Display panel.


When in Edit Mode, the Properties region :kbd:`N` contains options in the
*Curve Display* panel for how curves are displayed in the 3D View.

Handles
   Toggles the display of Bézier handles while in edit mode. This does not affect the appearance of the curve itself.
Normals
   Toggles the display of Curve Normals.
Normal Size
   Sets the display scale of curve normals.


.. _curves-hiding:

Hiding Elements
---------------

When in *Edit Mode*, you can hide and reveal elements from the display.
This can be useful in complex models with many elements on the Screen.

Hide Selected elements
   Use :kbd:`H`, or the :menuselection:`Curve --> Show/Hide --> Hide Selected` menu option from the 3D View header.

Show Hidden elements
   Use :kbd:`Alt-H`, or the
   :menuselection:`Curve --> Show/Hide --> Show Hidden` menu option from the 3D View header.

Hide Unselected elements
   Use :kbd:`Shift-H`,
   or the :menuselection:`Curve --> Show/Hide --> Hide Unselected` menu option from the 3D View header.


Translation, Rotation, Scale
============================

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Curve --> Transform --> Grab/Move, Rotate, Scale, ...`
   | Hotkey:   :kbd:`G`, :kbd:`R`, :kbd:`S`


Like other elements in Blender, Curve control points can be grabbed/moved :kbd:`G`,
rotated :kbd:`R` or scaled :kbd:`S`
as described in the :doc:`Basic Transformations </editors/3dview/object/transform/introduction>` section.
When in *Edit Mode*, :doc:`proportional editing
</editors/3dview/object/transform/transform_control/proportional_edit>`
is also available for transformation actions.


Snapping
========

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    Curve Tools


:doc:`Mesh snapping </editors/3dview/object/transform/transform_control/precision/snap>`
also works with curve components.
Both control points and their handles will be affected by snapping,
except for within itself (other components of the active curve).
Snapping works with 2D curves but points will be constrained to the local XY axes.


Deforming Tools
===============

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Curve --> Transform`


The *To Sphere*, *Shear*, *Warp* and *Push/Pull* transform tools are described in the
:doc:`Transformations </editors/3dview/object/transform/introduction>` sections.
The two other tools, *Tilt* and *Shrink/Fatten Radius* are related to
:doc:`Curve Extrusion </modeling/curves/editing/extrude>`.


Smoothing
---------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
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


Mirror
======

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Curve --> Mirror`
   | Hotkey:   :kbd:`Ctrl-M`


The *Mirror* tool is also available, behaving exactly as with
:doc:`mesh vertices </modeling/meshes/editing/deforming/mirror>`,


Set Bézier Handle Type
======================

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Curve Tools --> Handles`
   | Menu:     :menuselection:`Curve --> Control Points --> Set Handle Type`
   | Hotkey:   :kbd:`V`


Handle types are a property of :doc:`Bézier curves.
</modeling/curves/introduction>` and can be used to alter features of the curve.
For example, switching to *Vector handles* can be used to create curves with sharp corners.
Read the :doc:`Bézier curves </modeling/curves/introduction>` page for more details.


.. _modeling-curves-extending:

Extending Curves
================

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Curve --> Extrude`
   | Hotkey:   :kbd:`Ctrl-LMB`, :kbd:`E`


Once a curve is created you can add new segments (in fact,
new control points defining new segments), either by extruding,
or placing new handles with :kbd:`Ctrl-LMB`.
Each new segment is added to one end of the curve.
The Bézier curve can only be extend at the endpoints.
:kbd:`Ctrl-LMB` on inner control points will make unconnected duplicates.


.. _modeling-curves-subdivision:

Subdivision
===========

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    Curve Tools
   | Menu:     :menuselection:`SurfaceTools --> Modeling --> Subdivide`
   | Hotkey:   :kbd:`W`


Curve subdivision simply subdivides all selected segments by adding one or more control points
between the selected segments. To control the number of cuts,
press :kbd:`W` to make a single subdivision.
Then press :kbd:`F6` to bring up the *Number of Cuts* menu.


Duplication
===========

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Curve --> Duplicate`
   | Hotkey:   :kbd:`Shift-D`


This command duplicates the selected control points,
along with the curve segments implicitly selected (if any).
The copy is selected and placed in *Grab* mode, so you can move it to another place.


.. _modeling-curves-joining-segments:

Joining Curve Segments
======================

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Curve --> Make Segment`
   | Hotkey:   :kbd:`F`


Two open curves can be combined into one by creating a segment between the two curves.
To join two separated curves,
select one end control point from each curve then press :kbd:`F`.
The two curves are joined by a segment to become a single curve.

.. figure:: /images/editing_curves_two-curves-joined.png
   :width: 600px

   Curves before and after joining.


Additionally, you can close a curve by joining the endpoints but note that you can only join
curves of the same type (i.e. Bézier with Bézier, NURBS with NURBS)


Separating Curves
=================

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Curve --> Separate`
   | Hotkey:   :kbd:`P`


Curve objects that are made of multiple distinct curves can be separated into their own
objects by selecting the desired segments and pressing :kbd:`P`. Note,
if there is only one curve in a Curve object,
pressing :kbd:`P` will create a new Curve object with no control points.


Deleting Elements
=================

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Curve --> Delete...`
   | Hotkey:   :kbd:`X`, :kbd:`Delete`

Options for the *Erase* pop-up menu:

Selected
   This will delete the selected control points, *without* breaking the curve (i.e.
   the adjacent points will be directly linked, joined, once the intermediary ones are deleted).
   Remember that NURBS order cannot be higher than its number of control points,
   so it might decrease when you delete some control point.
   Of course, when only one point remains, there is no more visible curve,
   and when all points are deleted, the curve itself is deleted.
Segment
   This option is somewhat the opposite to the preceding one, as it will cut the curve,
   without removing any control points, by erasing one selected segment.
   This option always removes *only one* segment (the last "selected" one),
   even when several are in the selection.
   So to delete all segments in your selection, you will have to repetitively use the same erase option...

.. list-table::

   * - .. figure:: /images/editing_curves_delete-selected.png
          :width: 320px

          Deleting Curve Selected.

     - .. figure:: /images/editing_curves_delete-segment.png
          :width: 320px

          Deleting Curve segments.


.. _modeling-curves-opening-and-closing:

Opening and Closing a Curve
===========================

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
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


.. _curve-switch-direction:

Switch Direction
================

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Curve --> Segments --> Switch Direction`,
     :menuselection:`Specials --> Switch Direction`
   | Hotkey:   :kbd:`W-Numpad2`


This command will "reverse" the direction of any curve with at least one selected element
(i.e. the start point will become the end one, and *vice versa*).
This is mainly useful when using a curve as path, or using the bevel and taper options.


Converting Tools
================

Converting Curve Type
---------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    Curve Tools --> Set Spline type

.. figure:: /images/modeling_curves_editing_introduction_set-spline-type.png
   :align: right

   Set Spline Type button.


You can convert splines in a curve object between Bézier, NURBS, and Poly curves.
Press :kbd:`T` to bring up the Tool Shelf. Clicking on the *Set Spline Type*
button will allow you to select the Spline type (Poly, Bézier or NURBS).

Note, this is not a "smart" conversion, i.e. Blender does not try to keep the same shape,
nor the same number of control points. For example, when converting a NURBS to a Bézier,
each group of three NURBS control points become a unique Bézier one (center point and two handles).


Convert Curve to Mesh
---------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Menu:     :menuselection:`Object --> Convert to --> Mesh From Curve/Meta/Surface/Text`
   | Hotkey:   :kbd:`Alt-C`


There is also an "external" conversion, from curve to mesh, that only works in *Object Mode*.
It transforms a *Curve* object into a *Mesh* object,
using the curve resolution to create edges and vertices.
Note that it also keeps the faces and volumes created by closed and extruded curves.


Convert Mesh to Curve
---------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Menu:     :menuselection:`Object --> Convert to --> Curve From Mesh/Text`
   | Hotkey:   :kbd:`Alt-C`


Mesh objects that consist of a series of connected vertices can be converted into curve
objects. The resulting curve will be a Poly curve type,
but can be converted to have smooth segments as described above.


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


Hooks
=====

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Curve --> control points --> hooks`
   | Hotkey:   :kbd:`Ctrl-H`


:doc:`Hooks </modeling/modifiers/deform/hooks>` can be added to control one or more points with other objects.


.. _modeling-curve-weight:

Set Goal Weight
===============

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :kbd:`W` :menuselection:`--> Set Goal Weight`


This sets the "goal weight" of selected control points,
which is used when a curve has :doc:`Soft Body </physics/soft_body/index>` physics,
forcing the curve to "stick" to their original positions, based on the weight.
