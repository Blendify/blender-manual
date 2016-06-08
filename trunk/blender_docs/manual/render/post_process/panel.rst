
*********************
Post Processing Panel
*********************

The Post Processing panel is use to control different option used to process your image after rendering.
It can be found in the render context of the :doc:`Properties Editor </editors/properties/introduction>`.

.. figure:: /images/render_post_panel.png
   :align: right

   Post Processing Panel.

Compositing
   Use compositing for the final image.
Sequencer
   If sequencer strips are used render them instead of an image.


Dithering
=========

Dithering is a technique for blurring pixels to prevent banding that is seen in areas of
gradients, where stair-stepping appears between colors.
Banding artifacts are more noticeable when gradients are longer, or less steep.
Dithering was developed for graphics with low bit depths,
meaning they had a limited range of possible colors.

Dithering works by taking pixel values and comparing them with a threshold and neighboring
pixels then does calculations to generate the appropriate color. Dithering creates the
perceived effect of a larger color palette by creating a sort of visual color mixing.
For example, if you take a grid and distribute red and yellow pixels evenly across it,
the image would appear to be orange.

The *Dither* value ranges from 0 to 2.

.. note::

   When using *Blender Internal* Render you get a few more options and these are discussed
   :doc:`here </render/blender_render/post_processing/index>`.
