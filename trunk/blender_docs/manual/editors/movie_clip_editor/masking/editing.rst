.. Editors Note: This page gets copied into :doc:`</editors/uv_image/masking>`

*******
Editing
*******

Editing Masks
=============

Masks can be created in the image and movie clip editors, by changing the mode from View to Mask in the header.
This will add various tools and properties to the editor panels,
while hiding others that are not needed for interacting with masks.
The tools and panels available to edit masks are the same in both editors,
with the exception that linking masks to motion tracking data is only possible in the movie clip editor.

Once set to Mask mode, a Mask data-block can be added. Any image, movie clip,
render or compositing result can be used as a backdrop to draw masks over.
To get interactive feedback on the resulting mask,
a Mask node can be connected directly to a Viewer node in the compositor,
which will then keep updating the compositing result while editing.


S-Curves
--------

The curve type used for creating mask splines is almost a Bézier curve, but with some differences.
The curve needed to support feathering in a way that stuck to the curve as you edited it,
for ease of editing an animation. These are called S-Curves.

Besides the handles, every control point also has points that define the feather between
the current point and the next point on the spline. Each feather point is stored in UV space,
where U means position across spline segment, and V means distance between main spline and feather points.

.. figure:: /images/editors_movie-clip_masking_scurve.png

   S- Curve Explained.

This allows for deforming the main spline in almost any way,
and the feather will be updated automatically to reflect that change.
For example if there is just rotation of the spline,
feather would stay completely unchanged. If one point's feather is moved,
the other feathers will be automatically stretched uniformly along that segment
and the overall shape will be almost the same as artists would want it to be.


Control Points
--------------

Editing of mask splines happens in a way similar to editing Bézier curves or paths in GIMP or other curve editors:
control points are added to define the spline itself, and handles of different types are used to create smooth bends.
This makes it possible to define a mask with few points to easily follow an object in footage.

- :kbd:`Ctrl-LMB` is used to place new control points and define handle orientations.
- :kbd:`Alt-C` to close the mask by joining the last control point to the first.
- Existing control points can be translated, scaled and rotated with the usual G, S, R shortcuts.
- :kbd:`X` or Delete removes control points.


Selection
---------

The usual selection and hide/reveal tools are available:

- :kbd:`A` toggle select all.
- :kbd:`B` , :kbd:`C` border and circle Select.
- :kbd:`Ctrl-L` select linked from selection, L: select linked with mouse.
- :kbd:`Ctrl-Alt-LMB` lasso select.
- :kbd:`H` hide selected, :kbd:`Shift-H` hide unselected, :kbd:`Alt-H` reveal.


Curve Handles
-------------

- :kbd:`Alt-C` cycle toggle spline, to create a close curve or open it again.
- :kbd:`V` set handle type for selected spline points.
- :kbd:`Ctrl-N` make normals (handle directions) consistent.
- Switch Direction handle directions in/out.


.. _mask-feather:

Feather
-------

It is possible to control feather of mask, including a way to define non-linear feather.
Linear feather is controlled by a slider,
non-linear feather is controlled in the same curve-based way to define feather falloff.

- :kbd:`Shift-LMB` is used to define a feathering outline curve. To create an initial feather,
  sliding from a spline control point outside or inside will create and position feather points.
  After this :kbd:`Shift-LMB`
  will insert new feather point and mouse sliding can be used to move them around.
- :kbd:`Alt-S` will scale the feather size.


Animating
=========

Masks can be driven over the time so that they follow some object from the footage,
e.g. a running actor. This animation can be done in several ways:

- Control points can be parented to motion tracks.
  This way is the main way to interact with masks in a motion tracking workflow.
- Keyframe animation of control points using a shape keying system.
  This can be useful when there are not enough good feature points to track in the footage,
  or the mask is not based on footage.

For animation more complex mask shapes, it is also possible to do more high level animation:

- Splines and mask layers can be animated as a whole, instead of individual control points.
- Masks can be parented to motion tracking data.
  Works for both individual mask point parenting and for overall spline.
  To select motion track to be parented to use :kbd:`Ctrl-RMB`.
  To parent selected mask points to active motion track use :kbd:`Ctrl-P`.
- Mask animation timing can be edited from the Dope Sheet.
  Here there is a mask mode where mask keyframes can be selected and edited.


Shape Keys
----------

Masks can be animated with shape keyframing. This works on the level of mask layers,
so inserting a shape key will keyframe all the splines and points contained in it.

- :kbd:`I` will insert a shape key for the active mask layer at the current frame
- :kbd:`Alt-I`  will clear the shape key for the active mask layer at the current frame.
- Feather Reset Animation: Resets the feather offset across all animated frames.
- Re-Key Points of Selected Shapes:
  Re-interpolate selected points on across the range of keys selected in the dope sheet.
