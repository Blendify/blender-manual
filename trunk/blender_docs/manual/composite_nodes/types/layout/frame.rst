
**********
Frame Node
**********

The Frame node is a useful tool for organizing nodes by collecting related nodes together in a common area.
Frames are useful when a node setup becomes large and confusing yet the re-usability of a Node Group is not required.

.. figure:: /images/composite_node_layout_frame.png
   :width: 100%


Adding and Removing Nodes
=========================

Once a Frame node is placed in the editor, nodes can be added by simply dropping them onto the frame or by
selecting the node(s) then the frame and using :kbd:`Ctrl-P`.

To remove them select the node(s) and use the :kbd:`Alt-P` shortcut.
This uses the same default keyboard bindings as Parenting and can be thought of as a similar concept.


Resizing Frame
==============

When the Frame node is first placed in the node editor workspace it may be resized by dragging one of the edges.

Once a node is placed in the Frame, the Frame shrinks around it so as to remove wasted space.
At this point it is no longer possible to grab the edge of the Frame to resize it, instead resizing occurs
automatically when nodes within the Frame are rearranged.

This behavior can be changed by disabling the *Shrink* option in the Properties tab of
the Properties region (:kbd:`N`).


Label and Color
===============

Frame Nodes can be given a title by modifying the Label field in the properties panel.
Label size can be changed as well so that, for example, subordinate Frames have smaller titles.

Frame Node colors can be applied from the properties panel which can be used to provide a powerful visual cue.

Once a satisfactory color is found it may be saved as a preset for re-use in other Frame nodes.
To do this press the *+* button next to the Color Presets
drop down in the properties panel and add a name for the preset.
To delete a preset first choose that preset for the active Frame and press the *-* button in the properties panel.
