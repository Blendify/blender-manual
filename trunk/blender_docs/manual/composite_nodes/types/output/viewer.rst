
***********
Viewer Node
***********

.. figure:: /images/compositing_nodes_viewer.png
   :align: right

   Viewer Node

The *Viewer* node is a temporary, in-process viewer.
Plug it in wherever you would like to see an image or value-map in your node-tree.

:kbd:`LMB` click on the image to update it, if it wasn't done automatically.
You can use as many of these as you would like.
It is possible to automatically plug a Viewer node to any other node by pressing :kbd:`Shift-Ctrl-LMB` on it.


.. note::

   It is possible to add multiple Viewer nodes, though only the active one
   (last selected, indicated with a slightly darker header) will be shown on the backdrop or in the UV/Image editor.


Border Compositing
==================

A border for the viewer node can be defined using :kbd:`Ctrl-B` and selecting a rectangular area.

This border is used to define the area of interest of the viewer node which restricts compositing to this area.
Used for faster previews by skipping compositing outside of the defined area of interest.
This is only a preview option, final compositing during a render ignores this border.

Use :kbd:`Ctrl-Alt-B` to discard the defined border and see a full preview.


Tile order
==========

The tile order can be defined for the backdrop image, using the *Tile order* field in the properties of the
viewer node (*Properties* panel in *Properties* sidebar, with the viewer node selected):

Rule of thirds
   Calculates tiles around each of the 9 zones defined by the
   **rule of thirds** (see `Rule of Thirds <http://en.wikipedia.org/wiki/Rule_of_thirds>`_ for more information).

Bottom up
   Tiles are calculated from the bottom up.

Random
   Calculates tiles in a non-specific order.

Center
   Calculates the tiles around a specific center, defined by *X* and *Y* fields.


Using the UV/Image Editor Window
================================

The viewer node allows results to be displayed in the UV/Image Editor.
The image is facilitated by selecting *Viewer Node* on the window's header linked image selector.
The UV/Image Editor will display the image from the currently selected viewer node.

To save the image being viewed,
use :menuselection:`Image --> Save As Image` (:kbd:`F3`) to save the image in a file.

The UV/Image Editor also has three additional options in its header to view Images with or
without Alpha, or to view the Alpha or Z itself.
Holding :kbd:`LMB` in the Image display allows you to sample the values.
