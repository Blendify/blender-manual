
***************
Selecting Edges
***************

.. figure:: /images/selection-mode_buttons_edge-activated.jpg

   Buttons for the selection modes.

Edges can be selected in much the same way as vertices and faces -
by right-clicking them while Edge Select Mode is activated.
Pressing :kbd:`Shift` while clicking will add/subtract to the existing selection.


.. _modeling-meshes-selecting-edge-loops:

Edge Loops
==========

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode (Mesh)
   | Menu:     :menuselection:`Select --> Edge Loop`
   | Hotkey:   :kbd:`Alt-RMB` - or :kbd:`Shift-Alt-RMB` for modifying existing selection


Edge loops can be selected by first selecting an edge (vertex or edge selection mode),
and then going to :menuselection:`Select --> Edge Loop`. The shortcut :kbd:`Alt-RMB` on an edge
(either vertex or edge select mode) is a quicker and more powerful way of doing so.
More powerful, because you can add/remove loops from an existing selection if you press
:kbd:`Shift` too.

Note, that if you want to select a loop while being in vertex select mode,
you still have to perform the shortcut on an edge - while you,
for just selecting vertices, would rightclick on a vertex.

.. figure:: /images/select_edge_loop_example.jpg

   An edge loop.


Edge Rings
==========

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode (Mesh)
   | Menu:     :menuselection:`Select --> Edge Ring`
   | Hotkey:   :kbd:`Alt-Ctrl-RMB` - or :kbd:`Shift-Alt-Ctrl-RMB` for modifying existing selection


Edge Rings are selected similarly.
Based on the selection of an edge go to :menuselection:`Select --> Edge Ring`.
Or use :kbd:`Alt-Ctrl-RMB` on an edge.

.. figure:: /images/select_edge_ring_example.jpg

   An Edge Ring.


.. note:: Convert selection to whole faces

   If the edge ring selection happened in Edge Select Mode, switching to Face Select Mode will erase the selection.

   This is because none of those faces had all its (four) edges selected,
   just two of them.

   Instead of selecting the missing edges manually or by using :kbd:`Shift-Alt-RMB` twice,
   it is easier to first switch to Vertex Select Mode, which will kind of "flood" the selection.
   A subsequent switch to Face Select Mode will then properly select the faces.
