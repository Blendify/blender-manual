
**************
Onion Skinning
**************

Onion Skinning show ghosts of the keyframes before and after the current frame allowing animators
to make decisions in the animation sequence.

The main switch to show/hide Onion Skinning is in the
:doc:`Viewport Overlays </editors/3dview/controls/overlays>` under *Grease Pencil* section,
but *Grease Pencil* Onion Skinning is per layer and can be turned On/Off in the layer list.
See :doc:`2D Layers </grease_pencil/properties/layers>` for more information.

.. figure:: /images/grease_pencil_properties_onion_skinning_panel.png
   :align: right

   Onion Skinning panel.

Options
========

Mode
   Keyframes
      Shows Keyframes in the range determined by Before/After settings.
   Frames
      Shows Frames in the range determined by Before/After settings.
   Selected
      Shows only on the manually selected keyframes in the Dope Sheet.

Opacity
   Control the opacity of the ghosts frames.

Filter By Type
   Filters what type of frames to show in the Onion Skinning range.

.. _Keyframes-range:

Keyframes Before/After
   Sets how many frames or keyframes, depending on the mode, to show before and after the current frame.

Custom Colors
==============

Before/After
   Color to use before and after the current frame in ghosts frames.

Display
========

View in render   
   Show the onion skinning in final render image.

Fade
   Opacity of the ghosts frames decrease the further away from the current frame.

Loop
   Help working on loop animations showing the first keyframe/frame 
   as gosht when you are on the last frame of your animation.


.. figure:: /images/grease_pencil_properties_onion_skinning_example.png   

   An example of *Grease Pencil* Onion Skinning activated.