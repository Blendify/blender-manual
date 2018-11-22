
************
Introduction
************

After starting Blender and closing the :ref:`Splash Screen <splash>`
your Blender window should look something similar to the image below.
Blender's user interface is consistent across all platforms.

.. figure:: /images/interface_window-system_introduction_default-startup.png
   :align: center

   The default startup Blender window.

The Default Screen
==================

Blender default start up uses the default screen layout, which is
separated into four screens listed below:

- *Top bar* at the very top.
- *Tool settings* the second row at the top.
- *Editors* area in the middle.
- *Status bar* at the bottom.

.. figure:: /images/interface_window-system_introduction_default-screen.png

   Blender's default Screen Layout. Top bar (blue), Tool settings
   (yellow), Editors (green) and Status bar (red).

The large editors screen is further subdivided into
:doc:`/interface/window_system/areas` for use of different
editors. Blender default start-up shows the Layout workspace in the
editors screen. This workspace contains the following :doc:`/editors/index`:

- *3D view* on top left.
- *Outliner* on top right.
- *Properties editor* on bottom right.
- *Timeline* on bottom left.
  
Editors are divided into :doc:`/interface/window_system/regions`.
Regions can have smaller structuring elements like
:doc:`tabs and panels </interface/window_system/tabs_panels>`
with buttons, controls and widgets placed within them.


User Interface Principles
=========================

Non-Overlapping
   The UI is designed to allow you to view all relevant options and tools at a glance
   without pushing or dragging editors around.

Non-Blocking
   Tools and interface options do not block the user from any other parts of Blender.
   Blender typically does not use pop-up boxes
   (requiring users to fill in data before running an operation).

Non-Modal Tools
   Tools can be accessed efficiently without taking time to select between different tools.
   Many tools use consistent and predictable, mouse and keyboard actions for interaction.


Customization
=============

Blender also makes heavy use of keyboard shortcuts to speed up work.
These can also be customized in the :ref:`Keymap Editor <prefs-input-keymap-editor>`.


.. rubric:: Theme colors

Blender allows for most of its interface color settings to be changed to suit the needs of the user.
If you find that the colors you see on screen do not match those mentioned
in the Manual then it could be that your default theme has been altered.
Creating a new theme or selecting/altering a pre-existing one can be done by selecting
the :doc:`User Preferences </preferences/index>` editor and clicking on the *Themes* tab.
