.. _ui-color-picker:

************
Color Picker
************

All of the color picker types have the common RGB, HSV and Hex options to show values.
Blender uses (0 to 1.0) values to express colors for RGB and HSV values.
Some colors also define an alpha value A, below the color sliders.

.. note:: Blender corrects Gamma by default

   for more information about how to disable Gamma correction in Blender,
   see: :doc:`Color Management and Exposure </render/post_process/color_management>` page.


- Use :kbd:`Wheel` to change overall brightness.
- Press :kbd:`Backspace` to reset to the original color.


Types
=====

The default color picker type can be selected in the user preferences,
see: :doc:`System </preferences/system>`.

For operations that are capable of using Alpha,
another slider is added at the bottom of the color picker.

.. list-table::

   * - .. figure:: /images/interface_controls_sv-h.png
          :width: 200px

          Square (SV + H), Saturation, Value plus Hue.
          Colors are adjusted using the range of brightness of the
          base color; chosen at the color bar in the middle of the picker.

     - .. figure:: /images/interface_controls_hsv.png
          :width: 200px

          Circle HSV (Default), is a full gamut of colors ranging from center
          to the borders is always shown; the center is a mix of the colors.
    
     - .. figure:: /images/interface_controls_hs-v.png
          :width: 200px

          Square (HS + V), Hue, Saturation plus Value. Brightness is subtracted from the
          base color chosen on the square of the color picker moving the slider to the left.

   * - .. figure:: /images/interface_controls_hsl.png
          :width: 200px

          Circle HSL, a variation of the regular circle select that uses HSL for mixing.

     - .. figure:: /images/interface_controls_hv-s.png
          :width: 200px

          Square (HV + S), Hue, Value and Saturation. Brightness is added to the base color
          chosen by the square of the color picker moving the slider to the left.

     - ..


Hexadecimal Colors
------------------

You can optionally use hexadecimal (Hex) values,
expressed as (RRGGBB), a common way to represent colors for HTML
and useful to quickly copy/paste colors between applications.

Shorthand hex colors are also supported RGB,
so dark-yellow FFCC00, can be written as FC0.
