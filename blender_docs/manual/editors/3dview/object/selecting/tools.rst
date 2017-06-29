
*****
Tools
*****

Point Selection
===============

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Hotkey:   :kbd:`RMB` and :kbd:`Shift-RMB`

The simplest form of object selection consists of using :kbd:`RMB` on it.
To add to the selection, use :kbd:`Shift-RMB` on more objects.
If the objects are overlapping in the view, you can use :kbd:`Alt-RMB`
to cycle through possible choices (*Object Mode* only).
If you want to add to a selection this way then the shortcut becomes :kbd:`Shift-Alt-RMB`.
To activate an object that is already selected, click :kbd:`Shift-RMB` on it.

To *deselect* an active object,
click :kbd:`Shift-RMB` one time and hence, two clicks if the object is not active.
Note that this only works if there are no other objects under the mouse.
Otherwise it just adds those to the selection. There appears to be no workaround for this bug.


.. _bpy.ops.view3d.select_border:

Border Select
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode and Edit Mode
   | Menu:     :menuselection:`Select --> Border Select`
   | Hotkey:   :kbd:`B`


To activate the tool use the :kbd:`B`.
With *Border Select* you draw a rectangle while holding down :kbd:`LMB`.
Any object that lies even partially within this rectangle becomes selected.
If any object that was last active appears in the selection it will become active.

For deselecting objects,
use :kbd:`MMB` or *Border Select* again with holding :kbd:`Shift` or :kbd:`Alt`.

To cancel the selection use :kbd:`RMB`.


Example
-------

.. figure:: /images/object-selection-border.jpg

   Border selecting in three steps.


*Border Select* has been activated in the first image and is indicated by showing a dotted cross-hair cursor.
In the second image, the *selection region* is being chosen by drawing a rectangle with the :kbd:`LMB`.
The rectangle is only covering two cubes.
Finally, in the third image, the selection is completed by releasing :kbd:`LMB`.

Notice in the third image, the bright color of left-most selected cube.
This means it is the "active object",
the last selected object prior to using the *Border Select* tool.

.. hint::

   *Border Select* adds to the previous selection, so in order to select
   only the contents of the rectangle, deselect all with :kbd:`A` first.


.. _bpy.ops.view3d.select_circle:

Circle Select
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode and Edit Mode
   | Menu:     :menuselection:`Select --> Circle Select`
   | Hotkey:   :kbd:`C`


*Circle Select* :kbd:`C` is used by moving with dotted circle through objects with :kbd:`LMB`.
You can select any object by touching of circle area.
It is possible to dynamically change the diameter of circle by scrolling :kbd:`Wheel`
or with :kbd:`NumpadPlus` and :kbd:`NumpadMinus` as seen in pictures below.
Deselection is under the same principle -- :kbd:`MMB`.
To cancel the selection use :kbd:`RMB` or key :kbd:`Esc` or :kbd:`Enter`.

.. list-table::

   * - .. figure:: /images/object-selection-circle1.png
          :width: 320px

          Circle selection.

     - .. figure:: /images/object-selection-circle2.png
          :width: 320px

          ...with huge circle.


.. _bpy.ops.view3d.select_lasso:

Lasso Select
============

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode and Edit Mode
   | Menu:     no entry in the menu
   | Hotkey:   :kbd:`Ctrl-LMB`


Lasso select is used by drawing a dotted line around vertices or
the origin of the objects, in *Object Mode*.

While holding :kbd:`Ctrl` down, you simply have to draw around the points
you want to select with :kbd:`LMB`.

Lasso select adds to the previous selection. For deselection, use :kbd:`Ctrl-Shift-LMB`.

.. figure:: /images/object-selection-lasso.png

   Lasso selection example.
