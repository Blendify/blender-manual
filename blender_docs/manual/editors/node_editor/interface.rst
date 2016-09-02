
*********
Interface
*********

By default, the node editor is configured for :doc:`Compositing </compositing/index>`.

.. figure:: /images/editors_node_header1.png

   Default Node Editor Header.

However, the Node Editor can be configured for many other types of :ref:`work flows <node-tree-types>`.
After choosing what node context you are you using you you can enable node with the *Use Nodes* button.


Node Editor Actions
===================

When the cursor is in the area, several standard Blender hotkeys and mouse actions are available, including:

Popup Menu
   :kbd:`Space` brings up a main pop-up menu, allowing you to add, view, select, etc.
Delete
   :kbd:`X` or :kbd:`Delete` deletes the selected node(s).
Box select
   :kbd:`B` starts the bounding box selection process.
   Position your cursor and :kbd:`LMB` click & drag to select a set of nodes.
Cut connections (lasso)
   :kbd:`Ctrl-Alt-LMB` click & drag starts a lasso selection, **but** when you let up the mouse button,
   all threads (connections) within the lasso are broken.
Undo
   :kbd:`Ctrl-Z`
Redo
   :kbd:`Ctrl-Y` or :kbd:`Ctrl-Shift-Z` -- You can use this if you used "undo" a bit too often.
Select multiple
   :kbd:`Shift-LMB` or :kbd:`Shift-RMB` used for multiple node selection.
Grab/Move
   :kbd:`G` to move the current selection around.


Node Editor Header
==================

On the editors header, you will see header options:

.. figure:: /images/editors_node_header.png

   Common Node Header Options.

View
   This menu changes your view of the editor.
Select
   This menu allows you to select a node or groups of nodes.
Add
   This menu allows you to add nodes.
Node
   To do things with selected nodes, akin to vertices.
Material, Compositing or Texture buttons
   Nodes are grouped into three categories, to see the list see :ref:`Node Tree Types <node-tree-types>`.
Use Nodes
   Tells the render engine to use the node map in computing the material color or rendering the final image,
   or not. If not, the map is ignored and the basic render of the material tabs or scene is accomplished.
Use Pinned
   This button tells the render engine to use pinned node tree.
Go to Parent button
   This button allows you go to parent node tree.
Snap
   Toggle snap mode for node in the Node Editor.
Snap Node Element Selector
   This selector provide the follow node elements for snap:

   :Grid: (default) Snap to grid of the Node Editor.
   :Node X: Snap to left/right node border.
   :Node Y: Snap to top/bottom node border.
   :Node X/Y: Snap to any node border.

Snap Target
   Which part to snap onto the target.

   :Closest: Snap closest point onto target.
   :Center: Snap center onto target.
   :Median: Snap median onto target.
   :Active: Snap active onto target.

Copy Nodes
   This button allows you copy selected nodes to the clipboard.
Paste Nodes
   This button allows you paste nodes from the clipboard to the active node tree.
