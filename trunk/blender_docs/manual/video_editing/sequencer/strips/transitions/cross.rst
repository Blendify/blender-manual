.. _bpy.ops.sequencer.crossfade_sounds:

***************
Sound Crossfade
***************

TODO2.8.


.. _bpy.types.CrossSequence:

*****
Cross
*****

This effect fades from one strip to another, based on how many frames the two strips overlap.
This is a very useful strip that blends the whole image from one to the other.


Options
=======

Default Fade
   Automatically calculates a linear fade over the length of the strip.

   Effect Fader
      Allows you to manually :doc:`keyframe </animation/keyframes/index>` a custom fade.
      This can be used with different :ref:`easings <editors-graph-fcurves-settings-easing>`
      to fine-tune the fade in/out.


Example
=======

.. figure:: /images/sequencer_sequencer_strips_effects_cross_example.png

   Cross Effect.


.. _bpy.types.GammaCrossSequence:

***********
Gamma Cross
***********

Gamma Cross uses color correction in doing the fade,
resulting in a smooth transition that is easier on the eye.


Options
=======

Default Fade
   Automatically calculates a linear fade over the length of the strip.

   Effect Fader
      Allows you to manually :doc:`keyframe </animation/keyframes/index>` a custom fade.
      This can be used with different :ref:`easings <editors-graph-fcurves-settings-easing>`
      to fine-tune the fade in/out.
