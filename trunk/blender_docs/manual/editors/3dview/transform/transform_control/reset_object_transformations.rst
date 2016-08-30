..    TODO/Review: {{review|}}.

****************************
Clear Object transformations
****************************

Clearing transforms simply resets the transform values.
The objects location and rotation values return to 0, and the scale returns to 1.

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Menu:     :menuselection:`Object --> Clear --> Clear Location/Clear Scale/Clear Rotation/Clear Origin`
   | Hotkey:   :kbd:`Alt-G`, :kbd:`Alt-S`, :kbd:`Alt-R`, :kbd:`Alt-O`


Clear Options
=============

.. figure:: /images/editors_3dview_transform-control_object-transformations-clear-transformations.png

   Clear Transformation menu.

Clear Location :kbd:`Alt-G`
   Clear (reset) the location of the selection.
   This will move the selection back to the coordinates 0,0,0.
Clear Scale :kbd:`Alt-S`
   Clear (reset) the scale of the selection.
   This will resize the selection back to the size it was when created.
Clear Rotation :kbd:`Alt-R`
   Clear (reset) the rotation of the selection.
   This will set the rotation of the selection to 0 degrees in each plane.
Clear Origin :kbd:`Alt-O`
   Clear (reset) the origin of the Child objects.
   This will cause Child objects to move to the coordinates of the parent.


Apply Object Transformations
============================

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Menu:     :menuselection:`Object --> Apply -->`
   | Hotkey:   :kbd:`Ctrl-A`


Applying transform values essentially resets the values of object's position, rotation,
or scale, but does not actually do anything to the object.
The center point is moved to the origin and the transform values are set to zero.
In terms of scale, the scale values return to 1.

To apply a transform select the *Apply* sub-menu from the *Object menu* or
use the shortcut :kbd:`Ctrl-A` and select the appropriate transform to apply.

*Make Duplicates Real* unlinks linked duplicates so each duplicate now has its own data-block.


Apply Options
-------------

.. figure:: /images/editors_3dview_transform-control_object-transformations-apply-transformations.png

   Apply Transformation menu.


Apply Location :kbd:`Ctrl-A`
   Apply (set) the location of the selection.
   This will make Blender consider the current location to be equivalent to 0 in each plane
   i.e. the selection will not move, the current location will be considered to be the "default location".
   The Object Center will be set to actual 0,0,0 (where the colored axis lines intersect in each view).
Apply Rotation :kbd:`Ctrl-A`
   Apply (set) the rotation of the selection.
   This will make Blender consider the current rotation to be equivalent to 0 degrees in each plane
   i.e. the selection will not rotated, the current rotation will be considered to be the "default rotation".
Apply Scale :kbd:`Ctrl-A`
   Apply (set) the scale of the selection.
   This will make Blender consider the current scale to be equivalent to 0 in each plane
   i.e. the selection will not scaled, the current scale will be considered to be the "default scale".
Apply Rotation and Scale :kbd:`Ctrl-A`
   Apply (set) the rotation and scale of the selection. Do the above two applications simultaneously.
All Transforms to Deltas
   Converts all "normal" transformations to :ref:`Delta transforms <transform-delta>`.
Animated Transform to Deltas
   Converts the "normal" transformation animations (animations done to the translation,
   scale, and rotation values) to :ref:`Delta transforms <transform-delta>`.
   To use this tool simply select the object with the animations that you want to convert press :kbd:`Ctrl-A`
   and select *Animated Transform to Deltas*.

Apply Visual Transform :kbd:`Ctrl-A`
   Apply (set) the result of a constraint and apply this back to the Object's location, rotation and scale.
Make Duplicate Real :kbd:`Shift-Ctrl-A`
   Make any duplicates attached to this Object real so that they can be edited.
