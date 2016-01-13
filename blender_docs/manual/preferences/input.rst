
*****
Input
*****

In the Input preferences, you can customize how Blender reacts to the mouse and keyboard as
well as define your own keymap.


.. figure:: /images/user_preferences_input_tab.png
   :width: 650px


Managing presets
================

Blender lets you define multiple *Preset* input configurations.
Instead of deleting the default keymap to create yours,
you can just add new *Presets* for both the mouse and keyboard. Mouse options can be
found on the left hand side of the window and keyboard options to the right in the above
picture.


Adding and deleting presets
===========================

.. figure:: /images/Interface-Configuration-Input-AddDeletePreset.jpg

Before changing anything in the default configuration,
click on the "plus" symbol shown in the picture to add a new *Preset*. Blender will
ask you to name your new preset after which you can select the *Preset* from the
list to edit it. If you want to delete your *Preset*,
select it from the list and then click the "minus" symbol.


Selecting presets
=================

You can change the preset you are using by doing one of the following:


- Selecting the configuration from the *Interaction* menu of the splash screen at startup or by selecting
  :menuselection:`Help --> Splash Screen`.
- Selecting the configuration from the *User Preferences Input* window.


.. note::

   Note that either of the above options will only change the preset for the current file. If you select
   :menuselection:`File --> New` or :menuselection:`File --> Open`, the default preset will be re-loaded.


Setting presets to default
==========================

.. figure:: /images/Interface-Configuration-Input-SplashScreenInteraction.jpg
   :width: 307px


Once you've configured your mouse and keyboard *Presets*,
you can make this the default configuration by:


- Opening the *User Preferences Input* editor and select your presets from the preset list or,
- Selecting your preset configuration from the splash screen.
- Saving your configuration using the *Save As Default* option from a *User Preferences* window or by pressing
  :kbd:`Ctrl-U`.


Export/Import key configuration
===============================

In some cases, you may need to save your configuration in an external file (e.g.
if you need to install a new system or share your keymap configuration with the community).
Simply :kbd:`LMB` *Export Key Configuration* on the *Input* tab
header and a file browser will open so that you can choose where to store the configuration.
The *Import Key Configuration* button installs a keymap configuration that is on
your computer but not in Blender.


Mouse
=====

Emulate 3 Button Mouse
   Blender can be configured to work with pointing devices which don't have a middle-mouse button
   (such as a two-button mouse, Apple single-button mouse, or laptop touch-pad).
   The functionality of the 3 mouse buttons will then be be emulated with
   key/mouse-button combinations as shown in the table below.

   .. list-table:: Shortcuts for supported mouse hardware
      :header-rows: 1
      :stub-columns: 1

      * - 3-button Mouse
        - 2-button Mouse
        - Apple Mouse
      * - :kbd:`LMB`
        - :kbd:`LMB`
        - :kbd:`LMB` (mouse button)
      * - :kbd:`MMB`
        - :kbd:`Alt-LMB`
        - :kbd:`Alt-LMB` (Option/Alt key + mouse button)
      * - :kbd:`RMB`
        - :kbd:`RMB`
        - :kbd:`Cmd-LMB` (Command/Apple key + mouse button)

   Mouse/Keyboard combinations refrenced in this manual can be expressed with the combinations shown in the table.
   For Example.

   - :kbd:`MMB` drag becomes :kbd:`Alt-LMB` drag.
   - :kbd:`Shift-Alt-RMB` becomes :kbd:`Shift-Alt-Cmd-LMB` on a single-button mouse.
Continuous Grab
   This feature is used to prevent the problem where an action such as grabbing or panning a view,
   is limited by your screen bounds.

   This is done by warping the mouse within the view.

   .. note::

      Cursor warping is only supported by *relative* input devices (mouse, trackball, trackpad).

      Graphics tablets however, typically use *absolute* positioning,
      this feature is disabled when a tablet is being used

      This is detected for each action,
      so the presence of a tablet wont disable continuous-grab for mouse cursor input.
Drag Threshold
   The number of pixels that a User Interface element has to be moved before it is recognized by Blender.
Select with
   You can choose which button is used for selection (the other one is used to place the 3D cursor).
Double Click
   The time for a double click (in ms).


.. note::

   The Mouse emulate option is only available if *Select With* is set to *Right*.


Graphic Tablets
===============

Graphic tablets can be used to provide a more traditional method of controlling the mouse cursor using a pen.
This can help to provide a more familiar experience for artists
who are used to painting and drawing with similar tools,
as well as provide additional controls such as pressure sensitivity.

.. note::

   If you are using a graphic tablet instead of a mouse and pressure sensitivity doesn't work properly,
   try to place the mouse pointer in the Blender window and then unplug/replug your graphic tablet. This might help.


Numpad Emulation
================

The Numpad keys are used quite often in Blender and are not the same keys as the regular
number keys. If you have a keyboard without a Numpad (e.g. on a laptop),
you can tell Blender to treat the standard number keys as Numpad keys.
Just check *Emulate Numpad*.


View Manipulation
=================

.. _prefs-input-orbit_style:

Orbit Style
   Select how Blender works when you rotate the 3D view by default when holding :kbd:`MMB`.

   Turntable
      Rotates the view keeping the horizon horizontal.

      This behaves like a potters wheel or record player where you have two axes of rotation available,
      and the world seems to have a better definition of what is "Up" and "Down" in it.

      The drawback to using the *Turntable* style is that you lose some flexibility when working with your objects.
      However, you gain the sense of "Up" and "Down" which can help if you are feeling disoriented.
   Orbit
      Is less restrictive, allowing any orientation.
Zoom Style
   Choose your preferred style of zooming in and out with :kbd:`Ctrl-MMB`

   Scale
      *Scale* zooming depends on where you first click in the view.
      To zoom out, hold :kbd:`Ctrl-MMB` while dragging from the edge of the screen towards the center.
      To zoom in, hold :kbd:`Ctrl-MMB` while dragging from the center of the screen towards the edge.
   Continue
      The *Continue* zooming option allows you to control the speed
      (and not the value) of zooming by moving away from the initial click-point with :kbd:`Ctrl-MMB`.
      Moving up from the initial click-point or to the right will zoom out,
      moving down or to the left will zoom in. The further away you move,
      the faster the zoom movement will be.
      The directions can be altered by the *Vertical* and *Horizontal* radio buttons and the
      *Invert Zoom Direction* option.
   Dolly
      *Dolly* zooming works similarly to *Continue* zooming except that zoom speed is constant.
   Vertical
      Moving up zooms out and moving down zooms in.
   Horizontal
      Moving left zooms in and moving right zooms out.
Invert Zoom Direction
   Inverts the Zoom direction for *Dolly* and *Continue* zooming.
Invert Wheel Zoom Direction
   Inverts the direction of the mouse wheel zoom.
NDOF device
   Set the sensitivity of a 3D mouse.


Keymap editor
=============

.. figure:: /images/Interface-Configuration-Input-KeymapEditor.jpg
   :width: 320px


The Keymap editor lets you change the default Hotkeys. You can change keymaps for each window.


- Select the keymap you want to change and click on the white arrows to open up the keymap tree.
- Select which Input will control the function

  - Keyboard: Only hotkey or combo hotkey (:kbd:`E` or :kbd:`Shift-E`).
  - Mouse: Left/middle/right click. Can be combined with :kbd:`Alt`, :kbd:`Shift`, :kbd:`Ctrl`, :kbd:`Cmd`.
  - Tweak: Click and drag. Can also be combined with the 4 previous keys.
  - Text input: Use this function by entering a text
  - Timer: Used to control actions based on a time period.
    e.g. By default, Animation Step uses Timer 0, Smooth view uses Timer 1.

- Change hotkeys as you want. Just click on the shortcut input and enter the new shortcut.

If you want to restore the default settings for a keymap,
just click on the *Restore* button at the top right of this keymap.

