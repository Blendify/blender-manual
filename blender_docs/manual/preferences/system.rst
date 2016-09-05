
******************
System Preferences
******************

The *System* tab allows you to set resolution, scripting console preferences, sound, graphics cards,
and internationalization.

.. figure:: /images/preferences_system.png


General
=======

DPI
   Value of the screen resolution which controls the size of Blender's interface fonts and internal icons shown.
   Useful for taking screen shots for book printing and use of high resolution monitors.
   During typical usage, you may prefer to use zoom which is an available in many parts of Blender interface.
Virtual Pixel Mode
   Allows you to select global scaling. While the DPI only scales the interface,
   this will scale line width, vertex-size. This is intended for hi-dpi monitors.

   Native
      The normal pixel size.
   Double
      Double of the native pixel size.

   .. note::

      This is auto-detected on OSX.

Frame Server Port
   TCP/IP port used in conjunction with the IP Address of the machine for frameserver rendering.
   Used when working with distributed rendering.
   Avoid changing this port value unless it is conflicting with already
   existing service ports used by your Operating System and/or softwares.
   Always consult your operating system documentation and services or
   consult your system administrator before changing this value.
Console Scrollback
   The number of lines, buffered in memory of the console window.
   Useful for debugging purposes and command line rendering.


.. _prefs-system-sound:

Sound
=====

Audio Device
   Set the audio output device or no audio support:

   None
        No Audio support (no audio output, audio strips can be loaded normally)
   SDL
      Uses Simple Direct Media Layer API from `libsdl.org <https://www.libsdl.org>`__
      to render sounds directly to the sound device output. Very useful for sequencer strips editing.
   OpenAL
      Provides buffered sound rendering with 3D/spatial support.
      Used for 3D source support by *Speaker Objects* and the *Game Engine*.

.. rubric:: Sound options

Specific to *SDL* or *OpenAL* enabled

Channels
   Set the audio channel count. Available options are: *Stereo*, *4 Channels* , *5.1 Surround* , *7.1 Surround*
Mixing Buffer
   Set the number of samples used by the audio mixing buffer. Available options are:
   *512* , *1024* , *2048*, *4096* , *8192*, *16384*, and *32768*
Sample Rate
   Set the audio sample rate. Available options are: *44.1 Khz*, *48 Khs*, *96 Khz* and *192Khz*
Sample Format
   Set the audio sample format. Available options are:
   *32 bit float*, *8 bit Unsigned*, *16 Bits Signed*, *24 Bits Signed*,
   *32 Bits Signed*, *32 Bits Float*, and *64 Bits Float*.


.. _prefs-system-screencast:

Screencast
==========

These settings are used to control the frame-rate for recording a :ref:`Screencast <info-screencast>`.

FPS
   Frame-rate for screencast playback.
Wait Timer
   Time in milliseconds between each frame recorded for screencast.


Compute Device
==============

The Options here will set the compute device used by the Cycles render engine.

None
   When set to *None* or the only option is *None*:
   your CPU will be used as a computing device for Cycles Render Engine
CUDA
   If the system has a compatible Nvidia CUDA enabled graphics card you will be able
   to use it to render with the :doc:`Cycles </render/cycles/features>` render engine.
OpenCL
   If the system has a compatible OpenCL device, it will show up has an option for rendering cycles.

   .. note::

      that this currently has limited support, see:
      :doc:`Cycles Features </render/cycles/features>` page for more information.


.. _prefs-system-opensubdiv:

OpenSubdiv Compute
==================

The Options here will set the compute device used by OpenSubdiv for the
:doc:`Subdivision Surface Modifier </modeling/modifiers/generate/subsurf>`.

None
   Disables any OpenSubdiv compute devices, makes sure legacy subsurf method is used.
   Use this option when OpenSubdiv causes any bugs or regressions.
CPU
   Single threaded CPU implementation.
   It is mainly useful in cases when GPU compute is possible and threaded CPU option causes artifacts
   (it is unlikely to happen, but still possible).
OpenMP
   Multi-threaded CPU implementation. Use it for maximum performance in cases when GPU compute is not available.
GLSL Transform Feedback
   Uses GPU to perform calculations, has minimal requirements to video card and driver.
GLSL Compute
   Uses GPU to perform calculations, supposed to be more efficient than *Transform Feedback*
   but also has higher requirements to video card and driver.


OpenGL
======

Clip Alpha
   Clip alpha below this threshold in the 3D View.
   Note that the default is set to a low value to prevent issues on some GPU's.
Mipmaps
   Scale textures for 3D View using Mipmap filtering. This increases display quality, but uses more memory.
GPU MipMap Generation
   Generate MipMaps on the GPU. Offloads the CPU Mimpap generation to the GPU.
16 Bit Float Textures
   Enables the use of 16 Bit per component Texture Images (Floating point Images).

Selection
   Selection method to use for selecting.

   Automatic
      Automatically choses the best setting depending on your OS, GPU, and drivers.
   OpenGL Select
      Legacy OpenGL selection method for legacy hardware.
   OpenGL Occlusion Queries
      More optimized OpenGL selection method.
      Use this method if you are using an `OpenSubdiv Compute`_ compute device.

Anisotropic Filtering
   Sets the level of anisotropic filtering.
   This improves the quality of how textures are drawn at the cost of performance.
   Available Options are: *Off* (No Filtering), *2x*, *4x*, *8x*, and *16x*.


.. _prefs-system-window-draw:

Window Draw Method
==================

Window Draw Method
   Specifies the Window Draw Method used to display Blender Window(s).

   Automatic
      Automatically set based on graphics card and driver.
   Triple Buffer
      Use a third buffer for minimal redraws at the cost of more memory.
      If you have a capable GPU, this is the best and faster method of redraw.
   Overlap
      Redraw all overlapping regions. Minimal memory usage, but more redraws.
      Recommended for some graphics cards and drivers combinations.
   Overlap Flip
      Redraw all overlapping regions. Minimal memory usage, but more redraws (for graphics drivers that do flipping).
      Recommended for some graphic cards and drivers combinations.
   Full
      Do a full redraw each time. Only use for reference, or when all else fails.
      Useful for certain cards with bad to no OpenGL acceleration at all.

.. _prefs-system-multi-sampling:

Multi-Sampling
   This enables :term:`FSAA` for smoother drawing, at the expense of some performance.

   .. note::

      This is known to cause selection issues on some configurations,
      see: :ref:`troubleshooting-3dview-invalid-selection`.

Region Overlap
   This checkbox will enable Blender to draw regions overlapping the 3D View.
   It means that the *Object Tools* and *Transform Properties* regions,
   which are opened by using the shortcuts :kbd:`T` and :kbd:`N` will be drawn overlapping the 3D View editor.

   If you have a capable graphics card and drivers with *Triple Buffer* support,
   clicking the checkbox will enable the overlapping regions to be drawn using the *Triple Buffer* method,
   which will also enable them to be drawn using Alpha, showing the 3D View contents trough the
   *Object Tools* and *Transform Properties* regions.

Text Draw Options
   Enable interface text anti-aliasing.
   When disabled, texts are drawn using text straight render (Filling only absolute Pixels).


Textures
========

Limit Size
   Limit the maximum resolution for pictures used in textured display to save memory.
   The limit options are specified in a square of pixels,
   (e.g.: the option 256 means a texture of 256×256 pixels) This is useful for game engineers,
   whereas the texture limit matches paging blocks of the textures in the target graphic card memory.
   Available Options are: *Off* (No limit), *128*, *256*, *512*, *1024*, *2048*, *4096*, and *8192*.
Time Out
   Time since last access of a GL texture in seconds, after which it is freed. Set to 0 to keep textures allocated.
   Minimum: *0*, Maximum: *3600*.
Collection Rate
   Number of seconds between each run of the GL texture garbage collector.
   Minimum: *0*, Maximum: *3600*.

Image Draw Method
   Method to draw images as the following options are supported:

   2D Texture
      Uses CPU for display transform and draws images as a 2D texture.
   GLSL
      Fastest method using GLSL for display transform and draws images as a 2D texture.
   Draw Pixels
      Uses CPU for display transform and draws images as a 2D texture.


Sequencer/Clip Editor
=====================

..
   NOTE: this is currently commented out in the code.
   Prefetch Frames
      Number of frames to render ahead during playback.
      Useful when the chosen video codec cannot sustain screen frame rates
      correctly using direct rendering from the disk to video.
      During video playbacks or editing operations.
      Minimum: *0*, Maximum: *500*.

Memory Cache Limit
   Upper limit of the sequencer's memory cache (megabytes).
   For optimum clip editor and sequencer performance, high values are recommended.


Solid OpenGL lights
===================

*Solid OpenGL Lights* are used to light the 3D View,
mostly during *Solid view*. Lighting is constant and position "world" based.
There are three virtual light sources, also called OpenGL auxiliary lamps,
used to illuminate 3D View scenes, which will not display in renders.


The Lamp Icons allows the user to enable or disable OpenGL Lamps.
At least one of the three auxiliary OpenGL Lamps must remain enabled for the 3D View.
The lamps are equal, their difference is their positioning and colors.
You can control the direction of the lamps, as well as their diffuse and specular colors. Available Options are:

Direction
   Clicking with :kbd:`LMB` in the sphere and dragging the mouse cursor
   let us the user change the direction of the lamp by rotating the sphere.
   The direction of the lamp will be the same as shown at the sphere surface.
Diffuse
   This is the constant color of the lamp.
   Clicking on the color widget, opens the color picker pop-up and
   allows the user to change colors using the color picker.
Specular
   This is the highlight color of the lamp
   Clicking on the color widget, opens the color picker pop-up and
   allows the user to change colors using the color picker.


Color Picker Type
=================

Choose which type of :term:`color space` you prefer. It will show when clicking :kbd:`LMB` on any color field.

See the different color picker types at the :doc:`Extended Controls </interface/controls/extended_controls>` page.


.. _prefs-system-weight:

Custom Weight Paint Range
=========================

*Mesh skin weighting* is used to control how much a bone deforms the mesh of a character.
To visualize and paint these weights, Blender uses a color ramp (from blue to green, and from yellow to red).
Enabling the checkbox will enable an alternate map using a ramp starting with an empty range.
Now you can create your custom map using the common color ramp options.
For detailed information about how to use color ramps,
see: to the :doc:`Extended Controls </interface/controls/extended_controls>` page.


.. _prefs-system-international:

Internationalization
====================

Blender supports a wide range of languages,
enabling this check box will enable Blender to support International Fonts.
International fonts can be loaded for the User Interface and used instead of Blender default bundled font.

This will also enable options for translating the User Interface
through a list of languages and Tips for Blender tools which appear
whenever the user hovers a mouse over Blender tools.

Blender supports I18N for internationalization.
For more Information on how to load International fonts,
see: :doc:`Editing Texts </modeling/texts/editing>` page.
