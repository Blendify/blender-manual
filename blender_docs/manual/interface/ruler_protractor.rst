.. _bpy.ops.view3d.ruler:

******************
Ruler & Protractor
******************

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Menu:     :menuselection:`Tool Shelf --> Grease Pencil --> Tools:Ruler/Protractor`

The ruler is an interactive tool where you can drag lines in the scene to measure distances or angles.
Optionally snapping to geometry could be activated for better accuracy or to measure wall thickness.
The ruler can be accessed from the Tool Shelf.

.. figure:: /images/interface_ruler-protractor_ruler-example.jpg
   :width: 500px

   Example of the ruler and protractor.

.. figure:: /images/interface_ruler-protractor_ruler-thickness.jpg
   :width: 592px

   Example using the ruler to measure thickness.


Usage
=====

.. figure:: /images/interface_ruler-protractor_ruler-basic.png

Here are common steps for using the ruler:

#. Activate the Ruler from the Tool Shelf.
#. Click and drag in the view-port to define the initial start/end point for the ruler.
#. Orbit the view and click on either end of the ruler to re-position it.
   Holding :kbd:`Ctrl` enables snap to elements.
#. Click on the middle to measure angles.
#. Press :kbd:`Enter` to store the ruler for later use or :kbd:`Esc` to cancel.

.. note::

   Editing operations can be used while the ruler is running,
   however, tools like the knife cannot be used at the same time.

.. note::

   Unit settings and scale from the scene are used for displaying dimensions.


Shortcuts
=========

- :kbd:`Ctrl-LMB` Adds new ruler.
- :kbd:`LMB` Drag end-points to place them, Hold :kbd:`Ctrl` to snap, Hold :kbd:`Shift` to measure thickness.
- :kbd:`LMB` Drag center-point to measure angles, drag out of the view to convert back to a ruler.
- :kbd:`Delete` Deletes the ruler.
- :kbd:`Ctrl-C` Copies the rulers value to the clipboard.
- :kbd:`Esc` Exit tool.
- :kbd:`Enter` Saves the rulers for the next time the tool is activated.
