
**********
Frame Node
**********

The Frame node is a useful tool for organizing nodes by collecting related nodes together in a common area.
Frames are useful when a node setup becomes large and confusing yet the re-usability of a Node Group is not required.

.. figure:: /images/compositing_nodes_layout_frame_example.png


Properties
==========

.. figure:: /images/compositing_nodes_layout_frame_properties.png
   :align: right

Label size
   Font size of the label. For example, for subordinate frames to have smaller titles.
Shrink
   Once a node is placed in the Frame, the Frame shrinks around it so as to remove wasted space.
   At this point it is no longer possible to grab the edge of the Frame to resize it, instead resizing occurs
   automatically when nodes within the Frame are rearranged.
   This behavior can be changed by disabling this option.
Text
   When you need to display more comprehensive text, frame nodes can display the contents of a text-block.
   This is read-only, so you will need to use the *Text Editor* to modify the contents.


Editing
=======

Join in new Frame
-----------------

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Menu:     :menuselection:`Node --> Join in new Frame`
   | Hotkey:   :kbd:`Ctrl-J`

ToDo.


Adding
------

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Hotkey:   :kbd:`Ctrl-P`

Once a Frame node is placed in the editor, nodes can be added by simply dropping them onto the frame or by
selecting the node(s) then the frame and using :kbd:`Ctrl-P`.


Remove from Frame
-----------------

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Menu:     :menuselection:`Node --> Remove from Frame`
   | Hotkey:   :kbd:`Alt-P`

To remove them select the node(s) and use the :kbd:`Alt-P` shortcut.
This uses the same default keyboard bindings as Parenting and can be thought of as a similar concept.
