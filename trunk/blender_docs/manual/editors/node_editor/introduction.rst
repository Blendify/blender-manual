
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


Regions of the Node Editor
==========================

Tool Shelf
----------

The *Tool Shelf* is a context-sensitive region, natively containing tools for the Grease Pencil
and buttons for adding nodes. The Tool Shelf is organized using tabs.


Properties Region
-----------------

The *Properties Region* contains properties for the current selected node as well as node editor specific settings.


Header
------

The *Header* contains various menus, buttons and options, partially based on the current node tree type.

.. TODO - see: https://developer.blender.org/T43570


Navigating
==========

Navigating the node editor is done with the use of both mouse movement and keyboard shortcuts.

Pan :kbd:`MMB`
   Move the view up, down, left and right
Zoom :kbd:`Ctrl-MMB`, :kbd:`Wheel`
   Move the camera forwards and backwards
