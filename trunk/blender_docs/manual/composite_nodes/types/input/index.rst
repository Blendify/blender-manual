.. _composite_nodes_input-index:

##############
  Input Nodes
##############

Input nodes produce information from some source.
For instance, an input could be:

- Taken directly from the active camera in a selected scene,
- from a JPG, PNG, etc. file as a static picture,
- a movie clip (such as an image sequence or video), or
- just a color or value.

These nodes generate the information that feed other nodes.
As such, they have no input-connectors; only outputs.

.. toctree::
   :maxdepth: 1

   render_layers.rst
   image.rst
   movie_clip.rst
   mask.rst
   rgb.rst
   value.rst
   texture.rst
   bokeh_image.rst
   time.rst
   track_position.rst
