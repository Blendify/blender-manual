
*****
Brush
*****

.. figure:: /images/sculpt-paint_texture-paint_tools_brush-settings.png
   :align: right

   Brush settings.


Radius
   The radius of the brush in pixels.

Strength
   How powerful the brush is when applied.

Pressure Sensitivity (hand and bulged in blue line icon)
   The toggle to the right of the following three settings will
   enable or disable tablet pressure sensitivity to control how strong the effect is.

Blend
   Set the way the paint is applied over the underlying color. See :term:`Color Blend Modes`.

   - Add Alpha: makes the image more opaque where painted.
   - Erase Alpha: makes the image transparent where painted,
     allowing background colors and lower-level textures to show through.
     As you "paint", the false checkerboard background will be revealed.
     Using a table pen's eraser end will toggle on this mode.

   .. tip::

      In order to see the effects of the Erase and Add Alpha mix modes in the Image Editor,
      you must enable the alpha channel display by clicking the Display Alpha or the Alpha-Only button.
      Transparent (no alpha) areas will then show a checkered background.


Color Picker
============

Color
   The color of the brush. See :ref:`ui-color-picker`.

   Press :kbd:`S` on any part of the image to sample that color and set it as the brush color.
   Hold :kbd:`Ctrl` while painting to temporally paint with the secondary color.

   Flip (cycle icon) :kbd:`X`
      Swaps the primary and secondary colors.


Color Palette
=============

Todo.


Options
=======

Accumulate
   This will allow a stroke to accumulate on itself, just like an airbrush would do.
Adjust Strength for Spacing
   Attenuate the brush strength according to spacing.
Affect Alpha
   When this is disabled, it locks (prevents changes to) the alpha channel while painting (3D only).


.. move? this is not part of the brush panel

Tilling
=======

.. admonition:: Reference
   :class: refbox

   :Editor:    Image Editor
   :Mode:      Paint Mode
   :Menu:      :menuselection:`Sidebar --> Tools --> Tiling`

Wraps the stroke to the other side of the image as your brush moves off the opposite side of the canvas.
Very handy for making seamless textures.

   X
      left/right
   Y
      top/bottom
