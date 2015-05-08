
*********
Blur Node
*********

.. figure:: /images/Tutorials-NTR-ComBlur.jpg

   Blur node


The Blur node blurs an image, using one of seven blur modes
(set using the upper-left pop-up button), and a radius defined by the X and Y number buttons.
By default these are set to zero,
so to enable the node you must set one or both to a value greater then 0.
You can optionally connect a value image to the Size input node,
to control the blur radius with a mask.
The values must be mapped between 0-1 for best effect,
as they will be multiplied with the X and Y number button values.


Options
=======

The X and Y values are the number of pixels over which to spread the blur effect.

The Bokeh button (only visible as Bok or Bo on some screen setups)
will force the blur node to use a circular blur filter. This gives higher quality results,
but is slower then using a normal filter. The Gam button (for "gamma")
makes the Blur node gamma-correct the image before blurring it.


.. figure:: /images/Tutorials-NTR-ComBlurIllustration.jpg
   :width: 650px
   :figwidth: 650px

   Blur node blur modes using 15% of image size as XY, no Bokeh/Gamma. Click expand to see details


The difference between them is how they handle sharp edges and smooth gradients and preserve
the highs and the lows.
In particular (and you may have to closely examine the full-resolution picture to see this):

Flat
   Simply blurs everything uniformly
Tent
   Preserves the high and the lows better making a linear falloff
Quadratic
   CatRom keeps sharp-contrast edges crisp.
Cubic, Mitch
   Preserve the highs but give almost a out-of-focus blur while smoothing sharp edges


Example
=======

An example blend file, in fact the one used to create the image above,
`is available here. <http://wiki.blender.org/index.php/Media:Manual-Node-Blur.blend>`__
The .blend file takes one image from the RenderLayer "Blurs" and blurs it while offsetting it (Translate)
and then combining it (AlphaOver) to build up the progressive sequence of blurs.
Play with the Value and Multiply nodes to change the amount of blurring that each algorithm does.
