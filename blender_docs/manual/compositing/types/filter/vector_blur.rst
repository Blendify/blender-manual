
..    TODO/Review: {{review|copy=X}} .

*************************
Vector (Motion) Blur Node
*************************

.. figure:: /images/compositing_nodes_vectorblur.png
   :align: right
   :width: 150px

   Vector Blur Node

Motion blur is the effect of objects moving so fast they blur.
Because CG animations work by rendering individual frames,
they have no real knowledge of what was where in the last frame, and where it is now.

In Blender, there are two ways to produce motion blur. The first method
(which produces the most correct results)
works by rendering a single frame up to 16 times with slight time offsets,
then accumulating these images together;
this is called Motion Blur and is activated on the Render panel. The second (and much faster)
method is the Compositor node Vector Blur.

To use, connect the appropriate passes from a Render Result node.

.. note::

   Make sure to enable the Speed (called Vec)
   pass in the Render Layers panel for the render layer you wish to perform motion blur on.


Maximum Speed: Because of the way vector blur works, it can produce streaks,
lines and other artifacts. These mostly come from pixels moving too fast;
to combat these problems, the filter has minimum and maximum speed settings,
which can be used to limit which pixels get blurred (e.g. if a pixel is moving really,
really fast but you have maximum speed set to a moderate amount, it won't get blurred).

Minimum Speed: Especially when the camera itself moves,
the mask created by the vectorblur node can become the entire image.
A very simple solution is to introduce a small threshold for moving pixels,
which can efficiently separate the hardly-moving pixels from the moving ones,
and thus create nice looking masks. You can find this new option as 'min speed'.
This minimum speed is in pixel units.
A value of just 3 will already clearly separate the background from foreground.

.. hint::

   You can make vector blur results a little smoother by passing the Speed pass through a blur node
   (but note that this can make strange results,
   so it's only really appropriate for still images with lots of motion blur).


Examples
========

An in-depth look at how to use the Vector Blur node
:doc:`can be found here </composite_nodes/types/filter/vector_blur>`.

As far as we know, this node represents a
`new approach to calculating motion blur
<http://www.blender.org/development/release-logs/blender-242/vector-blur/>`__.
Use vector blur in compositing with confidence instead of motion blur. In face,
when compositing images, it is necessary to use vector blur since there isn't "real" motion.
In this `example blend file <http://download.blender.org/demo/test/driven_hand_blur.blend>`__,
you will find a rigged hand reaching down to pick up a ball. Based on how the hand is moving
(those vectors), the image is blurred in that direction. The fingers closest to the camera
(the least Z value) are blurred more, and those farther away (the forearm)
is blurred the least.


.. note::

   Does not work when reading from a multilayer OpenEXR sequence set
