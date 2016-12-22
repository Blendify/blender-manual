
*****
Tools
*****

Open the Tool Shelf in the 3D View or UV/Image Editor .


Press :kbd:`S` on any part of the image to sample that color and set it as the brush
color.


Brush
=====

.. figure:: /images/texture-painting-brush.jpg
   :width: 200px

   Brush Settings.

With this panel, you can create many brushes, each with unique settings (such as color and width).

Brush
   :ref:`ui-data-block` to select a preset `Brush Types` or a custom brush.

    Add ``+``
      When you add a brush, the new brush is a clone of the current one.

.. note::

   In order to save in a blend-user a custom brush set a Fake User.


Common
-------------

Most brushes have common settings.

Color
   The color of the brush.
Radius
   The radius of the brush in pixels.
Strength
   How powerful the brush is when applied.
Pressure Sensitivity
   The icon (hand and bulged in blue line) to the right of the following three settings will enable or disable
   tablet pressure sensitivity to control how strong the effect is.

Blend
   Set the way the paint is applied over the underlying color. See :term:`Color Blend Modes`.

   - Add Alpha: makes the image more opaque where painted.
   - Erase Alpha: makes the image transparent where painted,
     allowing background colors and lower-level textures to show through.
     As you 'paint', the false checkerboard background will be revealed.
     Using a table pen's eraser end will toggle on this mode.
   - Luminosity
   - Exclusion
   - Vivid light
   - Pin light

   .. tip::

      In order to see the effects of the Erase and Add Alpha mix modes in the UV/Image Editor,
      you must enable the alpha channel display by clicking the Display Alpha or the Alpha-Only button.
      Transparent (no alpha) areas will then show a checkered background.

Alpha
   Opacity of the clone image display.


Brush Types
-----------

Draw
^^^^

The normal brush; paints a swath of color.


Soften
^^^^^^

Blends edges between two colors.


Smear
^^^^^

When you click, takes the colors under the cursor, and blends them in the direction you move the mouse.
Similar to the "smudge" tool of *Gimp*.


Clone
^^^^^

Copies the colors from the image specified (Tex.Dirt in the example), to the active image.

Clone from paint slot
   The background image is shown when this brush is selected;
   use the *Strength* slider to control how prominent the background image is.

   Source Clone Slot
      When using the clone brush, this allows you to select an image as a clone source.


Texture
=======

.. figure:: /images/texture-painting-brushtexture.jpg
   :width: 250px

   Texture options and example.


Use the texture data-block at the bottom of the paint panel to select a pre-loaded image or
procedural texture to use as your brush pattern. Note that in order to use it,
you must have a placeholder material defined,
and that particular texture defined using the Material and Texture buttons.
It is not necessary to have that material or texture applied to any mesh anywhere;
it must only be defined. The example to the right shows the effects of painting with a flat
(banded) wood texture.
Switching the texture to Rings makes a target/flower type of brush painting pattern.

.. note::

   In Clone paint mode,
   this field changes to indicate the picture image or texture that you are cloning from.

Brush Mapping
   Sets how the texture is applied to the brush.

   View Plane
      In 2D painting, the texture moves with the brush.
   Tiled
      The texture is offset by the brush location.
   3D
      Same as tiled mode.
   Stencil
      Texture is applied only in borders of the stencil.
   Random
      Random applying of texture.

Angle
   This is the rotation angle of the texture brush.
   It can be changed interactively via :kbd:`Ctrl-F` in the 3D View.
   While in the interactive rotation you can enter a value numerically as well. Can be set to:

   User
      Directly input the angle value.
   Rake
      Angle follows the direction of the brush stroke. Not available with *3D* textures.
   Random
      Angle is randomized.

Offset
   Offset the texture in X, Y, and Z.

Size
   Set the scale of the texture in each axis.


Texture Mask
============

TODO.


Stroke
======

Stroke Method
   Allows set the way applying strokes.

   Airbrush
      Flow of the brush continues as long as the mouse click is held, determined by the *Rate* setting.
      If disabled, the brush only modifies the color when the brush changes its location.

      Rate
         Interval between paints for airbrush.
   Space
      Creates brush stroke as a series of dots, whose spacing is determined by the *Spacing* setting.

      Spacing
         Represents the percentage of the brush diameter.
         Limit brush application to the distance specified by spacing.
   Dots
      Apply paint on each mouse move step.
   Jitter
      Jitter the position of the brush while painting.
Smooth stroke
   Brush lags behind mouse and follows a smoother path. When enabled, the following become active:

   Radius
      Sets the minimum distance from the last point before stroke continues.
   Factor
      Sets the amount of smoothing.
Input Samples
   Average multiple input samples together to smooth the brush stroke.
Wrap
   wraps your paint to the other side of the image as your brush moves off the **other** side of the canvas
   (any side, top/bottom, left/right). Very handy for making seamless textures.


Curve
=====

The paint curve allows you to control the falloff of the brush.
Changing the shape of the curve will make the brush softer or harder.

.. seealso::

   Read more about using the :ref:`ui-curve-widget`.
