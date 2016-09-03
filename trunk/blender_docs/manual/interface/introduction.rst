
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
Regions can have smaller structuring elements like `panels`_ with buttons,
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


Panels
======

.. figure:: /images/getting_started-basics_interface_introduction_06.png
   :align: right

   Tool Self panels.

   Orange: Panel Headers.

The smallest organizational unit in the user interface is a panel,
which can be collapsed to hide its contents by clicking on its header.
This is where the buttons, menus, checkboxes, etc. are located.

Panels are usually found in the side regions of an editor,
but also make up most of the :doc:`Properties Editor </editors/properties/index>`.

In the image on the right there are three panels: *Transform*, *Edit* and *History*.
The *Edit* panel is expanded and the other two panels are collapsed.
Note that you can change the order of panels by clicking
on the handle in the upper right corner of a panel's title.

See: :doc:`panels </interface/window_system/panels>` for details.

.. container:: lead

   .. clear


Tabs
====

.. figure:: /images/getting_started-basics_interface_introduction_07.png
   :align: right


The *Tool Shelf* has been further structured
into a set of context sensitive vertical tabs.

In the image to the right you can see the tabs: *Tools*, *Create*, etc.
The *Tools* tab is currently selected, showing a set of panels containing various tools.


Pinning
-------

Often it is desirable to view panels from different tabs at the same time.
This has been solved by making panels pinnable.

A pinned panel remains visible regardless of which tab has been selected.
You can pin a panel by :kbd:`Shift` clicking its header,
or by right clicking on the header and choosing *Pin*.

In the image shown to the right, 
is an example of the *Mesh Options* pinned in the tools tab.
