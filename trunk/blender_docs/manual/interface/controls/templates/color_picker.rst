.. _ui-color-picker:

************
Color Picker
************

.. figure:: /images/interface_controls_templates_color-picker_circle-hsv.png
   :align: right

   Circle HSV.

The color picker is a pop-up that lets you define a color value.

Color field
   Lets you pick the the first and second color component. The shape can be selected by the `Types`_.
Color slider
   The slider with a gradient in the background lets you define the third color component.
   It can also be controlled with the :kbd:`Wheel`.

Color space
   Selects the :term:`Color Space` for the number buttons below.

   RGB, HSV/HSL, Hex
Color values
   Blender uses (0 to 1.0) values to express colors for RGB and HSV colors.

   Hexadecimal (Hex) values are expressed as RRGGBB.
   Shorthand hex colors are also supported as RGB,
   i.e. dark-yellow FFCC00, can be written as FC0.

   For operations that are capable of using Alpha,
   another slider "A" is added.
Eyedropper
   The :doc:`/interface/controls/buttons/eye_dropper` (pipette icon) can be used
   to sample a color value from inside the Blender window.

.. note:: Blender corrects Gamma by default

   For more information about how to disable Gamma correction in Blender,
   see: :doc:`Color Management and Exposure </render/post_process/color_management>` page.


Types
=====

The default color picker type can be selected in the user preferences,
see: :doc:`System </preferences/system>`.

Circle
   The color values ranging from center to the borders. The center is a mix of the colors.
Square
   The Borders of the square are the axis for the two color components, with the center on the bottom right.

.. list-table:: Color Picker types.

   * - .. figure:: /images/interface_controls_templates_color-picker_circle-hsv.png

          Circle HSV.

     - .. figure:: /images/interface_controls_templates_color-picker_circle-hsl.png

          Circle HSL.

     - ..

   * - .. figure:: /images/interface_controls_templates_color-picker_square-sv-h.png

          Square (SV + H).

     - .. figure:: /images/interface_controls_templates_color-picker_square-hs-v.png

          Square (HS + V).

     - .. figure:: /images/interface_controls_templates_color-picker_square-hv-s.png

          Square (HV + S).
