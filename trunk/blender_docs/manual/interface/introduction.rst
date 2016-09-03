
************
Introduction
************

.. _splash:

Splash Screen
=============

When starting Blender, the splash screen appears in the center of the window.

.. figure:: /images/splash-screen_current.png
   :align: center
   :width: 450px

   Blender Splash Screen.

To close the splash screen and start a new project,
click anywhere outside the splash screen (but inside the Blender Window) or press :kbd:`Esc`.
The splash screen will disappear revealing the startup scene.

To reopen the splash click on the Blender icon in the :doc:`Info Editor </editors/info/index>`
header or select :menuselection:`Info Editor --> Help --> Splash Screen`.

Title
   Besides the Blender icon and text, it shows the Blender version. i.e. the current version is |BLENDER_VERSION|.
Image
   An image where you can identify package and version.
Date
   At the top-right corner, you can see the date on that Blender version was compiled.
Hash
   The Git Hash. This can be useful to give to support personnel, when diagnosing a problem.
Branch
   Optional branch id.

Interaction
   Key configuration the same as :menuselection:`User preferences --> Input`.
Links
   Links official web pages, the same could be found in the *Help* Menu of the Info Editor.
   See :ref:`help-menu`.
Recent
   Your most recently opened blend-files. This gives quick and easy access to your recent projects.
Recover Last Session
   Blender will try to recover the last session based on temporary files. See :doc:`/troubleshooting/recover`.


Screens
=======

.. figure:: /images/blender_default_startup.png
   :align: center
   :width: 75%

   After closing splash screen, this is what the default Blender window looks like.

Blender's user interface is consistent across all platforms.
The interface can be customized to match specific tasks using Screen Layouts,
which can then be named and saved for later use.

Blender also makes heavy use of keyboard shortcuts to speed up work.
These can also be customized in the :ref:`Keymap Editor <prefs-input-keymap-editor>`.

.. tip:: Theme colors

   Blender allows for most of its interface color settings to be changed to suit the needs of the user.
   If you find that the colors you see on screen do not match those mentioned
   in the Manual then it could be that your default theme has been altered.
   Creating a new theme or selecting/altering a pre-existing one can be done by selecting the
   :doc:`User Preferences </preferences/index>` editor and clicking on the *Themes* tab.


Screen Elements
===============

.. figure:: /images/getting_started-basics_interface_introduction_05.png
   :align: right
   :width: 350

The Blender window is organized into one or more *Areas* with each area containing an *Editor*.
Editors are divided into :doc:`/interface/window_system/regions`.
Regions can have smaller structuring elements like :ref:`ui-panels` with buttons,
controls and widgets placed within them.

The composition of various Areas with predefined Editors in them is
called a *Screen Layout*. By default Blender starts up with a layout of
five Editors as shown in the image below.

.. figure:: /images/getting_started-basics_interface_introduction_02.png

   Blender's default Screen Layout with five Editors.

   Info (1), 3D View (2), Outliner (3), Properties (4) and Timeline (5).


Components of an Editor
=======================

In general an editor provides a way to view and modify your work through
a specific part of Blender.

The image below shows the 3D View as an example of an editor.

.. figure:: /images/getting_started-basics_interface_introduction_04.png

   The 3D View.

   Green: Main Region, red left top: Tool Shelf, red left bottom: Operator Panel, 
   red right: Properties Region, purple: Header.

