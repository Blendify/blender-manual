..    TODO/Review: {{review|copy=X}}.

**************
Edge Rendering
**************

.. figure:: /images/render_blender-render_post-processing_edges_toon-examples.png
   :width: 240px

   A scene with Toon materials.


Blender's toon shaders can give your rendering a comic-book-like or manga-like appearance,
affecting the shades of colors.
The effect is not perfect since real comics and manga also usually have china ink outlines.
Blender can add this feature as a post-processing operation.


Options
=======

.. figure:: /images/render07.png

   Toon edge buttons.


Edge
   This makes Blender search for edges in your rendering and add an 'outline' to them.

Before repeating the rendering it is necessary to set some parameters:

Threshold
   The threshold of the angle between faces for drawing edges,
   from 0 to 255. A value of 10 would just give outline of object against the background,
   whereas higher settings start to add outlines on surface edges,
   starting with sharper angles. At maximum intensity,
   edge will even faintly display geometry subdivided edge lines in areas of imperfect smoothing.
Color RGB
   The color of the rendered edges.


Examples
========

.. figure:: /images/render_blender-render_post-processing_edges_toon-examples-edge.png
   :width: 400px

   Scene re-rendered with toon edge set.


It is possible to separate out the edge layer using a render layer dedicated to that purpose.
The alpha channel is 0 where there is no edge, and 1 where the edge is.
By separating out the edge layer, you can blur it, change its color, mask it, etc.
The image above shows how to do this.
In this example, an Edge render layer is created that only has the Sky and Edge layers
The other render layer omits the Edge layer, so it returns just the normal image.
On the output panel *Edge* is enabled with a width of 10 in black.
Then that layer goes through a blur node. Using the Alpha Over node,
then the cube is composited on top of the blurred edge.
The result gives a soft-shadow kind of effect.
Note that Premultiply is set, because the Edge image already has an alpha of 1.0 set.
