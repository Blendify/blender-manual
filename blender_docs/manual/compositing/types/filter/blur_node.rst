
*********
Blur Node
*********

.. figure:: /images/compositing_nodes_filter_blur.png
   :align: right

   Blur Node.

The Blur node blurs an image, providing several blur modes.


Inputs
======

Image
   Standard image input.
Size
   The optional Size input will be multiplied with the X and Y blur radius values.
   It accepts also a value image, to control the blur radius with a mask.
   The values should be mapped between (0 to 1) for an optimal effect.


Properties
==========

Type
   The difference between the types is in the way they handle sharp edges, smooth gradients and
   preserve the highs and the lows.

   Flat
      Simply blurs everything uniformly.
   Tent
      Preserves the high and the lows better by making a linear falloff.
   Quadratic
      TODO
   Cubic
      Preserve the highs, but give an almost out-of-focus blur while smoothing sharp edges.
   Gaussian
      TODO
   Fast Gaussian
      An approximation of the Gaussian.
   Catmull-Rom
      Catmull-Rom keeps sharp contrast edges crisp.
   Mitch
      Preserve the highs, but give an almost out-of-focus blur while smoothing sharp edges.

Variable Size
   Allows a variable blur radius, if the size input is an image.

   Bokeh
      The Bokeh button will force the blur node to use a circular blur filter.
      This gives higher quality results, but is slower than using a normal filter.
Gamma
   The Gamma button applies a gamma correction on the image before blurring it.
Relative
   Percentage Value of the blur radius relative to the image size.

   Aspect Correction
      None, Y, X
X, Y
   Values set the ellipsoid radius in numbers of pixels over which to spread the blur effect.
Extend Bounds
   Allows the image, that is being blurred, to extend past its original dimension.


Outputs
=======

Image
   Standard image output.


Example
=======

.. figure:: /images/tutorials-ntr-comblurillustration.jpg

   Blur node blur modes using 20% of image size as XY, no Bokeh/Gamma.


An example blend-file, in fact, the one used to create the image above,
`is available here. <https://wiki.blender.org/index.php/Media:Manual-Node-Blur.blend>`__.
The blend-file takes one image from the Render Layer node "Blurs" and blurs it while offsetting it *Translate*
and then combining it *Alpha Over* to build up the progressive sequence of blurs.
Play with the Value and Multiply nodes to change the amount of blurring that each algorithm does.
