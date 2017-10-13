
***************
Render Settings
***************

.. figure:: /images/bge_camera_properties.png
   :width: 300px

   Camera Properties.

The camera (or cameras) used in a Blender game have a wide-ranging effect on the way in which
the game is rendered and displayed.
Mostly this is controlled using the Properties panel of the camera(s) used in the game.

There are two separate game "players" for previewing the game during development.
The Embedded Player renders onto the 3D scene pane in the Blender GUI using the current perspective
and zoom level of the 3D preview.
The Standalone Player renders the scene from the perspective of the active scene camera
and either creates a new desktop window or switches into fullscreen rendering mode.
Note that while the Game Engine is running in either player,
the computer's mouse and keyboard are captured by the game and by default,
the mouse cursor is not visible. To exit the game, press the <ESC> key.

.. tip:: Render Engine

   Make sure that the render engine is set to Blender Game when attempting to set these controls,
   otherwise this description will not tally with what you see!

In the Camera Properties area, there are seven panels available, as shown.
Each can be expanded or contracted using the usual triangle button.
The features in each panel will be described in detail below.


Embedded Player
===============

.. figure:: /images/bge_camera_properties_embedded.png
   :width: 300px

   Embedded Player Panel.

This panel provides information for the Embedded Game Player which allows games to be run
inside a Blender render pane.

Note that the *Resolution* settings are independent of the size of the viewport preview pane.
In fact, the *Resolution* controls seem to have no effect at all.
The resolution and aspect ratio of the embedded preview are always fixed to the 3D preview pane,
which behaves much like the *Extend* framing mode for the standalone player as described below.
The *Framing* selection under the *Display* heading has no effect on the embedded preview.

Start
   Starts the Game Engine inside the blender viewport preview pane. Shortcut :kbd:`P`.
Resolution
   X
      Sets the internal X rendering resolution.
   Y
      Sets the internal Y rendering resolution.


Standalone Player
=================

.. figure:: /images/bge_camera_properties_standalone.png
   :width: 300px

   Standalone Player Panel.

This panel provides information for the Standalone Game Player which allows games to be run without Blender.
See :doc:`Standalone Player </game_engine/blender_player>` for further details.

The semantics of the Standalone Player *Resolution* controls differ for Windowed and Fullscreen modes.
In Windowed mode (*Fullscreen* checkbox unchecked),
the *Resolution* controls set the initial dimensions of the desktop window.
The user may resize the window at any time, causing the rendering resolution to change accordingly.
In Fullscreen mode (*Fullscreen* checkbox checked), the *Resolution* controls set the internal rendering resolution.
The actual display resolution will be a best fit depending on the user's hardware.
In either mode, the aspect ratio/cropping/scaling are determined
by the *Framing* selection under the *Display* heading.

Regarding *Fullscreen* mode, it is important to remember that the *Resolution* settings in *Fullscreen* mode
are only hints to the operating system. Each display and monitor combination will have a different set of
resolutions that they are capable of displaying; so there can be little confidence that all end-users will actually
get the resolution you suggest; unless you choose one of the most standard resolutions (e.g. 800x600 or 1024x768).
If you insist on using higher resolutions, then you may want to state clearly in your documentation that
only certain resolutions are supported. In most other cases, the user's machine may select a resolution that is
close to the one suggested; but the results can be unpredictable, especially in *Letterbox* mode.

Note that the *Desktop* checkbox has no effect in Windowed mode.

Start
   Lanuches the current .blend file with the Standalone Player.
Resolution
   X
      Sets the X window size or full-screen display resolution.
   Y
      Sets the Y window size or full-screen display resolution.
Fullscreen
   Off
      Opens standalone game as a new window.
   On
      Opens standalone game in full-screen.
Desktop
   Off
      Attempts to obey the *Resolution* specified above when in *Fullscreen* mode.
   On
      Keeps the current desktop resolution when in *Fullscreen* mode.
Quality
   AA Samples
      The number of AA samples to use for MSAA.
   Bit Depth
      Number of bits used to represent color of each pixel in full-screen display.
   Refresh Rate
      Number of frames per second of full-screen display.


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

Multitexture
   Use Multitexture shading.
GLSL
   Use GLSL shading whenever possible for real-time image rendering.


.. _game-engine-settings-render-system:

System
======

The *System* panel at the Render tab of the Properties editor lets the game
developer specify options about the system performance regarding to frame discards and
restrictions about frame renderings, the key to stop the Blender Game Engine,
and whether to maintain geometry in the internal memory of the Graphic card.

.. figure:: /images/gameengine_performance_render_system.png
   :width: 300px

   System panel in the Render tab.

Use Frame Rate
   Respect the frame rate rather than rendering as many frames as possible.
   When unchecked, this will inform Blender to run freely without frame rate restrictions.
   The frame rate is specified at the *Display* panel in the *Render* tab of the Properties editor.
   For more information about frame rates,
   see the :ref:`Display panel <game-engine-settings-render-display>` page.
Display Lists
   Use display lists to speed up rendering by keeping geometry on the GPU.
   When checked, this will tell Blender to maintain the lists of the meshes geometry allocated at the GPU memory.
   This can help to speed up viewport rendering during the game if
   you have enough GPU memory to allocate geometry and textures.
Restrict Animation Updates
   Restrict number of animation updates to the animation FPS
   (this is better for performance but can cause issues with smooth playback).
   When checked, this will force the Game Engine to discard frames (even at the middle of redrawing,
   sometimes causing *tearing* artifacts) if the rate of frames rendered by the GPU is greater than
   the specified in the :ref:`Display panel <game-engine-settings-render-display>`.
Use Material Caching
   Cache materials in the converter.
   This is faster but can cause problems with older single-texture and multi-texture games.
Vsync
   Change Vsync settings.
Storage
   Set the storage node used by the rasterizer.
Exit Key
   This button specifies which keypress will exit the game.


.. _game-engine-settings-render-display:

Display
=======

The *Display* panel in the *Render* tab of the *Properties* editor
lets the game developer specify the maximum frame rate of the animations shown during
the game execution, whether to see informations like framerate and profile, debug properties,
physics geometry visualization, warnings,
whether the mouse cursor is shown during the game execution, and options to specify the framing
style of the game to fit the window with the specified resolution.

.. figure:: /images/gameengine_performance_render_display.jpg

   Display panel at the Render tab.

Animation Frame Rate
   This number button/slider specify the maximum frame rate at which the game will run.
   Minimum is 1, maximum is 120.
Debug Properties
   When checked, the values of any properties which are selected to be debugged in the *Game Properties* panel
   will be shown with the *Framerate and Profile* contents.
Framerate and Profile
   When checked, this will show values for each of the calculations Blender is doing while the game is running,
   plus the properties marked to be debugged if *Debug Properties* above is also checked.
Physics visualization
   Shows a visualization of physics bounds and interactions (like hulls and collision shapes), and their interaction.
Deprecation Warnings
   Every time when the game developer uses a deprecated functionality
   (which in some cases are outdated or crippled OpenGL Graphic cards functions),
   the system will emit warnings about the deprecated function.
Mouse Cursor
   Whether to show or not the mouse cursor when the game is running.
Framing
   Selects how the scene is to be fitted onto the display window or screen.
   There are three types of framing available:

   Letterbox
      In Windowed mode:
         Maintains a 4:3 aspect ratio by scaling to fit the current window dimensions without cropping,
         covering any portions of the display that lie outside of the aspect ratio with color bars.
      In Fullscreen mode:
         The behavior of this combination seems to be heavily dependent on the user's hardware.
         The result can be quite unpredictable, especially with resolutions and aspect ratios that
         differ too much from the machine's capabilities. For this reason, *Extend* mode
         should be preferred for *Fullscreen* applications.
   Extend
      This mode behaves much like *Letterbox* mode, maintaining a 4:3 aspect ratio by scaling whenever possible;
      except that the camera frustrum is expanded or contracted wherever necessary to fill
      any portions of the display that lie outside of the aspect ratio, instead of covering those portions
      of the scene with color bars, as with *Letterbox* mode, or distorting then scene, as with *Scale* mode.
   Scale
      In this mode, no attempt is made to maintain a particular aspect ratio.
      The scene and objects within will be stretched or squashed to fit the display exactly.
Color Bar
   This will let the game developer choose the bar colors when using the *Letterbox* Framing mode.


.. _game-engine-settings-render-bake:

Bake
====

The *Bake* panel in the *Render* tab of the *Properties* editor is very similar to its
Blender Render couterpart and serves much the same purpose.
See :doc:`Render Baking </render/blender_render/bake>` for further details.

.. figure:: /images/gameengine_performance_render_bake.png

   Bake panel at the Render tab (showing different bake modes).

Bake
   Bake image textures of selected objects.
Bake Mode
   Shading information to bake into the image.

   Full Render
      Bakes all materials, textures, and lighting except specularity and SSS.
   Ambient Occlusion
      Bakes ambient occlusion as specified in the World panels. Ignores all lights in the scene.
   Shadows
      Bakes shadows and lighting.
   Normals
      Bakes tangent and camera-space normals (amongst many others) to an RGB image.
   Textures
      Bakes colors of materials and textures only, without shading.
   Displacement
      Similar to baking normal maps, displacement maps can also be baked from a high-res object
      to an unwrapped low-res object, using the Selected to Active option.
   Derivative
      Bake derivative map.
   Vertex Colors
      Bake vertex colors.
   Emissions
      Bakes Emit, or the Glow color of a material.
   Alpha
      Bakes Alpha values, or transparency of a material.
   Mirror Intensity
      Bake mirror intensity values.
   Mirror Colors
      Bake mirror colors.
   Specular Intensity
      Bake specular intensity values.
   Specular Colors
      Bake specular colors.
Bake from Multires
   Bake directly from Multires object.
Normalized
   In Displacement Mode:
      Normalize to the distance.
   In Ambient Occlusion Mode:
      Normalize without using material's settings.
Normal Space
   Normals can be baked in different spaces:

   Camera space
      Default method.
   World space
      Normals in world coordinates, dependent on object transformation and deformation.
   Object space
      Normals in object coordinates, independent of object transformation,
      but dependent on deformation.
   Tangent space
      Normals in tangent space coordinates, independent of object transformation and deformation.
      This is the new default, and the right choice in most cases, since then the normal map
      can be used for animated objects too.
Bake to Vertex Color
   Bake to vertex colors instead of to a UV-mapped image.
Clear
   If selected, clears the image to selected background color (default is black) before baking render.
Margin
   Baked result is extended this many pixels beyond the border of each UV "island", to soften seams in the texture.
Selected to Active
   Bake shading on the surface of selected objects to the active object.

   Distance
      Maximum distance in blender units from active object to other object.
   Bias
      Bias in blender units toward faces further away from the object.
Split
   The method used to split a quad into two triangles for baking.

   Fixed
      Split quads predictably (0,1,2)(0,2,3).
   Fixed Alternate
      Split quads predictably (1,2,3)(1,3,0).
   Automatic
      Split quads to give the least distortion while baking.
User Scale
   Apply a custom scale to the derivative map instead of normalizing to the default (0.1).
