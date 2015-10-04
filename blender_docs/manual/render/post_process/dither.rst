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
