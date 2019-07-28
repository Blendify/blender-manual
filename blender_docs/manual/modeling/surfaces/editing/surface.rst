
*******
Surface
*******

Surface editing has even fewer tools and options than its curve counterpart,
but has many common points with it...
So this page covers (or tries to cover) all the subjects,
from the basics of surface editing to more advanced topics, like retopology.


Translation, Rotation, Scale
============================

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Panel:     :menuselection:`Toolbar --> Tools --> Transform`
   :Menu:      :menuselection:`Surface --> Transform --> Move, Rotate, Scale`
   :Hotkey:    :kbd:`G`, :kbd:`R`, :kbd:`S`

Once you have a selection of one or more control points,
you can move :kbd:`G`, rotate :kbd:`R` or scale :kbd:`S` them, like many other things in Blender,
as described in the :doc:`Manipulation in 3D Space </scene_layout/object/editing/transform/introduction>` section.

You also have in *Edit Mode* an extra option when using these basic manipulations:
the :doc:`Proportional Editing </scene_layout/object/editing/transform/control/proportional_edit>`.


Transform Panel
---------------

See :ref:`modeling-curves-transform-panel`.


Advanced Transform Tools
========================

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Panel:     :menuselection:`Toolbar --> Tools --> Surface Tools --> Deform: Randomize`
   :Menu:      :menuselection:`Surface --> Transform`

The *To Sphere*, *Shear*, *Warp* and *Push/Pull* transform tools are described
in the :doc:`Mesh Transformation </modeling/meshes/editing/transform/index>` section.
Surfaces have no specific transform tools.


NURBS Control Points Settings
=============================

We saw in a :ref:`previous page <modeling-surfaces-weight>` that NURBS control points have a weight,
which is the influence of this point on the surface.
You set it either using the big *Set Weight* button in the *Curve Tools* panel
(after having defined the weight in the number field to the right),
or by directly typing a value in the :kbd:`W` number field of the *Transform* panel.


Opening or Closing a Surface
============================

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Panel:     :menuselection:`Toolbar --> Tools --> Surface tools --> Curve: Toggle Cyclic`
   :Menu:      :menuselection:`Surface --> Toggle Cyclic`
   :Hotkey:    :kbd:`Alt-C`

As in :ref:`curves <modeling-curves-toggle-cyclic>`,
surfaces can be closed (cyclic) or open. However, as surfaces are 2D,
you can control this property independently along the U and V axes.

To toggle the cyclic property of a surface along one axis,
use :kbd:`Alt-C` and choose either *cyclic U* or *cyclic V* from the pop-up menu.
The corresponding surface's outer edges will join together to form a "closed" surface.

.. note:: Inner and Outer

   Surfaces have an "inner" and "outer" face, the first being black whereas the latter is correctly shaded.
   When you close a surface in one or two directions, you might get an entirely black object! In this case,
   just :ref:`Switch Direction <modeling_surfaces_editing_segments_switch-direction>` of the surface.


.. _modeling_surface_editing_duplicating:

Duplication
===========

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Panel:     :menuselection:`Toolbar --> Tools --> Surface tools --> Curve: Duplicate`
   :Menu:      :menuselection:`Surface --> Duplicate`
   :Hotkey:    :kbd:`Shift-D`

Similar as with meshes and curves, this tool duplicates the selection.
The copy is selected and placed in move mode, so you can move it to another place.

However, with surfaces there are some selections that cannot be duplicated,
in which case they will just be placed in move mode... In fact,
only selections forming a *single* valid sub-grid are copyable; let us see this in practice:

- You can copy a single control point.
  From it, you will be able to "extrude" a "surface curve" along the U axis,
  and then extrude this unique U row along the V axis to create a real new surface.
- You can copy a single continuous part of a row (or a whole row, of course).
  This will give you a new *U row*, even if you selected (part of) a V row!
- You can copy a single whole sub-grid.

.. note::

   Trying to duplicate several valid "sub-grids" (even being single points)
   at once will not work; you will have to do it one after the other...


Deleting Elements
=================

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Panel:     :menuselection:`Toolbar --> Tools --> Surface tools --> Curve: Delete`
   :Menu:      :menuselection:`Surface --> Delete...`
   :Hotkey:    :kbd:`X`, :kbd:`Delete`

The *Erase* pop-up menu of surfaces offers you two options:

Selected
   This will delete the selected rows, *without* breaking the surface
   (i.e. the adjacent rows will be directly linked, joined, once the intermediary ones are deleted).
   The selection must abide by the following rules:

   - Whole rows, and only whole rows must be selected.
   - Only rows along the same axis must be selected (i.e. you cannot delete both U and V rows at the same time).

   Also remember that NURBS order cannot be higher than its number of control points in a given axis,
   so it might decrease when you delete some control points...
   Of course, when only one row remains, the surface becomes a "surface curve"; when only one point remains,
   there is no more visible surface; and when all points are deleted, the surface itself is deleted.

All
   As with meshes or curves, this deletes everything in the object!


Example
-------

.. figure:: /images/modeling_surfaces_editing_deleting.png

   Before and after.

In Fig. *Before and after (left)* a row of control points has been selected by initially
selecting the one control point and using :kbd:`Shift-R` to select the remaining
control points. Then, using the *Delete Menu* :kbd:`X`,
the *selected* row of control points is erased, resulting in Fig. *Before and after (right)*.


Joining or Merging Surfaces
===========================

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Surface --> Make Segment`
   :Hotkey:    :kbd:`F`

Just like :ref:`curves <modeling-curves-make-segment>`,
merging two surfaces requires that a single edge, a border row of control points,
from two separate surfaces is selected. This means that the surfaces must be part of the same object. For example,
you cannot join two surfaces while in *Object Mode* -- but you can of course, as with any objects of the same type,
join two or more *Surface* objects
into one object :kbd:`Ctrl-J` -- they just will not be "linked" or merged in a single one...
Yes, it's a bit confusing!

This tool is equivalent to creating edges or faces for meshes
(hence its shortcut), and so it only works in *Edit Mode*.
The selection must contain only border rows of the same resolution
(with the same number of control points),
else Blender will try to do its best to guess what to merge with what, or the merge will fail
(either silently, or stating that ``Resolution does not match`` if rows with
different number of points are selected, or that there is ``Too few selections to merge``
if you only selected points in one surface...).
To select control points of different surfaces,
in the same object, you must use either box select or circle select.
Holding down :kbd:`Ctrl` while :kbd:`LMB` will not work.

So to avoid problems, you should always only select border rows with the same number of
points... Note that you can join a border U row of one surface with a border V row of another
one, Blender will automatically "invert" the axis of one surface for them to match correctly.

NURBS surface curves are often used to create objects like hulls,
as they define cross sections all along the object,
and you just have to "skin" them as described above to get a nice, smooth and harmonious shape.


Examples
--------

Fig. :ref:`fig-surface-edit-join-ready` is an example of two NURBS surface curves, **not** NURBS curves,
in *Edit Mode*, ready to be joined.
Fig. :ref:`fig-surface-edit-join-complete` is the result of joining the two curves.

.. list-table::

   * - .. _fig-surface-edit-join-ready:

       .. figure:: /images/modeling_surfaces_editing_joining-ready.png

          Joining ready.

     - .. _fig-surface-edit-join-complete:

       .. figure:: /images/modeling_surfaces_editing_joining-complete.png

          Joining complete.


.. _bpy.ops.curve.spin:

Spin
====

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Panel:     :menuselection:`Toolbar --> Tools --> Surface tools --> Modeling: Spin`
   :Menu:      :menuselection:`Surface --> Spin`

This tool is a bit similar to its :doc:`mesh counterpart </modeling/meshes/editing/duplicating/spin>`
but with less control and options (in fact, there is none!).

It only works on selected "surfaces" made of *one U row* (and not with one V row),
so-called "surface curves", by "extruding" this "cross section" in a square pattern,
automatically adjusting the weights of control points to get a perfect circular extrusion
(this also implies closing the surface along the V axis), following exactly the same principle
as for the *NURBS Tube* or *NURBS Donut* primitives.
