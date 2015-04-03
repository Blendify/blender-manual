
*********
Time node
*********

.. admonition:: Reference
   :class: refbox

   | Panel:    :doc:`Node Editor </render/blender_render/materials/nodes/editor>` -->
               :doc:`Node Composition </composite_nodes/index>`
   | Menu:     :kbd:`Shift-A` --> :doc:`Input </composite_nodes/types/input/index>` --> Time


.. figure:: /images/Tutorials-NTR-ComTime.jpg

   Time node


The Time node generates a *fac* tor value (from 0.00 to 1.00)
(that changes according to the curve drawn) as time progresses through your movie (frames).

The *Start* and *End* NumButtons specify the range of time the values
should be output along, and this range becomes the X-axis of the graph.
The curve defines the Y-value and hence the factor that is output.
In the example to the right,
since the timespan is 250 frames and the line is straight from corner to corner,
0.50 would be output at frame 125, and 0.75 will be output at frame 187.

.. note:: Note on output values

   The :doc:`Map Value </composite_nodes/types/vector/map_value>`
   node can be used to map the output to a more appropriate value.
   With some time curves, it is possible that the Time node may output a number larger than one or less than zero.
   To be safe, use the Min/Max clamping function of the Map Value node to limit output.


You can reverse time (unfortunately, only in Blender and not in the real world)
by specifying a Start frame greater than the End frame.
The net effect of doing so is to flip the curve around. Warning:
doing so is easily overlooked in your node map and can be very confusing
(like meeting your mother when she was/is your age in "Back to the Future").


.. note:: Time is Relative

   In Blender, time is measured in frames.
   The actual duration of a time span depends on how fast those frames whiz by (frame rate).
   You set the frame rate in your animation settings (:doc:`Scene Context </ce/buttons/scene_context>`).
   Common settings range from 5 seconds per frame for slideshows (0.2 fps), to 30 fps for US movies.


Time Node Examples
==================

In the picture below, over the course of a second of time (30 frames),
the following time controls are made:


.. figure:: /images/Manual-Compositing-Time.jpg

   See:

   A) No Effect
   B) Slow Down
   C) Freeze
   D) Accelerate
   E) Reverse


Common uses for this include a
:doc:`"fade to black" </composite_nodes/types/converter/set_alpha>`,
wherein the accelerate time curve (typically exponentially-shaped)
feeds a mix value that mixes a constant black color in,
so that the blackness accelerates and eventually darkens the image to total black.
Other good uses include an increasing soften (blur-out or -in) effect,
or :doc:`fade-in </composite_nodes/types/converter/set_alpha>` a background or foreground,
instead of just jumping things into or out of the scene.


You can even imagine hooking up one blur to a background renderlayer,
another inverted blur to a foreground renderlayer, and time-feeding both.
This node group would simulate someone focusing the camera lens.


Examples and suggestions
========================

As your imagination runs wild, consider a few ideas that came to me just now on my couch:
mixing a clouds texture with a time input to fog up a piece of glass or show spray paint
building up on a wall. Consider mixing red and the soften with time (decreasing output)
to show what someone sees when waking up from a hard hit on the head.
Mix HSV input with a starfield image with time (decreasing output)
to show what we might see someday as we accelerate our starship and experience red-shift.

As a user, you should know that we have arrived at the point where there are many ways to do
the same thing in Blender. For example, an old way to make a slide show using Blender,
you created multiple image textures, one image for each slide,
and assigned them as texture channels to the material for the screen, then created a screen
(plane) that filled the cameral view. Using a material ipo,
you would adjust the Color influence of each channel at different frames,
fading one in as the previous slide faded out.
Whew! Rearranging slide and changing the timing was clunky but doable by moving the IPO keys.
The *Node* way is to create an image input, one for each slide image.
Using the Image input and Time nodes connected to an AlphaOver mixer is much simpler, clearer,
and easier to maintain.
