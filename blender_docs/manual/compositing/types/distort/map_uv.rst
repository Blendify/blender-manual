
***********
Map UV Node
***********

.. figure:: /images/compositing_nodes_mapuv.png
   :align: right
   :width: 150px

   Map UV Node

So, I think we all agree that the problem is...we just don't know what we want.
The same is true for directors. Despite our best job texturing our models, in post-production,
inevitably the director changes their mind. "Man, I really wish he looked more ragged.
Who did makeup, anyway?" comes the remark.
While you can do quite a bit of coloring in post-production, there are limits. Well, now this
little node comes along and you have the power to **re-texture your objects** *after* **they
have been rendered**. Yes, you read that right; it's not a typo and I'm not crazy. At least,
not today.

Using this node (and having saved the UV map in a multilayer OpenEXR format image sequence),
you can apply new flat image textures to all objects
(or individual objects if you used the very cool
:doc:`ID Mask Node </composite_nodes/types/converter/id_mask>` to enumerate your objects) in the scene.

Thread the new UV Texture to the Image socket,
and the UV Map from the rendered scene to the UV input socket.
The resulting image is the input image texture distorted to match the UV coordinates. That
image can then be overlay mixed with the original image to paint the texture on top of the
original.
Adjust alpha and the mix factor to control how much the new texture overlays the old.

Of course, when painting the new texture,
it helps to have the UV maps for the original objects in the scene,
so keep those UV texture outlines around even after all shooting is done.

Examples
========

In the example below,
we have overlaid a grid pattern on top of the two Emo heads after they have been rendered.
During rendering, we enabled the UV layer in the RenderLayer tab (Buttons window,
Render Context, RenderLayer tab). Using a mix node,
we mix that new UV Texture over the original face.
We can use this grid texture to help in any motion tracking that we need to do.

.. figure:: /images/Compositing-Node-MapUV_ex.jpg
   :width: 300px

   Adding a Grid UV Textures for Motion Tracking


In the next example, we overlay a flag on top of a cubie-type thing,
and we ensure that we Enable the Alpha pre-multiply button on the Mix node.
The flag is used as additional UV Texture on top of the grid. Other examples include the
possibility that we used an unauthorized product box during our initial animation,
and we need to substitute in a different product sponsor after rendering.

Of course, this node does NOT give directors the power to rush pre-production rendering under
the guise of "we'll fix it later", so maybe you don't want to tell them about this node.
Let's keep it to ourselves for now.

.. figure:: /images/Compositing-Node-MapUV_ex02.jpg
   :width: 300px

   Adding UV Textures in Post-Production
