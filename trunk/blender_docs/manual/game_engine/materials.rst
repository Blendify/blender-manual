..    TODO/Review: {{review|void=X}} .

**************
Game Materials
**************

.. figure:: /images/materials_properties_game_settings.jpg

   Game Settings Panel

This panel contains properties that control how the object surfaces that use the
material are rendered in real time by the Blender Game Engine.

Game settings are visible when using the game engine for rendering.
Material physics usage is described :doc:`here </render/blender_render/materials/properties/physics>`.


Backface Cull (default On)
   Hide the back faces of objects rendered with this material.
   If "Off", both sides of the surface are visible (at the expense of lower rendering speed).
   Note that this setting is applied per-material and not per-face; e.g.
   if the material is applied to a cube, only the back and front faces of the cube are visible,
   and not both sides of each face.

Invisible
   Hide all faces of objects rendered with this material.

Text
   Use material as :doc:`Text object </modeling/texts/introduction>` in the Game Engine.

Alpha Blend menu:
   Controls how the alpha channel is used to create a transparent texture in the rendered image.

   Alpha Sort
      Orders the sequence in which transparent objects are drawn on top of each other,
      so that ones in front receive more light than ones behind.

   Alpha Blend
      Uses the alpha values present in the bitmap image sourced in the Image slot.

   Alpha Clip
      Uses the alpha channel as a simple mask.

   Add
      Render face transparent and add color of face.

   Opaque (default)
      All alpha values are ignored; the scene is completely non-transparent.

**Face Orientation** menu:
Provides options regarding the orientation (i.e. rotation transformation)
of faces to which the material is applied.

   Shadow
      Faces are used for shadow.

   Billboard
      Billboard with Z-axis constraint.

   Halo
      Screen aligned billboard.

   Normal (default)
      No transformation.
