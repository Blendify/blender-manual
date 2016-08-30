..    TODO/Review: {{review}}.

************
Introduction
************


The Info Editor is found at the top of the Default Screen and has the following components.

Header
======

.. figure:: /images/interface_window-system_info-window-shaded.png

   Info Editor header.

   Editor Type Selector(red), Menus (blue),
   Screen Data-block (green), Scene Data-block (orange), Engine Selector (purple),
   Resource Information (aqua).

Editor Type Selector
   Allows you to change the :doc:`Editor Type </editors/index>`.
Menus
   Provides access to the main menu options.
Back to Previous
   Shown when an area is maximized to return to tiled areas.
Screen Data-block
   Used to select and edit window layouts. See :doc:`Screens </interface/window_system/screens>`.
Scene Data-block
   Allows you to select different :doc:`Scenes </data_system/scenes>`.
   Having multiple Scenes allows you to work with separate virtual environments,
   with completely separate data, or with objects and/or mesh data linked between them.
Engine Selector
   Gives a list of available render and game engines.
Render progress
   A progressbar and a chancel button is shown while rendering.
Capture Stop
   A button shown while screen casting to stop the recording. See :ref:`info-screencast`.
Blender Icon
   Clicking on the Blender logo opens the :ref:`splash`.
Blender version
   This label displays the Blender version.
Resource Information
   Scene
      Displays information about the current loaded scene. The number of vertices,
      faces and triangles. As well as the selected objects or lambs with their total count in the scene.
   Memory
      The "Mem" label shows the calculated memory consumption by Blender.
      This can help to identify, when you are reaching the limits of your hardware.
   Active Object
      The object type of the current selected active object.


Console
=======

When the Info Editors area is scaled up it reveals the Blender console, where a log is displayed.
