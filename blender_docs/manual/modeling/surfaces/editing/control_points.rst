
**************
Control Points
**************

NURBS Control Points Settings
=============================

We saw in a :ref:`previous page <modeling-surfaces-weight>` that NURBS control points have a weight,
which is the influence of this point on the surface.
You set it either using the big *Set Weight* button in the *Curve Tools* panel
(after having defined the weight in the number field to the right),
or by directly typing a value in the :kbd:`W` number field of the *Transform* panel.


Adding or Extruding
===================

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Panel:     :menuselection:`Toolbar --> Tools --> Surface tools --> Modeling: Extrude`
   :Menu:      :menuselection:`Surface --> Extrude`
   :Hotkey:    :kbd:`E`, :kbd:`Ctrl-LMB`

Unlike meshes or curves, you cannot generally directly add new control points to a surface
(with :kbd:`Ctrl-LMB` clicks), as you can only extend a surface by adding a whole U or V row at once.
The only exception is when working on a NURBS surface curve, i.e.
a surface with only one control point on each U or V row. In this special case,
all works exactly as with :ref:`curves <modeling-curves-extrude>`.

Most of the time, only extrusion is available. As usual, once the tool is activated
the extrusion happens immediately and you are placed into *select mode*,
ready to drag the new extruded surface to its destination.

There are two things very important to understand:

#. Surfaces are *2D* objects. So you cannot extrude anything *inside* a surface
   (e.g. "inner" row); it would not make any sense!
#. The control "grid" *must* remain "squarish",
   which means that you can only extrude a whole row, not parts of rows here and there...

To summarize, the *Extrude* tool will only work, when one and only one whole border
row is selected, otherwise nothing happens.

As for curves, you cannot create a new surface in your object out of nowhere,
by just :kbd:`Ctrl-LMB` -- clicking with nothing selected.
However, unlike for curves, there is no "cut" option allowing you to separate a surface into several parts,
so you only can create a new surface by :ref:`Duplicating <modeling_surface_editing_duplicating>`
an existing one, or adding a new one with the *Add* menu.


Examples
--------

Images Fig. :ref:`fig-surface-edit-select-point` to Fig. :ref:`fig-surface-edit-extruding`
show a typical extrusion along the side of a surface.

In Fig. :ref:`fig-surface-edit-select-point` and :ref:`fig-surface-edit-select-row`,
a border row of control points were highlighted by selecting a single control point,
and then using the handy row select tool :kbd:`Shift-R`
to select the rest of the control points.

.. list-table::

   * - .. _fig-surface-edit-select-point:

       .. figure:: /images/modeling_surfaces_editing_selecting-point.png

          Selecting control point.

     - .. _fig-surface-edit-select-row:

       .. figure:: /images/modeling_surfaces_editing_selecting-row.png

          :kbd:`Shift-R`

The edge is then extruded using :kbd:`E` as shown in Fig. :ref:`fig-surface-edit-extruding`.
Notice how the mesh has bunched up next to the highlighted edge.
That is because the *new* extruded surface section is bunched up there as well.

.. _fig-surface-edit-extruding:

.. figure:: /images/modeling_surfaces_editing_extruding.png

   Extruding.

By moving the new section away from the area, the surface begins to "unbunch".

You can continue this process of extruding or adding new surface sections
until you have reached the final shape for your model.
