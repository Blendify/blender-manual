
**********
Frame Node
**********

The Frame Node is a useful tool for organizing nodes by collecting related nodes together in a common area.
Frames are useful when a node setup becomes large and confusing yet the re-usability of a Node Group is not required.

.. figure:: /images/composite_node_layout_frame.png
   :width: 100%


Adding and Removing Nodes
=========================

Once a Frame Node is placed in the editor, Nodes can be added by simply dropping them onto the frame or by
selecting the node(s) then the frame and using :kbd:`Ctrl-P`.

To remove them select the node(s) and use the :kbd:`Alt-P` shortcut.
This uses the same default keyboard bindings as Parenting and can be thought of as a similar concept.


Resizing Frame
==============

When the Frame Node is first placed in the node editor workspace it may be resized by dragging one of the edges.

Once a node is placed in the Frame, the Frame shrinks around it so as to remove wasted space.
At this point it is no longer possible to grab the edge of the Frame to resize it, instead resizing occurs
automatically when nodes within the Frame are rearranged.

This behavior can be changed by disabling the *Shrink* option in the Properties tab of
the Properties region (:kbd:`N`).


Label and Color
===============

Frame Nodes can be given a title by modifying the Label field in the Properties panel.
Label size can be changed as well so that, for example, subordinate Frames have smaller titles.

Frame Node colors can be applied from the properties panel which can be used to provide a powerful visual cue.
