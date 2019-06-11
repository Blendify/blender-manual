
***************
Annotation Tool
***************

The annotation tool is available in multiple editors.
With it notes can be added to e.g. 3D objects or node setups.

The annotation tool can be activated in the toolbar on the left side.
It has a couple of subtools listed below.

Annotate
   Draw freehand strokes in the main window.
Annotate Line
   Click and drag to create a line.
Annotate Polygon
   Click multiple times to create multiple connected lines.
   The current polygon is finished when :kbd:`Esc` or :kbd:`RMB` is pressed.
Annotate Eraser
   Click and drag to remove lines drawn previously.

Settings in the 3D Editor
=========================

When creating new annotations in the 3D view, there is one tool setting.
The *Placement* option determines where the line is drawn in 3D space.

3D Cursor
   Draw on an imaginary plane that goes through the 3D cursor.
View
   Draw in screen-space instead in 3D space.
   That means, that the line will stay on the same position in the screen,
   even when e.g. the camera rotates.
Surface
   Project the line on the surface under the mouse.

The eraser has a *Radius* setting.

There is a ``View --> Annotations`` panel in the right sidebar of the 3D view.
In it, multiple annotation layers can be managed.
Furthermore, it allows to adjust the thickness and color of existing and new strokes.

Optionally, *Onion Skin* can be enabled to show a preview of strokes made in frames close by the current frame.

Settings in 2D Editors
======================

In 2D editors, the *Placement* option does not exist.
When the annotation tool is enabled, the settings for managing multiple layers
can be found in the ``Tool --> Active Tool`` panel in the right sidebar.

.. figure:: /images/interface_annotations_node-editor.png
   :align: center

   Annotations tool in node editor.
