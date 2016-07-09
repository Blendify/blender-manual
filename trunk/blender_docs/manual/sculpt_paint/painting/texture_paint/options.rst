
*******
Options
*******

Brushes Settings
================

Press :kbd:`T` in the UV/Image Editor to show the Tool Shelf. With this panel,
you can create many brushes, each with unique settings (such as color and width).
Use the Brush selector to switch between brushes, or to create a new brush.
When you add a brush, the new brush is a clone of the current one.
You can then change the setting for the new brush. Texture paint has an unlimited number of
brushes and unique user-defined controls for those brushes which can be set in the Paint Tool
panel.

To use a brush, click on its name. Use the selector up/down arrow,
if there are more brushes on the flyout window than can be displayed at once.
Name your brush by clicking on the name field and entering any name you wish,
such as "Red Air" for a red airbrush. To toss out a brush,
click the brush delete *X* button next to its name.
If you want to keep this brush around for the next time you run Blender,
click the Fake user *F* button next to the brush delete *X* button.

If you have a tablet pen with pressure sensitivity,
toggle the small *P* button next to the opacity, size,
falloff and spacing buttons to control these parameters using the pressure of the pen.
Using your pen's eraser end will toggle on the Erase Alpha mode.

Press :kbd:`S` on any part of the image to sample that color and set it as the brush
color.


Brush
-----

.. figure:: /images/texture-painting-brush.jpg
   :width: 200px

   Brush Settings.


Brush presets
   Select a preset brush. Most brushes have common settings.


Types of brushes
^^^^^^^^^^^^^^^^

There are four different types of brushes
   Draw
      the normal brush; paints a swath of color
   Soften
      blends edges between two colors
   Smear
      when you click, takes the colors under the cursor, and blends them in the direction you move the mouse.
      Similar to the "smudge" tool of *Gimp*.
   Clone
      copies the colors from the image specified (Tex.Dirt in the example), to the active image.
      The background image is shown when this brush is selected;
      use the *B* lend slider to control how prominent the background image is.

Enable Pressure Sensitivity
   The icon to the right of the following three settings will enable or disable
   tablet pressure sensitivity to control how strong the effect is.
Color
   The color of the brush
Radius
   The radius of the brush in pixels
Strength
   How powerful the brush is when applied}}
Blend
   Set the way the paint is applied over the underlying texture


- Mix: the brush color is mixed in with existing colors
- Add: the brush color is added to the existing color; green added to red gives yellow.
- Subtract: the brush color is subtracted; painting blue on purple gives red
- Multiply: the RGB value of the base is multiplied by the brush color
- Lighten: the RGB value of the base color is increased by the brush color
- Darken: tones down the colors
- Erase Alpha: makes the image transparent where painted,
  allowing background colors and lower-level textures to show through.
  As you 'paint', the false checkerboard background will be revealed
- Add Alpha: makes the image more opaque where painted

   In order to see the effects of the Erase and Add Alpha mix modes in the UV/Image Editor,
   you must enable the alpha channel display by clicking the Display Alpha or the Alpha-Only button.
   Transparent (no alpha) areas will then show a checkered background.

Image
   When using the clone brush, this allows you to select an image as a clone source.
Alpha
   Opacity of the clone image display


Texture
-------

.. figure:: /images/texture-painting-brushtexture.jpg
   :width: 250px

   Texture options and example.


Use the texture selector at the bottom of the paint panel to select a pre-loaded image or
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
   Sets how the texture is applied to the brush

   View Plane
      In 2D painting, the texture moves with the brush
   Tiled
      The texture is offset by the brush location
   3D
      Same as tiled mode
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


Stroke
------

Stroke Method
   Allows set the way applying strokes.

   Airbrush
      Flow of the brush continues as long as the mouse click is held, determined by the *Rate* setting.
      If disabled, the brush only modifies the color when the brush changes its location.

      Rate
         Interval between paints for airbrush
   Space
      Creates brush stroke as a series of dots, whose spacing is determined by the *Spacing* setting.

      Spacing
         Represents the percentage of the brush diameter.
         Limit brush application to the distance specified by spacing.
   Dots
      Apply paint on each mouse move step
   Jitter
      Jitter the position of the brush while painting
Smooth stroke
   Brush lags behind mouse and follows a smoother path. When enabled, the following become active:

   Radius
      Sets the minimun distance from the last point before stroke continues.
   Factor
      Sets the amount of smoothing.
Input Samples
   Average multiple input samples together to smooth the brush stroke.
Wrap
   wraps your paint to the other side of the image as your brush moves off the **other** side of the canvas
   (any side, top/bottom, left/right). Very handy for making seamless textures.


Curve
-----

The paint curve allows you to control the falloff of the brush.
Changing the shape of the curve will make the brush softer or harder.

.. seealso::

   - Read more about using the :ref:`ui-curve_widget`.


Paint options
=============

Overlay
-------

Allows you to customize the display of curve and texture that applied to the brush.


Appearance
----------

Allows you to customize the color of the brush radius outline,
as well as specify a custom icon.
