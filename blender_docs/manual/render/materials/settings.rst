
*****************
Material Settings
*****************

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Material --> Settings`


Viewport Display
================

Viewport Color
--------------

Color
   Diffuse color of the object in the 3D viewport.
Alpha
   Transparency of the object in the 3D viewport.


Viewport Specular
-----------------

Color
   Specular reflection color of the object in the 3D viewport.
Hardness
   Roughness control for the object in the 3D viewport.


Viewport Alpha
--------------

Blend Mode
   :term:`Blend modes` for transparent faces.

   Opaque
      Render color of textured face as color.
   Add
      Render transparent and add color of face.
   Alpha Clip
      Use the image alpha values clipped with no blending (binary alpha).
   Alpha Blend
      Render polygon transparent, depending on alpha channel of the texture.
   Alpha Sort
      Sort faces for correct alpha drawing (slow, use *Alpha Clip* instead when possible).
   Alpha Anti-Aliasing
      Use texture alpha to add an anti-aliasing mask,
      requires multi-sample to be enabled

      .. TODO2.8 is this still the case?


Settings
========

Pass Index
----------

Pass Index
   Index number for the *Material Index* :doc:`render pass </render/layers/passes>`.
   This can be used to give a mask to a material and then be read with
   the :doc:`ID Mask Node </compositing/types/converter/id_mask>` in the compositor.
