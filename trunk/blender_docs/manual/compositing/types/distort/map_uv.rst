
***********
Map UV Node
***********

.. figure:: /images/compositing_nodes_mapuv.png
   :align: right
   :width: 150px

   Map UV Node.

With this node objects can be "re-textured" after they have been rendered. 

To apply a texture to individual enumerated objects the 
:doc:`ID Mask Node </compositing/types/converter/id_mask>` could be used.

Inputs
======

Image
   The new 2D Texture.
UV
   The input for UV render pass. 
   See :doc:`Cycles render passes </render/cycles/settings/passes>` or
   :doc:`Blender internal render passes </render/blender_render/passes>`.

.. hint::

   To store the UV pass a multilayer OpenEXR format could be used.

Properties
==========

Alpha
   Alpha control how much the new texture overlays the old.


Outputs
=======

Image
   The resulting image is the input image texture distorted to match the UV coordinates.
   That image can then be overlay mixed with the original image to paint 
   the texture on top of the original.


.. hint::

   When painting the new texture,
   it helps to have the UV maps for the original objects in the scene,
   it is recommended to keep those UV texture outlines around even, when shooting is done.


Examples
========

In the example below,
we have overlaid a grid pattern on top of the two "Emo" heads after they have been rendered.
During rendering, we enabled the UV layer in the Properties editor
:menuselection:`Render Layer --> Passes`. Using a mix node,
we mix that new UV Texture over the original face.
We can use this grid texture to help in any motion tracking that we need to do.

.. figure:: /images/compositing-node-mapuv_ex.jpg
   :width: 300px

   Adding a Grid UV Textures for Motion Tracking.


In the next example, we overlay a flag on top of a cubie-type thing,
and we ensure that we Enable the Alpha pre-multiply button on the Mix node.
The flag is used as additional UV Texture on top of the grid. Other examples include the
possibility that there was used an unauthorized product box during the initial animation,
and it is needed to substitute in a different product sponsor after rendering.

.. hint:: 

   Due to limits of this node, it is not recommended rush pre-production rendering under
   the guise of "fixing it later".

.. figure:: /images/compositing-node-mapuv_ex02.jpg
   :width: 300px

   Adding UV Textures in Post-Production
