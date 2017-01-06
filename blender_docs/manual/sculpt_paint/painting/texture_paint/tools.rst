
*****
Tools
*****

Open the Tool Shelf in the 3D View or UV/Image Editor .


Brush
=====

.. figure:: /images/texture-painting-brush.jpg
   :width: 200px

   Brush Settings.

With this panel, you can create many brushes, each with unique settings (such as color and width).


Brush Types
-----------

Texture Draw
^^^^^^^^^^^^

The normal brush; paints a swath of color.


Fill
^^^^

It can be used to fill the image with the brush color. 
For projective texturing it will bypass some options for projective painting to paint the model.
This means that occluded, backfacing and normal culled faces will always get filled, regardless of whether the options are activated in the projection paint panel. 
Also, it is still currently limited to filling the part of the mesh within screen boundaries.


Soften
^^^^^^

Blends edges between two colors.

Direction
   Soften
      Blur filter. ToDo.
   Sharpen
      The sharpen tool enhances the contrast of the image as you paint over it.

      Sharp Threshold
         The Threshold will only apply sharpening to only those pixels that
         differ more than the threshold value from their surrounding pixels.
Blur Mode
   The blur kernel type controls how neighboring pixels are weighted when calculating the blur effect.

   Gaussian
      Gaussian will sample the pixels near the center of the brush most.
   Box
      Box samples all surrounding pixels equally


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


Common
-------------

Most brushes have common settings.

Color
   The color of the brush. See :ref:`ui-color-picker`.
   Press :kbd:`S` on any part of the image to sample that color and
   set it as the brush color.

   Flip (cycle icon) :kbd:`X`
      Swaps the foreground and background color. 
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
Use Gradient
   ToDo. See :ref:`ui-color-ramp-widget`.

   Mode
      ToDo.
