..    TODO/Review: {{review|text= move direction of time?}} .


********
F-Curves
********

Once you have created keyframes for something, you can edit their corresponding curves.
In Blender 2.5, IPO Curves have been replaced by FCurves, however,
editing these curves is essentially still the same.


The concept of Interpolation
============================

When something is "animated," it changes over time. In Blender,
animating an object means changing one of its properties, such as its X location,
or the Red channel value of its material diffuse color, and so on,
during a certain amount of time.

As mentioned, Blender's fundamental unit of time is the "frame",
which usually lasts just a fraction of a second, depending on the *frame rate* of the scene.

As animation is composed of incremental changes spanning multiple frames,
usually these properties ARE NOT manually modified *frame by frame*, because:

- it would take ages!
- it would be very difficult to get smooth variations of the property
  (unless you compute mathematical functions and type a precise value for each frame, which would be crazy).

This is why nearly all direct animation is done using **interpolation**.

The idea is simple: you define a few Key Frames, which are multiple frames apart.
Between these keyframes, the properties' values are computed (interpolated)
by Blender and filled in. Thus, the animators' workload is significantly reduced.


.. figure:: /images/Animation-F-Curves-Concept.jpg
   :width: 200px

   Example of interpolation


For example, if you have:

- a control point of value ``0`` at frame ``0``,
- another one of value ``10`` at frame ``25``,
- linear interpolation,

then, at frame ``5`` we get a value of ``2``.


The same goes for all intermediate frames: with just two points,
you get a smooth growth from ``0`` to ``10`` along the **25 frames**.
Obviously, if you'd like the frame ``15`` to have a value of ``9``,
you'd have to add another control point (or keyframe)...


Settings
========

F-curves have three additional properties, which control the interpolation between points,
extension behavior, and the type of handles.


Interpolation Mode
------------------

You have three choices (:kbd:`T`, or :menuselection:`Curve --> Interpolation Mode`):

Constant
   There is no interpolation at all. The curve holds the value of its last keyframe,
   giving a discrete (stairway) "curve".
   Usually only used during the initial "blocking" stage in pose-to-pose animation workflows.


.. figure:: /images/fcurve-constant.jpg
   :width: 300px

   Constant.


Linear
   This simple interpolation creates a straight segment between each neighbor keyframes, giving a broken line.
   It can be useful when using only two keyframes and the *Extrapolation* extend mode,
   to easily get an infinite straight line (i.e. a linear curve).


.. figure:: /images/fcurve-linear.jpg
   :width: 300px

   Linear.


Bezier
   The more powerful and useful interpolation, and the default one.
   It gives nicely smoothed curves, i.e. smooth animations!


.. figure:: /images/fcurve-clean1.jpg
   :width: 300px

   Bézier.


Remember that some FCurves can only take discrete values,
in which case they are always shown as if constant interpolated, whatever option you chose.


Extrapolation
-------------

(:kbd:`Shift-E`, or :menuselection:`Channel --> Extrapolation Mode`)

Extrapolation defines the behavior of a curve before the first and after the last keyframes.

There are two basic extrapolation modes:

Constant
   The default one, curves before their first keyframe and after their last one have a constant value
   (the one of these first and last keyframes).


.. figure:: /images/fcurve-extrapolate1.jpg
   :width: 300px

   Constant extrapolation


Linear
   Curves ends are straight lines (linear), as defined by their first two keyframes
   (respectively their last two keyframes).


.. figure:: /images/fcurve-extrapolate2.jpg
   :width: 300px

   Linear extrapolation


Additional extrapolation tools (e.g. the "Cycles" F-Modifier)
are located in the :doc:`F-Curve Modifiers </animation/editors/graph/fmodifiers>`


Handle Types
------------

There is another curve option quite useful for Bézier-interpolated curves.
You can set the type of handle to use for the curve points :kbd:`V`

Automatic
   Keyframes are automatically interpolated


.. figure:: /images/fcurve-auto.jpg
   :width: 400px

   Auto handles


Vector
   Creates linear interpolation between keyframes.
   The linear segments remain if keyframe centers are moved. If handles are moved, the handle becomes Free.


.. figure:: /images/fcurve-vector.jpg
   :width: 400px

   Vector handles


Aligned
   Handle maintain rotation when moved, and curve tangent is maintained


.. figure:: /images/fcurve-aligned.jpg
   :width: 400px

   Aligned handles


Free
   Breaks handles tangents


.. figure:: /images/fcurve-free.jpg
   :width: 400px

   Free handles


Auto Clamped
   Auto handles clamped to not overshoot


.. figure:: /images/fcurve-autoClamped.jpg
   :width: 400px

   Auto clamped handles


Direction of time
=================

Although F-curves are very similar to :ref:`curves_bezier`,
there are some important differences.

For obvious reasons,
**a property represented by a Curve cannot have more than one value at a given time**,
hence:


- when you move a control point ahead of a control point that was previously ahead of the point that you are moving,
  the two control points switch their order in the edited curve, to avoid that the curve goes back in time
- for the above reason, it's impossible to have a closed Ipo curve


.. list-table::
   Two control points switching: the curve can't go back in time!

   * - .. figure:: /images/Animation-F-Curves-Moving-1.jpg

          Before moving the second keyframe

     - .. figure:: /images/Animation-F-Curves-Moving-2.jpg

          After moving the second keyframe

Editing Tools
=============

By default, when new channels are added, the *Graph Editor* sets them to *Edit Mode*.
Selected channels can be locked by pressing :kbd:`Tab`.

Many of the hotkeys are the same as the viewport ones, for example:

* :kbd:`G` to grab
* :kbd:`R` to rotate
* :kbd:`S` to scale
* :kbd:`B` for border select/deselect

And of course you can lock the transformation along the X (time frame) or Y
(value) axises by pressing :kbd:`X` or :kbd:`Y` during transformation.

For precise control of the keyframe position and value,
you can set values in the *Active Keyframe* of the Properties Region.

Transform Snapping
------------------

When transforming keyframes with :kbd:`G`, :kbd:`R`, :kbd:`S`,
the transformation can be snapped to increments.

Snap Transformation to 1.0 :kbd:`Ctrl`

Divide Transformation by 10.0 :kbd:`Shift`

Keyframes can be snapped to different properties by using the *Snap Keys* tool.

Snap Keys :kbd:`Shift-S`
   Current Frame
      Snap the selected keyframes to the *Time Cursor*.
   Cursor Value
      Snap the selected keyframes to the *Cursor*.
   Nearest Frame
      Snap the selected keyframes to their nearest frame individually.
   Nearest Second
      Snap the selected keyframes to their nearest second individually, based on the *FPS* of the scene.
   Nearest Marker
      Snap the selected keyframes to their nearest marker individually.
   Flatten Handles
      Flatten the *Bezier* handles for the selected keyframes.


.. list-table::
   Flatten Handles snapping example.

   * - .. figure:: /images/Animation-F-Curves-Flatten-Handles-1.jpg
          :width: 200px

          Before Flatten Handles.

     - .. figure:: /images/Animation-F-Curves-Flatten-Handles-2.jpg
          :width: 200px

          After Flatten Handles.

Mirror
------

Selected keyframes can be mirrored over different properties using the *Mirror Keys*
tool.

Mirror Keys :kbd:`Shift-M`
   By Times Over Current Frame
      Mirror horizontally over the *Time Cursor*.
   By Values over Cursor Value
      Mirror vertically over the *Cursor*.
   By Times over Time 0
      Mirror horizontally over frame 0.
   By Values over Value 0
      Mirror vertically over value 0.
   By Times over First Selected Marker
      Mirror horizontally the over the first selected *Marker*.


Clean Keyframes
---------------

*Clean Keyframes* resets the keyframe tangents to their auto-clamped shape, if they have been modified.
*Clean Keyframes* :kbd:`O`

.. list-table::

   * - .. figure:: /images/fcurve-clean1.jpg
          :width: 300px

          FCurve before cleaning

     - .. figure:: /images/fcurve-clean2.jpg
          :width: 300px

          FCurve after cleaning


Smoothing
---------

(:kbd:`Alt-O` or :menuselection:`Key --> Smooth Keys`)
There is also an option to smooth the selected curves , but beware: its algorithm seems to be
to divide by two the distance between each keyframe and the average linear value of the curve,
without any setting, which gives quite a strong smoothing! Note that the first and last keys
seem to be never modified by this tool.

.. list-table::

   * - .. figure:: /images/fcurve-clean1.jpg
          :width: 300px

          FCurve before smoothing

     - .. figure:: /images/fcurve-smooth.jpg
          :width: 300px

          FCurve after smoothing


Sampling and Baking Keyframes
-----------------------------

Sample Keyframes :kbd:`Shift-O`
   Sampling a set a keyframes replaces interpolated values with a new keyframe for each frame.

.. list-table::

   * - .. figure:: /images/fcurve-sample.jpg
          :width: 300px

          FCurve before sampling

     - .. figure:: /images/fcurve-sample2.jpg
          :width: 300px

          FCurve after sampling

Bake Curves :kbd:`Alt-C`
   Baking a curve replaces it with a set of sampled points, and removes the ability to edit the curve.
