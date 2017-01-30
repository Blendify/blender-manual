
**************
Camera Editing
**************

.. figure:: /images/bge_camera_properties.png
   :width: 300px

   Camera Properties.


The camera (or cameras) used in a Blender game have a wide-ranging effect on the way in which
the game is rendered and displayed.
Mostly this is controlled using the Properties panel of the camera(s) used in the game.


.. tip:: Render Engine

   Make sure that the render engine is set to Blender Game when attempting to set these controls,
   otherwise this description will not tally with what you see!


In the Camera Properties area, there are six panels available, as shown.
Each can be expanded or contracted using the usual triangle button.
The features in each panel will be described in detail below.


Embedded Player
===============

.. figure:: /images/bge_camera_properties_game.jpg
   :width: 300px

   Game Panel.


The *Start* button starts the Game Engine. Shortcut :kbd:`P`.


Standalone Player
=================

.. figure:: /images/bge_camera_properties_standalone.jpg
   :width: 300px

   Standalone Panel.


This panel provides information for the Standalone Game Player which allows games to be run without Blender.
See :doc:`Standalone Player </game_engine/blender_player>` for further details.

Fullscreen
   Off -- opens standalone game as a new window.
   On -- opens standalone game in full screen.

Resolution
   X
      Sets the X size of the viewport for full-screen display.
   Y
      Sets the Y size of the viewport for full-screen display.
Quality
   Bit Depth
      Number of bits used to represent color of each pixel in full-screen display.
   FPS
      Number of frames per second of full-screen display.

Framing
   Shows how the display is to be fitted in to the viewport.

   Letterbox
      Show the entire viewport in the display window, and fill the remainder with the "bar" color.
   Extend
      Show the whole display in the viewport, and fill the remainder with bars.
   Scale
      Scale the display in X and Y to exactly fill the entire viewport.

Bar Color
   Select a color to use as the color of bars around the viewport.


Stereo
======

.. figure:: /images/bge_camera_properties_stereo.png
   :width: 300px

   Stereo Panel.


Select a stereo mode that will be used to capture stereo images of the game (and also,
by implication, that stereo displays will use to render images in the standalone player).

None
   Render single images with no stereo.
Stereo
   Render dual images for stereo viewing using appropriate equipment.
   See :doc:`Stereo Camera </game_engine/camera/stereo>` for full details of available options.
Dome
   Provides facilities for an immersive dome environment in which to view the game.
   See :doc:`Dome Camera </game_engine/camera/dome>` for full details of available options.


Shading
=======

.. figure:: /images/bge_camera_properties_shading.png
   :width: 300px

   Shading Panel.


Specifies the shading mode to be used in rendering the game.
The shading facilities available in Blender for use in
:doc:`Materials </render/blender_render/materials/index>` and :doc:`Textures </render/blender_render/textures/index>`
are essentially the same in the Blender Game Engine.
However, the constraints of real-time display mean that only some of the facilities are available.

Single Texture
   Use single texture facilities.
Multitexture
   Use Multitexture shading.
GLSL
   Use GLSL shading. GLSL should be used whenever possible for real-time image rendering.


.. _game-engine-settings-render-system:

System
======

The *System* panel at the Render tab of the Properties editor, lets the game
developer specify options about the system performance regarding to frame discards and
restrictions about frame renderings, the key to stop the Blender Game Engine,
and whether to maintain geometry in the internal memory of the Graphic card.

.. figure:: /images/gameengine_performance_render_system.jpg
   :width: 300px

   System panel in the Render tab.


Use Frame Rate
   When checked, this will inform Blender whether to run freely without frame rate restrictions or not.
   The frame rate is specified at the *Display* panel in the *Render* tab of the Properties editor.
   For more information about frame rates,
   see the :ref:`Display panel <game-engine-settings-render-display>` page.
Display Lists
   When checked, this will tell Blender to maintain the lists of the meshes geometry allocated at the GPU memory.
   This can help to speed up viewport rendering during the game if
   you have enough GPU memory to allocate geometry and textures.
Restrict Animation Updates
   When checked, this will force the Game Engine to discard frames (even at the middle of redrawing,
   sometimes causing *tearing* artifacts) if the rate of frame rendered by the GPU is greater than
   the specified in the :ref:`Display panel <game-engine-settings-render-display>`.
Exit Key
   Clicking at this button will ask the user to type a key to specify a key to stop the Game Engine from running.


Performance
===========

.. figure:: /images/bge_camera_properties_performance.jpg
   :width: 300px

   Performance Panel.


Use Frame Rate
   Respect the frame rate rather than rendering as many frames as possible.
Display Lists
   Use display lists to speed up rendering by keeping geometry on the GPU.
Restrict Animation Updates
   Restrict number of animation updates to the animation FPS
   (this is better for performance but can cause issues with smooth playback).


.. _game-engine-settings-render-display:

Display
=======

The *Display* panel in the *Render* tab of the *Properties* editor,
lets the game developer specify the maximum frame rate of the animations shown during
the game execution, whether to see informations like framerate and profile, debug properties,
physics geometry visualization, warnings,
if the mouse cursor is shown during the game execution, and options to specify the framing
style of the game to fit the window with the specified resolution.


.. figure:: /images/gameengine_performance_render_display.jpg

   Display panel at the Render tab.


Animation Frame Rate
   This number button/slider specify the maximum frame rate at which the game will run.
   Minimum is 1, maximum is 120.
Debug Properties
   When checked, if a property was previously checked to be debugged during the game,
   the values of this property will be shown with the ``Framerate and Profile`` contents.
Framerate and Profile
   When checked, this will show values for each of the calculations Blender is doing while the game is running,
   plus the properties marked to be debugged.
Physics visualization
   Shows a visualization of physics bounds and interactions (like hulls and collision shapes), and their interaction.
Deprecation Warnings
   Every time when the game developer uses a deprecated functionality
   (which in some cases are outdated or crippled OpenGL Graphic cards functions),
   the system will emit warnings about the deprecated function.
Mouse Cursor
   Whether to show or not the mouse cursor when the game is running.
Framing
   There are three types of framing available:

   Letterbox
      Show the entire viewport of the game in display window, using horizontal and/or vertical bars when needed.
   Extend
      Show the entire viewport of the game in display window, viewing more horizontally or vertically.
   Scale
      Stretch or Squeeze the viewport to fill the display window.
Color Bar
   This will let the game developer choose the bar colors when using the *Letterbox* Framing mode.
