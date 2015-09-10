
..    TODO/Review: {{Review}} .


***********
Screencasts
***********

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Hotkey:   :kbd:`Alt-F3`


The shortcut :kbd:`Alt-F3` starts the screencast function.
Screencasts will record your actions over time either as a video or sequence of image files.
The type and location of the output is determined by the settings in the
:doc:`Output panel </render/output>` of the :doc:`Render context </getting_started/basics/interface/contexts>` window.
The default settings will generate a screencast consisting of a series of PNG images captured
every 50 ms and stored in the */tmp* folder. If you want to record a video, set the
*Output* to one of the *Movie File Formats* supported by your system
listed in the *Output panel* format menu.
If you are unsure what video codecs your system supports, select *AVI JPEG*.


.. figure:: /images/basics-screencast-small-user-preferences-system.jpg

   Options in the User Preferences Editor


The FPS for video Screencasts and time between each Screenshot for an image series Screencast
can be set from the
:doc:`System panel </preferences/system>` of the
:doc:`User Preferences </preferences/index>` window.

(See Fig: Options in the User Preferences Editor)


.. note:: Audio support

   Blender Screencast doesn't support audio recordings,
   so you will have to do it manually using other software, e.g.
   `Audacity <http://audacity.sourceforge.net/>`__, in conjunction with Blender.


When you start Blender Screencasts, the header of the *Info Window* will change,
and it will show you a button for stopping your capture.

Below, we show the normal header of the *Info Window*,
when in normal Blender operation (See Fig: Info Window - Header - Normal Operation),
and with the Stop button for the Screencast, when in Screencast Mode. (See Fig:
Info Window - Header - Capture Stop Button).


.. figure:: /images/basics-screencast-small-header-info-window-normal.jpg

   Info Window - Header - Normal Operation


.. figure:: /images/basics-screencast-small-header-info-window-stop.jpg

   Info Window - Header - Capture Stop Button

.. note:: The only way to stop the Screencast

   Pressing the Stop button in the header of the Info Window is the only way to stop the Screencast capture.
   If you press :kbd:`Esc`, the shortcut will only work for operations
   performed in the Blender *User Interface*, (it will stop animations, playbacks and so on...),
   but will not work to stop *Screencasts*.


.. figure:: /images/basics-screencast-frame-range-sufix.jpg

   Dimensions Panel - Frame Range


The frames are stored using a suffix added to their file name,
where the suffix is composed of the numbers present in the fields for *start* and *end frames*,
defined in the Frame Range of the Dimensions panel,
:doc:`Render context </getting_started/basics/interface/contexts>`.
(See Fig: Dimensions Panel - Frame Range - highlighted in yellow)

.. note::

   The configuration of the End frame, present in the Frame Range of the Dimensions Panel,
   **will not** stop your capture automatically.
   You will always have to stop the Screencast manually, using the Stop button.


The Videos are generated internally in the same manner as the *Screenshots*,
using the width and height of the Window you are working in.
If you choose to capture to a Video file,
Blender will have to pass those frames to a Video codec.

**Warning:** Some codecs limit the output width/height or the video quality.


- When you save your *Screencast* in an Image format,
  the Images will be saved using the entire Blender Window, with full width and height,
  and the quality of the Image will be defined by its type (i.e. JPG, PNG, and so on)
  and configuration (i.e. Slider *quality* of the .JPG format).
- When you save your *Screencast* in a Video format, it will be sent to a codec.
  Depending on the codec limitations, the resulting output Video could be scaled down.
  Furthermore, some combinations of Window width and height cannot be processed by certain codecs.
  In these cases, the *Screencast* will try to start, but will immediately stop.
  In order to solve this, choose another Window format and/or another codec.


Blender Window Dimension
========================

There is a way to match the Blender Window dimensions with the Output Video File,
achieving standard dimensions for the output of the Blender Screencast. (I.e. NTSC, HD,
Full HD, etc).
You can control the width and height of your Blender Window, starting Blender from a Command Line.
To learn more about starting Blender from a command line,
see the page about :doc:`Blender Console Window </interface/window_system/console_window>`.
