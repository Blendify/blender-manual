
******
Viewer
******

.. figure:: /images/Tutorials-NTR-ComViewer.jpg

   Viewer node


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

A border for compositor viewer node can be defined using :kbd:`Ctrl-B`.

This border is used to define area of interest of viewer node which restricts compositing to this area. Used for
faster previews by skipping compositing outside of the defined area of interest. This is only a preview option,
final compositing does not depend on this border.

Use :kbd:`Ctrl-Alt-B` to discard the defined border and see a full preview.

Tile order
==========

The tile order can be defined for the backdrop image, using the *Tile order* field in the properties of the
viewer node (*Properties* panel in *Properties* sidebar, with the viewer node selected):

Rule of thirds
   Generates tiles around each of the 9 zones defined by the
   **rule of thirds** (see `Rule of Thirds <http://en.wikipedia.org/wiki/Rule_of_thirds>`_ for more information).

Bottom up
   Tiles are generated from the bottom up.

Random
   Generates tiles randomly.

Center
   Generates the tiles around a specific center, defined by *X* and *Y* fields. Values in these fields
   range from 0.0 to 1.0. Default is 0.5 (middle point).

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
