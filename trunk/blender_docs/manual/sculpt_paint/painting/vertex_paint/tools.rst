
*****
Tools
*****

The Tools Shelf contains most of the options for vertex painting.
The following sections describe the controls in each of the available panels.

.. figure:: /images/sculpt-paint_painting_vertex-paint_options_tools.png
   :align: right

   Vertex Painting Options.


Brush
=====

Brush
   The :ref:`Data-Block menu <ui-data-block>` allows you to select brush presets, as well as custom brushes.
Color
   Color picker.
Radius
   Set the radius of the brush
Strength
   Set the strength of the brush's effect.
Blend
   Mix
      Mixes RGB values. When set to a strength of 1.0, it will cover the underlying "paint".
   Add
      Adds RGB values.
      Will eventually turn the entire object white as RGB values accumulate to (1.0, 1.0, 1.0): Pure White.
   Subtract
      Subtracts RGB values. Usually results in Black.
   Multiply
      Multiplies brush colors by the vertex colors.
   Blur
      Blurs vertex colors.
   Lighten
      Lightens the color of the vertices.
   Darken
      Darkens the color of the vertices.


Texture
=======

Use the texture data-block at the bottom of the paint panel to select a pre-loaded image or
procedural texture to use as your brush pattern. Note that in order to use it,
you must have a placeholder material defined,
and that particular texture defined using the Material and Texture buttons.
It is not necessary to have that material or texture applied to any mesh anywhere;
it must only be defined.

Brush Mapping Mode
   Sets how the texture is applied to the brush.

   View Plane
      In 2D painting, the texture moves with the brush.
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
   Offset the texture in x, y, and z.
Size
   Set the scale of the texture in each axis.


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
      Sets the minimun distance from the last point before stroke continues.
   Factor
      Sets the amount of smoothing.
Input Samples
   Average multiple input samples together to smooth the brush stroke.


Curve
=====

Brush Curves affect how strongly the color is applied depending on distance from the center of
the brush. In other words, they allow you to edit the Falloff of the brush intensity.

.. figure:: /images/sculpt-paint_painting_vertex-paint_options_brush-curve.png

   Brush curve example.
