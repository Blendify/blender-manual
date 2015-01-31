
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


Using the UV/Image Editor Window
================================

The *Viewer* node allows results to be displayed in the UV/Image Editor.
The image is facilitated by selecting the *IM:Viewer Node* on the window's header.
The UV/Image Editor will display the image from the currently selected viewer node.

To save the image being viewed,
use the *Image→Save As* menu to save the image in a file.

The UV/Image Editor also has three additional options in its header to view Images with or
without Alpha, or to view the Alpha or Z itself.
Holding :kbd:`LMB` in the Image display allows you to sample the values.
