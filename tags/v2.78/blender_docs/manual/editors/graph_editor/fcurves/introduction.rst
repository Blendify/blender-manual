..    TODO/Review: {{review|text= move direction of time?}}.

************
Introduction
************

After animating some property in Blender using keyframes you can edit their corresponding curves.
When something is "animated," it changes over time. This curve in shown as something called an F-Curve.
Basically what an F-Curve does is it an interpolates between two animated properties. In Blender,
animating an object means changing one of its properties, such as an objects location, or its scale.

As mentioned, Blender's fundamental unit of time is the "frame",
which usually lasts just a fraction of a second, depending on the *frame rate* of the scene.
As animation is composed of incremental changes spanning multiple frames,
usually these properties are **not** manually modified *frame by frame*, because:

- It would take ages!
- It would be very difficult to get smooth variations of the property
  (unless you compute mathematical functions and type a precise value for each frame, which would be crazy).

This is why nearly all direct animation is done using *interpolation*.

The idea is simple: you define a few Keyframes, which are multiple frames apart.
Between these keyframes, the properties' values are computed (interpolated)
by Blender and filled in. Thus, the animators' workload is significantly reduced.

.. figure:: /images/animation-f-curves-concept.png
   :align: right
   :width: 200px

   Example of interpolation.

For example, if you have:

- A control point of value 0 at frame 0,
- another one of value 10 at frame 25,
- and you use linear interpolation,

then, at frame 5 we get a value of 2.

The same goes for all intermediate frames: with just two points,
you get a smooth growth from (0 to 10) along the 25 frames.
Obviously, if you would like the frame 15 to have a value of 9,
you would have to add another control point (or keyframe)...


Settings
========

F-Curves have three additional properties, which control the interpolation between points,
extension behavior, and the type of handles.


.. _editors-graph-fcurves-settings-interpolation:

Interpolation Mode
------------------

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`Curve --> Interpolation Mode`
   | Hotkey:   :kbd:`T`


You have three choices:

Constant
   There is no interpolation at all. The curve holds the value of its last keyframe,
   giving a discrete (stairway) "curve".
   Usually only used during the initial "blocking" stage in pose-to-pose animation workflows.

   .. figure:: /images/fcurve-constant.png
      :width: 300px

      Constant.

Linear
   This simple interpolation creates a straight segment between each neighbor keyframes, giving a broken line.
   It can be useful when using only two keyframes and the *Extrapolation* extend mode,
   to easily get an infinite straight line (i.e. a linear curve).

   .. figure:: /images/fcurve-linear.png
      :width: 300px

      Linear.

Bézier
   The more powerful and useful interpolation, and the default one.
   It gives nicely smoothed curves, i.e. smooth animations!

   .. figure:: /images/fcurve-clean1.png
      :width: 300px

      Bézier.


Remember that some F-Curves can only take discrete values,
in which case they are always shown as if constant interpolated, whatever option you chose.


Extrapolation
-------------

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`Channel --> Extrapolation Mode`
   | Hotkey:   :kbd:`Shift-E`


Extrapolation defines the behavior of a curve before the first and after the last keyframes.

There are two basic extrapolation modes:

Constant
   The default one, curves before their first keyframe and after their last one have a constant value
   (the one of these first and last keyframes).

   .. figure:: /images/fcurve-extrapolate1.png
      :width: 300px

      Constant extrapolation.

Linear
   Curves ends are straight lines (linear), as defined by their first two keyframes
   (respectively their last two keyframes).

   .. figure:: /images/fcurve-extrapolate2.png
      :width: 300px

      Linear extrapolation.


Additional extrapolation tools (e.g. the "Cycles" F-Modifier)
are located in the :doc:`F-Curve Modifiers </editors/graph_editor/fcurves/fmodifiers>`


.. _editors-graph-fcurves-settings-handles:

Handle Types
------------

There is another curve option quite useful for Bézier-interpolated curves.
You can set the type of handle to use for the curve points :kbd:`V`

Automatic
   Keyframes are automatically interpolated.

   .. figure:: /images/fcurve-auto.png
      :width: 400px

      Auto handles.

Vector
   Creates linear interpolation between keyframes.
   The linear segments remain if keyframe centers are moved. If handles are moved, the handle becomes Free.

   .. figure:: /images/fcurve-vector.png
      :width: 400px

      Vector handles.

Aligned
   Handle maintain rotation when moved, and curve tangent is maintained.

   .. figure:: /images/fcurve-aligned.png
      :width: 400px

      Aligned handles.

Free
   Breaks handles tangents.

   .. figure:: /images/fcurve-free.png
      :width: 400px

      Free handles.

Auto Clamped
   Auto handles clamped to not overshoot.

   .. figure:: /images/fcurve-autoclamped.png
      :width: 400px

      Auto clamped handles.


Direction of Time
=================

Although F-Curves are very similar to :doc:`/modeling/curves/bezier`,
there are some important differences.

For obvious reasons, a property represented by a Curve
cannot have more than **one** value at a given time, hence:

- when you move a control point ahead of a control point that was previously ahead of the point that you are moving,
  the two control points switch their order in the edited curve, to avoid that the curve goes back in time
- for the above reason, it is impossible to have a closed F-Curve

.. list-table:: Two control points switching: the curve cannot go back in time!

   * - .. figure:: /images/animation-f-curves-moving-1.png

          Before moving the second keyframe.

     - .. figure:: /images/animation-f-curves-moving-2.png

          After moving the second keyframe.
