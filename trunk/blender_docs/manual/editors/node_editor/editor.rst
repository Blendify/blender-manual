
******
Editor
******

By default, the header, when first displayed, is uninitialized as shown:

.. figure:: /images/editors_nodeeditor_header1.png

   Default Node Editor Header

Activating Nodes
================

What nodes to use?
       
- If you want to work with a material node map, click the ball in the Material/Compositing node set selector.

.. figure:: /images/editors_nodeeditor_header1.png

   Node Editor for Materials

- If you want to work with a compositing node map,
  click the overlaped pictures on the Material/Compositing node set selector.

.. figure:: /images/editors_nodeeditor_header.jpg

   Node Editor for Compositing

- If you want to work with a texture node map, click the checker on the Material/Compositing node set selector.

.. figure:: /images/editors_nodeeditor_header2.png

   Node Editor for Texturing

To actually activate nodes, click the Use Nodes button.


Node Editor Window Actions
==========================

When the cursor is in the window, several standard Blender hotkeys and mouse actions are available, including:

Popup Menu
   Space - Brings up a main popup menu, allowing you to add, view, select, etc.
Delete
   :kbd:`X` or :kbd:`Del` - Deletes the selected node(s).
Box select
   :kbd:`B` - Starts the bounding box selection process.
   Position your cursor and :kbd:`LMB` click & drag to select a set of nodes.
Cut connections (lasso)
   :kbd:`Ctrl-Alt-LMB` click & drag - Starts a lasso selection, BUT when you let up the mouse button,
   all threads (connections) within the lasso are broken.
Undo
   :kbd:`Ctrl-Z` 
Redo
   :kbd:`Ctrl-Y` or :kbd:`Ctrl-Shift-Z` - You can use this if you used "undo" a bit too often
Select multiple
   :kbd:`Shift-LMB` or :kbd:`Shift-RMB`- Multiple node select. 
Grab/Move
   :kbd:`G` - Moves your current selection around. 

Node Editor Header
==================

On the window header, you will see header options:

View
   This menu changes your view of the window.
Select
   This menu allows you to select a node or groups of nodes,
   and does the same as typing the hotkey to select all :kbd:`A` or start the border select :kbd:`B` process.
Add
   This menu allows you to add nodes.
Node
   To do things with selected nodes, akin to vertices.
Material, Compositing or Texture buttons
   Nodes are grouped into two categories, based on what they operate on:

- To work with Material Nodes, click on the ball,
- To work with Compositing nodes, click on the overlaped pictures,
- To work with Texture nodes, click on the checker.

Use Nodes
   This button tells the render engine to use the node map in computing the material color or rendering the final image,
   or not. If not, the map is ignored and the basic render of the material tabs or scene is accomplished. 
Use Pinned
   This button tells the render engine to use pinned node tree.
Go to Parent button
   This button allows you go to parent node tree.
Snap
   Toggle snap mode for node in the Node Editor window.
Snap Node Element Selector
   This selector provide the follow node elements for snap:

- Grid (default) Snap to grid of the Node Editor window. 
- Node X Snap to left/right node border. 
- Node Y Snap to top/bottom node border. 
- Node X/Y Snap to any node border. 

Snap Target
   Which part to snap onto the target.

- Closest: Snap closest point onto target. 
- Center: Snap center onto target. 
- Median: Snap median onto target. 
- Active: Snap active onto target.

Copy Nodes
   This button allows you copy selected nodes to the clipboard.
Paste Nodes
   This button allows you paste nodes from the clipboard to the active node tree.
