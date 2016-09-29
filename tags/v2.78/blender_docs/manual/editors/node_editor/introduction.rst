
************
Introduction
************

.. figure:: /images/editors_node_example.png

   The Node Editor.

The *Node Editor* is used to work with node-based work flows.
The node tree type can be changed using the buttons in the node editor header.
However, here we will only give an overview of what the *Node Editor* is.
In the list below it shows a list of different types of node trees and where each is documented.

.. _node-tree-types:

.. list-table::
   :header-rows: 1

   * - Icon
     - Name
     - Documentation
   * - .. figure:: /images/icons_material.png
          :width: 35px
     - Material Nodes
     - Because there are two different render engines documentation is split between :doc:`Blender Internal
       </render/blender_render/materials/nodes/index>` and :doc:`Cycles </render/cycles/nodes/index>`.
   * - .. figure:: /images/icons_render-layers.png
          :width: 35px
     - Composite Nodes
     - Documentation can be found in the :doc:`Compositing </compositing/index>` section.
   * - .. figure:: /images/icons_texture.png
          :width: 35px
     - Texture Nodes
     - Texture Nodes are covered in the
       :doc:`Blender Internal </render/blender_render/textures/nodes/introduction>` docs.

After choosing what node context you want to use, you have to enable nodes with the *Use Nodes* button.


Interface
=========

Header
------

The *Header* contains various menus, buttons and options, partially based on the current node tree type.

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


Tool Shelf
----------

The *Tool Shelf* is a context-sensitive region, natively containing tools for the Grease Pencil
and buttons for adding nodes. The Tool Shelf is organized using tabs.


Properties Region
-----------------

The *Properties Region* contains properties for the current selected node as well as node editor specific settings.
