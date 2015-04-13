.. _composite_nodes_matte-index:

..    TODO/Review: {{review|text=needs verification that it's up to date with 2.6|
                     fixes=[[User:bob_holcomb/Doc:2.6/Manual/Composite Nodes/Types/Matte|X]]}} .

##############
  Matte Nodes
##############

These nodes give you the essential tools for working with blue-screen or green-screen footage,
where live action is shot in front of a blue or green backdrop for replacement by a matte
painting or virtual background.

In general, hook up these nodes to a viewer, set your UV/Image Editor to show the viewer node,
and play with the sliders in real-time using a sample image from the footage,
to get the settings right. In some cases,
small adjustments can eliminate artifacts or foreground image degredation. For example,
taking out too much green can result in foreground actors looking 'flat' or blueish/purplish.

You can and should chain these nodes together,
refining your color correction in successive refinements,
using each node's strengths to operate on the previous node's output.
There is no "one stop shopping" or one "does-it-all" node; they work best in combination.

Usually, green screen is shot in a stage with consistent lighting from shot to shot,
so the same settings will work across multiple shots of raw footage.
Footage shot outside under varying lighting conditions (and wind blowing the background)
will complicate matters and mandate lower falloff values.

.. note:: Garbage Matte

   Garbage matte is not a node,
   but a technique where the foreground is outlined using a closed curve (bezier or nurbs).
   Only the area within the curve is processed using these matte nodes;
   everything else is garbage and thus discarded.

.. toctree::
   :maxdepth: 1

   keying.rst
   keying_screen.rst
   channel_key.rst
   color_spill_key.rst
   box_mask.rst
   ellipse_mask.rst
   luminance_key.rst
   difference_key.rst
   distance_key.rst
   chroma_key.rst
   color_key.rst
   double_edge_mask.rst
