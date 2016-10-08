
************
Introduction
************

After starting Blender and closing the :ref:`Splash Screen <splash>`
your Blender window should look something similar to the image below.
Blender's user interface is consistent across all platforms.

.. figure:: /images/interface_default_startup.png
   :align: center

   The default startup Blender window.


Interface Elements
==================

.. code-block:: none

   Window ‣ Screen ‣ Areas ‣ Editors ‣ Regions ‣ (Tabs) ‣ Panels ‣ Controls

The interface can be customized to match specific tasks using
:doc:`Screen Layouts </interface/window_system/screens>`,
which can then be named and saved for later use. The default screen is described below.

A screen is organized into one or more :doc:`Areas </interface/window_system/areas>`
with each area containing an *Editor*.


The Default Screen
==================

By default Blender starts up showing the default screen, which is separated into five areas 
containing the Editors listed below:

- The Info Editor at the top.
- A large 3D View.
- A Timeline at the bottom.
- An Outliner at the top right.
- A Properties Editor at the bottom right.

.. figure:: /images/interface_introduction_default_screen.png

   Blender's default Screen Layout with five Editors.

   Info (1), 3D View (2), Outliner (3), Properties (4) and Timeline (5).


Components of an Editor
=======================

In general an editor provides a way to view and
modify your work through a specific part of Blender.
Editors are divided into :doc:`/interface/window_system/regions`.
Regions can have smaller structuring elements like
:doc:`tabs and panels </interface/window_system/tabs_panels>`
with buttons, controls and widgets placed within them.

.. figure:: /images/interface_introduction_editor.png

   The 3D View editor.

   Yellow: Main Region, green: Header, blue: Tool Shelf, purple: Operator Panel, 
   red: Properties Region.


User Interface Principles
=========================

Non Overlapping
   The UI is designed to allow you to view all relevant options and tools at a glance
   without pushing or dragging editors around.

Non Blocking
   Tools and interface options do not block the user from any other parts of Blender.
   Blender typically does not use pop-up boxes
   (requiring users to fill in data before running an operation).

Non Modal Tools
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
Creating a new theme or selecting/altering a pre-existing one can be done by selecting the
:doc:`User Preferences </preferences/index>` editor and clicking on the *Themes* tab.
