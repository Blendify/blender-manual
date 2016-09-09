
**************
Common Options
**************

In the Properties editor, choose the Texture tab: this will show the Texture panel.

.. figure:: /images/texture-top-panel.png

   Texture panel.

Texture Context
   World, Material, Brush


Textures Stack
==============

Active Texture
   The Texture slots are displayed in a :ref:`ui-list-view`.
   The order in the stack defines how textures are overlayed in the rendered image.
   Tick or untick the checkbox enables/disables the selected texture.


Texture Data-Block
==================

Texture
   The Texture :ref:`ui-data-block` for the selected texture slot.


Texture Type
============

Texture Type
   Choose the type of texture that is used for the current texture data-block.
   These types are described in detail :doc:`in this section </render/blender_render/textures/types/index>`.


Preview
=======

.. figure:: /images/texture-preview-panel.jpg
   :width: 300px

   Preview panel.


The texture preview panel provides a quick pre-visualization of how the texture looks on its
own, without mapping.

Texture, Material, or Both
   Choose to display only the texture, only the material, or both.
Show Alpha
   Show alpha in preview.
   If Alpha: Use is checked in the :doc:`Image Sampling </render/blender_render/textures/types/image>` panel,
   the image's alpha channel is displayed.
   If Alpha: Use is unchecked,
   an alpha channel based on averaged rgb values is displayed like it would be used by the Alpha slider in the
   :doc:`Influence </render/blender_render/textures/influence/material>` panel.


Colors
======

.. figure:: /images/texture-color-panel.png
   :width: 300px

   Colors panel.


The *Ramp* button activates a color ramp which allows you to remap the colors of a texture to new ones.
See :doc:`Ramps </render/blender_render/materials/properties/ramps>` for information on using ramps.

The color of a texture can be modified with the *Brightness*, *Contrast*,
and *Saturation* buttons. All textures with RGB-Values, including
*Images* and *Environment Maps*, may be modified with the RGB sliders.

R, G, B
   Tint the color of a texture by brightening each red, green and blue channel.
Brightness
   Change the overall brightness/intensity of the texture.
Contrast
   Change the contrast of the texture.
Saturation
   Change the saturation of the texture.


Mapping
=======

Here you can control how the texture will be mapped on the object.

.. note:: Brushes

   These options are not available for brushes because they would not make sense


See :doc:`Mapping </render/blender_render/textures/mapping/introduction>` section for details.


Influence
=========

Here you can control what properties the texture will affect, and by how much.

They are detailed on the :doc:`Influence </render/blender_render/textures/influence/material>` section.

.. note:: Brushes

   These options are not available for brushes because they would not make sense.
