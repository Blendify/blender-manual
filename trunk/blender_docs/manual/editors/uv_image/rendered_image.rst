
**************
Rendered Image
**************

Saving
======

Rendered images can be saved like any other image;
Using :menuselection:`Image --> Save As Image` or by pressing :kbd:`F3`.


Display Options
===============

When a rendered image is displayed in the UV/Image Editor,
several new menu items become available.

Slot Menu
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

Display Mode
   The last four buttons set how the image is displayed.

   RGB
      Draw image as rendered, without alpha channel.
   RGBA
      Replaces transparent pixels with background checkerboard, denoting the alpha channel.
   Alpha Channel
      Displays a gray-scale image. White areas are opaque, black areas have an alpha of 0.
   Z Depth
      Display the depth from the camera, from Clip Start to Clip End,
      as specified in the :doc:`Camera settings </editors/3dview/object/types/camera/introduction>`.
