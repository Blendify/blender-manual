
..    TODO/Review: {{review|copy=X}} .

*****************
Dilate/Erode Node
*****************

.. figure:: /images/Compositing_Nodes-Dilate_Erode.jpg

   Dilate/Erode node


This node blurs individual color channels. The color channel (or a black and white image)
is connected to the *Mask* input socket,
and the *Distance* is set manually (by clicking on the arrows or the value)
or automatically from a value node or a time-and-map-value noodle. A positive value of
*Distance* expands the influence of a pixel on its surrounding pixels,
thus blurring that color outward. A negative value erodes its influence,
thus increases the constrast of that pixel relative to its surrounding pixels,
thus sharpening it relative to surrounding pixels of the same color.


Example
=======

.. figure:: /images/Compositing_Nodes-Dilate_ex.jpg
   :width: 300px
   :figwidth: 300px

   Magenta tinge


In the above example image,
we wanted to take the rather boring array of ball bearings and spruce it up; make it hot,
baby. So, we dilated the red and eroded the green, leaving the blue alone.
If we had dilated both red and green...(hint: red and green make yellow).
The amount of influence is increased by increasing the *Distance* values.
`Blend file available here. <http://wiki.blender.org/uploads/5/51/Derotest.blend>`__
