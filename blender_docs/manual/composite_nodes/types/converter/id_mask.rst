
************
ID Mask Node
************

.. figure:: /images/Compositing-Node-IDMask.jpg

   ID Mask node


This node will use the Object Index pass (see RenderLayers)
to produce an anti-aliased alpha mask for the object index specified.
The mask is opaque where the object is, and transparent where the object isn't.
If the object is partially transparent, the alpha mask matches the object's transparency.
This post-process function fills in the jaggies with interpolated values.

.. note:: Object Index

   Object indices are only output from a RenderLayers node or stored in a multilayer OpenEXR format image.


.. figure:: /images/Compositing-Node-IDMask_panel.jpg

   Setting an Object Index


You can specify, for any of the objects in your scene, an Object Index as shown the right
(the currently select object has an index of 2). When rendered,
if Object Index passes are enabled, its index will be 2,
and setting the ID Mask node to 2 will show where that object is in the scene.

This node is extremely well suited to removing the aliases shown as output from the Defocus
node or DOF noodles caused by some objects being close to camera against objects far away.


Example
=======

.. figure:: /images/Compositing-Node-IDMask_ex.jpg
   :width: 300px

   Example


In this example, the left rear red cube is assigned PassIndex 1,
and the right cube PassIndex 2. Where the two cubes intersect,
there is going to be noticeable pixelation (jaggies)
because they come together at a sharp angle and are different colors.
Using the mask from object 1, which is smoothed (anti-aliased) at the edges,
we use a Mix node set on Multiply to multiply the smoothed edges against the image,
thus removing those nasty (Mick) Jaggies. Thus, being smoothed out,
the Rolling Stones gather no moss. (I really hope you get that obscure reference :)

Note that the mask returns white where the object is fully visible to the camera
(not behind anything else) and black for the part of the object that is partially or totally
obscured by a fully or partially opaque object in front of it.
If something else is in front of it,
even if that thing is partially transparent and you can see the object in a render,
the mask will not reflect that partially obscured part.
