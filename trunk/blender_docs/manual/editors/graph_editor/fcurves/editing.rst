
*******
Editing
*******

By default, when new channels are added, the *Graph Editor* sets them to *Edit Mode*.
Selected channels can be locked by pressing :kbd:`Tab`.

Many of the hotkeys are the same as the viewport ones, for example:

- :kbd:`G` to grab
- :kbd:`R` to rotate
- :kbd:`S` to scale
- :kbd:`B` for border select/deselect

And of course you can lock the transformation along the X (time frame) or Y
(value) axises by pressing :kbd:`X` or :kbd:`Y` during transformation.

For precise control of the keyframe position and value,
you can set values in the *Active Keyframe* of the Properties Region.


Transform Snapping
==================

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
      Flatten the *Bézier* handles for the selected keyframes.

      .. list-table::
         Flatten Handles snapping example.

         * - .. figure:: /images/animation-f-curves-flatten-handles-1.jpg
                :width: 200px

                Before Flatten Handles.

           - .. figure:: /images/animation-f-curves-flatten-handles-2.jpg
                :width: 200px

                After Flatten Handles.


Mirror
======

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
===============

*Clean Keyframes* resets the keyframe tangents to their auto-clamped shape,
if they have been modified. *Clean Keyframes* :kbd:`O`

.. list-table::

   * - .. figure:: /images/fcurve-clean1.jpg
          :width: 300px

          F-Curve before cleaning.

     - .. figure:: /images/fcurve-clean2.jpg
          :width: 300px

          F-Curve after cleaning.


Smoothing
=========

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`Key --> Smooth Keys`
   | Hotkey:   :kbd:`Alt-O`


There is also an option to smooth the selected curves , but beware: its algorithm seems to be
to divide by two the distance between each keyframe and the average linear value of the curve,
without any setting, which gives quite a strong smoothing! Note that the first and last keys
seem to be never modified by this tool.

.. list-table::

   * - .. figure:: /images/fcurve-clean1.jpg
          :width: 300px

          F-Curve before smoothing.

     - .. figure:: /images/fcurve-smooth.jpg
          :width: 300px

          F-Curve after smoothing.


Sampling and Baking Keyframes
=============================

Sample Keyframes :kbd:`Shift-O`
   Sampling a set a keyframes replaces interpolated values with a new keyframe for each frame.

   .. list-table::

      * - .. figure:: /images/fcurve-sample.jpg
             :width: 300px

             F-Curve before sampling.

        - .. figure:: /images/fcurve-sample2.jpg
             :width: 300px

             F-Curve after sampling.


Bake Curves :kbd:`Alt-C`
   Baking a curve replaces it with a set of sampled points, and removes the ability to edit the curve.
