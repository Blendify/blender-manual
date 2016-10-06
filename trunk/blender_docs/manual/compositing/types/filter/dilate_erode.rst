..    TODO/Review: {{review|copy=X}}.

*****************
Dilate/Erode Node
*****************

.. figure:: /images/compositing_nodes_delateerode.png
   :align: right
   :width: 150px

   Dilate/Erode Node.


This node provides a morphology (mathematical shape analysis) filter.


Inputs
======

Mask
   Single color channel (or a black and white image) input.


Properties
==========

Mode
   Step, Threshold, Distance, Feather
Distance
   The Distance is the filter radius.
   A *positive* value of Distance dilate (expands) the influence of a pixel on its surrounding pixels.
   A *negative* value erodes (shrinks) its influence.


Outputs
=======

Mask
   The filtered mask output.


Example
=======

In this example image,
we wanted to take the rather boring array of ball bearings and spruce it up; make it hot,
baby. So, we dilated the red and eroded the green, leaving the blue alone.
If we had dilated both red and green... (hint: red and green make yellow).
The amount of influence is increased by increasing the *Distance* values.
`Blend file available here. <https://wiki.blender.org/uploads/5/51/Derotest.blend>`__.

.. figure:: /images/compositing_nodes-dilate_ex.jpg
