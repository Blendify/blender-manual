
************
Introduction
************

.. The UV/Image Editor overs few options to edit images > Compositor texture mode.


Image Menu
==========

.. Header.

New Image
   ..
Open Image
   ..
Read Render Layers
   ..
Save All Images
   ..
Replace Image
   ..
Reload Image
   ..
Save Image
   ..
Save As Image
   Used for saving (rendered) images.
Save a Copy
   ..
Edit Externally
   ..
Invert
   Invert Image Colors
      ..
   Invert Channel
      Red, Green, Blue, Alpha
Pack Image
   ..
Pack As PNG
   ..


Header Controls
===============

Image
   Data-block menu used for selecting images.

   - Render Result
   - Viewer Node

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
