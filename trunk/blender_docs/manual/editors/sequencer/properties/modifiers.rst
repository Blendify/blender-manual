
***************
Modifiers Panel
***************

.. figure:: /images/editors_sequencer_properties_modifiers.png
   :align: right

Modifiers are used to make adjustments on the image, like contrast,
brightness, saturation, color balance and applying masks.

You can add these modifiers directly to the selected strip,
or you can use it within an "Adjustment Layer" effect strip,
which allows you to apply these modifiers onto several strips the same time.

Use Linear Modifiers
   Calculate modifiers in linear space instead of sequencer space.

Each modifiers have several buttons at their top:

- The "eye" is to disable the modifier. Very useful to compare the image, with / without modifications.
- The next two buttons (up and down arrows) are used to change the modifier's position in the stack.
- The cross is to delete the modifier from the stack.
- Strip Use this to apply the modification on the whole image,
  or to use another strip's image (with alpha channel) for masking the modifier (and only this modifier),
  by choosing it in the "Mask" drop-down list.
- Mask This one allows you to choose a Mask created in the Mask editor
  which will limit the modification to the masked image's zones.

Currently, the following modifiers are supported:

Color Balance
   Color balance adjustments, through Lift, Gamma, and Gain.

   .. note::

      This modifier works the same as the :doc:`Color Balance Node </compositing/types/color/color_balance>`

Curves
   C/RGB curves.

   .. note::

      This modifier works the same as the :doc:`Curves Node </compositing/types/color/rgb_curves>`

Hue Correct
   HSV multi points curves.

   .. note::

      This modifier works the same as the :doc:`Curves Node </compositing/types/color/hue_correct>`

Bright/Contrast
   Adjusts the brightness and contrast of the modifier input.
Mask
   Use it for masking the other modifiers in the stack which are below.

   For example, to correct the brightness only on a certain zone of the image,
   you can filter the Bright/Contrast modifier by placing a Mask modifier,
   just before it in the stack. You can choose to use a Mask created in the Mask editor,
   or to use another strip as a mask (the image of this strip must have an alpha channel).
   This mask will be applied on all the others modifiers below it in the stack.

White Balance
   Use it to adjust the white balance by choosing the color that should be white.
