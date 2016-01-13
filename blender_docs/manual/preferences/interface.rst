
*********
Interface
*********

Interface configuration lets you change how UI elements are displayed and how they react.


.. figure:: /images/user_preferences_interface_tab.png
   :width: 650px


Display
=======

Tooltips
   When enabled, a tooltip will appear when your mouse pointer is over a control.
   This tip explains the function of what's under the pointer,
   gives the associated hotkey (if any) and the Python function that refers to it.
Object Info
   Display the active Object name and frame number at the bottom left of the 3D view.
Large Cursors
   Use large mouse cursors when available.
View Name
   Display the name and type of the current view in the top left corner of the 3D window.
   For example: *User Persp* or *Top Ortho*.
Playback FPS
   Show the frames per second screen refresh rate while an animation is played back.
   It appears in the viewport corner, displaying red if the frame rate set can't be reached.
Global Scene
   Forces the current scene to be displayed in all screens (a project can consist of more than one scene).
Object Origin Size
   Diameter of 3D Object centers in the view port (value in pixels from 4 to 10).
Display Mini Axis
   Show the mini axis at the bottom left of the viewport.
Size
   Size of the mini axis.
Brightness
   Adjust brightness of the mini axis.


View manipulation
=================

Cursor Depth
   Use the depth under the mouse when placing the cursor.
Auto Depth
   Use the depth under the mouse to improve view pan/rotate/zoom functionality.
Zoom to Mouse Position
   When enabled, the mouse pointer position becomes the focus point of zooming instead of the 2D window center.
   Helpful to avoid panning if you are frequently zooming in and out.
Rotate Around Selection
   The selected object becomes the rotation center of the viewport.
   When there is no selection the last selection will be used.

   .. hint::

      This may seem ideal behavior,
      however it can become problematic with larger objects such as a terrain-mesh,
      where the center isn't necessarily your point of interest.

Global Pivot
   Lock the same rotation/scaling pivot in all 3D views.
Auto Perspective
   .. _prefs-interface-auto_perspective:

   Automatically to perspective Top/Side/Front view after using User Orthographic.
   When disabled, Top/Side/Front views will retain Orthographic or Perspective view
   (whichever was active at the time of switching to that view).
Smooth View
   Length of time the animation takes when changing the view with the numpad
   (Top/Side/Front/Camera...). Reduce to zero to remove the animation.
Rotation Angle
   Rotation step size in degrees, when :kbd:`Numpad4`, :kbd:`Numpad6`, :kbd:`Numpad8`,
   or :kbd:`Numpad2` are used to rotate the 3D view.


2D Viewports
============

Minimum Grid Spacing
   The minimum number of pixels between grid lines in a 2D (i.e. top orthographic) viewport.
TimeCode Style
   Format of Time Codes displayed when not displaying timing in terms of frames.
   The format uses '+' as separator for sub-second frame numbers,
   with left and right truncation of the timecode as necessary.


Manipulator
===========

Permits configuration of the 3D transform manipulator which is used to drag,
rotate and resize objects (Size, Handle size).


Menus
=====

Open on Mouse Over
   Select this to have the menu open by placing the mouse pointer over the entry instead of clicking on it.
Menu Open Delay
   Time for the menu to open.
Top Level
   Time delay in 1/10 second before a menu opens (*Open on Mouse Over* needs to be enabled).
Sub Level
   Same as above for sub menus (for example: :menuselection:`File --> Open Recent`).

