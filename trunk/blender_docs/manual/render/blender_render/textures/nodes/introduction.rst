.. |texture-button| image:: /images/icons_texture.png
   :width: 1.1em

************
Introduction
************

As an alternative to using the :doc:`Texture Stack </render/blender_render/textures/texture_panel>`,
Blender includes a node-based texture generation system, which enables textures creation by combining colors,
patterns and other textures in the same way as shader writing with
:doc:`Material Nodes </render/blender_render/materials/nodes/index>`.

.. figure:: /images/render_blender-render_textures_nodes_introduction_types-combined.jpg
   :width: 300px

   Combined textures based on nodes.

These textures can be used in the same places as regular textures:
They can be placed in texture channels, in material nodes, in particle systems,
and even inside other textures.

.. note::

   Node-based textures do **not** work for realtime display, they will only be visible in rendered images.


Using Texture Nodes
===================

To use texture nodes with the current texture, open the :doc:`Node Editor </editors/node_editor/index>`
and set it to *Texture* mode by clicking the "Texture" icon (|texture-button|) in its header.

To start adding nodes, a material has to be to selected.
A new texture can be created by either clicking the *New* button in the Node editor,
or the *New* button in the texture panel. Once a texture is selected, it can be
toggled to a function as a regular texture or a node texture by clicking the *Use Nodes* option in the Node Editor.

The default node setup will appear: a red-and-white checkerboard node connected to an
*Output* named "Default". For *texture* nodes, multiple Outputs
can exist in the node setup. Compare to other types of node contexts, which are limited to one active Output node.
See the next section for details.

For instructions on how to add, remove and manipulate the nodes in the tree,
see the :doc:`Node Editor </editors/node_editor/index>` reference.


Using Multiple Outputs
======================

Each texture defined with Texture Nodes can have several outputs,
which can then be used for different things. For example,
a texture that defines both a diffuse (color) map and a normal map.
This can be done by:

#. Create two texture slots in the texture list, and set them to the same texture data-block.
#. Add two *Output* nodes to the node tree,
   and type new names into their *Name* text-boxes: e.g. "Diffuse" for one and "Normal" for the other.
#. Underneath the texture list view in the texture panel, a selector with the names of the outputs are shown.
   For each entry in the texture list, select the desired output by changing the menu entry
   (e.g. set on to *Diffuse* and the other to *Normal*).

These named outputs could be used, when the material is defined with Material Nodes.
In this case, Texture Channels are probably not used. Instead, insert the
*Texture* nodes into the Material Node tree by using :menuselection:`Add --> Input --> Texture`.
Inside the just added texture node the output to use can then be selected (e.g. *Diffuse* or *Normal*).
