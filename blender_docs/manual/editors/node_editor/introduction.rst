
.. _node-editor:

************
Introduction
************

.. figure:: /images/editors_node_example.png

   The Node Editor.

The *Node Editor* is used to work with node-based dataflows.
Here we will only give an overview of what the *Node Editor* is,
For example, in the list below it shows a list of different types of node trees and where each is documented.

.. _node-tree-types:

Blender has a number of different node tree types:

- :doc:`Compositing Nodes </compositing/index>`
- :doc:`Texture Nodes </render/blender_render/textures/nodes/introduction>`
- Material Nodes (:doc:`Blender Internal </render/blender_render/materials/nodes/index>`,
  :doc:`Cycles </render/cycles/nodes/index>`)

The node tree type can be changed using the buttons in the node editor header.


Regions of the Node Editor
==========================

Toolshelf
---------

The *toolshelf* is a context-sensitive region, natively containing tools for the grease pencil and buttons for adding
nodes. The toolshelf is organized using tabs.

Properties Region
-----------------

The *properties region* contains properties for the current selected node as well as node editor specific settings.

Header
------

The *header* contains various menus, buttons and options, partially based on the current node tree type.

.. TODO - see: https://developer.blender.org/T43570

Navigating
==========

Navigating the node editor is done with the use of both mouse movement and keyboard shortcuts.

Pan (:kbd:`MMB`)
   Move the view up, down, left and right
Zoom (:kbd:`Ctrl-MMB`/:kbd:`Wheel`)
   Move the camera forwards and backwards
