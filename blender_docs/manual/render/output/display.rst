
****************************
Displaying and Saving Images
****************************

Rendering still images is fairly simple.
:doc:`Rendering Animations </render/workflows/animations>` is a bit more complex and is covered in the next sections.

To render an image from the active camera, in the Render Panel, press the *Render* button.
By default the 3D view is replaced with the UV/Image Editor and the render appears.


Displaying Renders
==================

Renders are displayed in the Image Editor. You can set the way this is displayed to several
different options in the Display menu:

Keep UI
   The image is rendered to the Image Editor, but the UI remains the same.
   You will need to open the Image Editor manually to see the render result.
New Window
   A new floating window opens up, displaying the render.
Image Editor
   One of the existing editors is replaced with the Image Editor, showing the render.
Full Screen
   The Image editor replaces the UI, showing the render.

For each of these options,
pressing :kbd:`Esc` will close the render view and return to the previous view.


Saving
======

Rendered images can be saved like any other image:
Using :menuselection:`Image --> Save As Image` or by pressing :kbd:`F3`


Display Options
===============

When a rendered image is displayed in the Image Editor,
several new menu items become available.

Slot Menu
   You can save successive renders into the render buffer by selecting a new slot before rendering.
   If an image has been rendered to a slot, it can be viewed by selecting that slot.
   Empty slots appear as blank grids in the image editor.
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
      as specified in the :doc:`Camera settings </render/camera/introduction>`.


Animation Playback
==================

The 'Play' button in the render panel will play back your rendered animation in a new window.

You can also drop images or movie files in a running animation player.
It will then restart the player with the new data.

The following table shows the available hotkeys for the animation player:

.. list-table::
   :header-rows: 1

   * - Hotkey
     - Action
   * - :kbd:`A`
     - Toggle frame skipping.
   * - :kbd:`P`
     - Toggle ping-pong.
   * - :kbd:`F`
     - Flip drawing on the X axis.
   * - :kbd:`Shift-F`
     - Flip drawing on the Y axis.
   * - :kbd:`Return`
     - Start playback (when paused).
   * - :kbd:`Numpad0`
     - Toggle looping.
   * - :kbd:`NumpadPeriod`
     - Manual frame stepping.
   * - :kbd:`Left`
     - Step back one frame.
   * - :kbd:`Right`
     - Step forward one frame.
   * - :kbd:`Down`
     - Step back 10 frames.
   * - :kbd:`Up`
     - Step forward 10 frames.
   * - :kbd:`Shift-Down`
     - Use backward playback.
   * - :kbd:`Shift-Up`
     - Use forward playback.
   * - :kbd:`Shift`
     - Hold to show frame numbers.
   * - :kbd:`LMB`
     - Scrub in time.
   * - :kbd:`Ctrl-Plus`
     - Zoom in
   * - :kbd:`Ctrl-Minus`
     - Zoom out
   * - :kbd:`Esc`
     - Quit
   * - :kbd:`Numpad1`
     - 60 fps
   * - :kbd:`Numpad2`
     - 50 fps
   * - :kbd:`Numpad3`
     - 30 fps
   * - :kbd:`Numpad4`
     - 25 fps
   * - :kbd:`Shift-Numpad4`
     - 24 fps
   * - :kbd:`Numpad5`
     - 20 fps
   * - :kbd:`Numpad6`
     - 15 fps
   * - :kbd:`Numpad7`
     - 12 fps
   * - :kbd:`Numpad8`
     - 10 fps
   * - :kbd:`Numpad9`
     - 6 fps
   * - :kbd:`NumpadSlash`
     - 5 fps
   * - :kbd:`Minus`
     - Slow down playback.
   * - :kbd:`Plus`
     - Speed up playback.

A external player can be used instead by selecting it in the :doc:`User Preferences </preferences/file>`.
