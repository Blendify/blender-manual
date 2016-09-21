..    TODO/Review: {{review}}.

************
Introduction
************


The Info Editor is found at the top of the Default Screen and has the following components.

Header
======

.. figure:: /images/interface_window-system_info-window-shaded.png

   Info Editor header.

   Editor Type Selector (red), Menus (blue),
   Screen Data-block (green), Scene Data-block (orange), Engine Selector (purple),
   Resource Information (aqua).

Editor Type 
   Selector that allows you to change the :doc:`Editor Type </editors/index>`.
Menus
   Provides access to the main menu options.
Back to Previous
   A button shown when an area is maximized to return to tiled areas.
Screen
   :ref:`Data-block menu <ui-data-block>` used to select and edit
   :doc:`Screens </interface/window_system/screens>` (window layouts).
Scene 
   :ref:`Data-block menu <ui-data-block>` to select different :doc:`Scenes </data_system/scenes/introduction>`.
   Having multiple Scenes allows you to work with separate virtual environments,
   with completely separate data, or with objects and/or mesh data linked between them.
Engines
   Gives a list of selectable render and game engines.
Render/Baking progress
   A progressbar and a chancel button is shown while rendering or baking.
   Hovering over it shows a time estimate.
Capture Stop
   A button shown while :ref:`screen casting <info-screencast>` to stop the recording.
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


.. _info-report-console:

Report Console
==============

When the Info Editors area is scaled up it reveals the Report console,
where a scripting trail is displayed.
Whenever an operator has been executed, it leaves a report, creating a log.

.. figure:: /images/getting_started_help_python.png

   The Report Console after adding a Cube.
