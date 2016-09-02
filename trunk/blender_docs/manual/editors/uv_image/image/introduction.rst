
************
Introduction
************

.. The UV/Image Editor overs few options to edit images > Compositor texture mode.


Image Menu
==========

.. Header.

New Image
   Generates a `New Image`_.
Open Image
   Load image from a file.
Read Render Layers
   ..
Save All Images
   ..
Replace Image
   Replaces the current image, while preserving the link to UV maps,
   with an selected file.
Reload Image
   Reloading the image from a external file.
Save Image
   Save the image, if the image is already a file :kbd:`Alt-S`.
Save As Image
   Save the (rendered) image in a separate file :kbd:`F3` or
   you want to save it under a different name.
Save a Copy
   Using *Save as Copy* will save the file to a specified name,
   but will keep the old one open in the UV/Image editor.
Edit Externally
   Using the *Edit Externally* tool Blender will open an external image editor,
   as specified in the *User Preferences* and load in the image to be edited.
Invert
   Invert Image Colors
      Invert the colors of an image.
   Invert Channel
      Red, Green, Blue, Alpha
Pack
   Pack Image
      ..
   Pack As PNG
      Packs the image inside the blend-file.

   .. seealso::

      :ref:`pack-unpack-data`.

.. warning::

   Rendered images had to be saved externally.


New Image
---------

.. figure:: /images/texture-uv-layout-testgrid.jpg
   :align: right
   :width: 200px

   The new Image pop-up menu.


When you select *New Image* you are presented with several options. This
*Generated* image can also be modified afterward in the *Properties region*:

Image Name
   Set the name if the generated image.
Width and Height
   Set the size if the image in pixels.
Color
   Sets the default fill color if creating a blank image.
Alpha
   Adds an alpha channel to the image
Generated Type
   The type of image to generate:

   UV Grid
      Creates a checkerboard pattern with a colored cross (\+) in each square.
   Color Grid
      Creates a UV Test Grid, which is useful for testing how UVs have been mapped and
      to reduce stretching or distortion.
      There are two types available, which can be set after the image has been created.
   Blank
      Generates a blank image of a single specified color.
32 bit float
   Creates a 32 bit image. This is a larger file size,
   but holds much more color information than the standard 8 bit image.
   For close ups and large gradients, it may be better to use a 32 bit image.


Header Controls
===============

Image
   Data-block menu used for selecting images,
   when :doc:`Working with Images </editors/uv_image/uv_editing/applying_image>`.

   - Render Result
   - Viewer Node
Pin Image
   Displays current image regardless of selected object.


Multi-Layer
------------

When a rendered image is displayed in the UV/Image Editor,
several new menu items become available.

Slot
   You can save successive renders into the render buffer by selecting a new slot before rendering.
   If an image has been rendered to a slot, it can be viewed by selecting that slot.
   Empty slots appear as blank grids in the UV/Image editor.
   Use the :kbd:`J` and :kbd:`Alt-J` to cycle forwards and backwards through saved renders.
Render Layer
   If you are using :doc:`Render Layers </render/post_process/layers>`,
   use this menu to select which layer is displayed.
Render Pass
   If you are using :doc:`Render Passes </render/blender_render/passes>`,
   use this menu to select which pass is displayed.


Channels
--------

Draw Channels
   The radio buttons set which channels of the image are displayed.

   RGBA
      Replaces transparent pixels with background checkerboard, denoting the alpha channel.
   RGB
      Draw the colored image, without alpha channel.
   Alpha
      Displays the Alpha channel a gray-scale image. White areas are opaque, black areas have an alpha of 0.
   Z-Buffer
      Display the depth from the camera, from Clip Start to Clip End,
      as specified in the :doc:`Camera settings </editors/3dview/object/types/camera/introduction>`.
   Red, Green, Blue
      Single Color Channel visualized as a gray-scale image.
