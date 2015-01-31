.. _composite_nodes_output-index:

#########################
  Composite Output Nodes
#########################

At any point, you may want to see or save the working image in progress,
especially right after some operation by a node. Simply create another thread from the image
output socket of the node to an Output node to see a mini-picture.

Only one Viewer and one Composite Node is active,
which is indicated with a red sphere icon in the Node header.
Clicking on Viewer Nodes makes them active. The active Composite Node is always the first,
and you should only use one anyway.:

.. toctree::
   :maxdepth: 1

   composite.rst
   viewer.rst
   split_viewer.rst
   file.rst
   levels.rst
