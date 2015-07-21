
***************
Chroma Key Node
***************

.. figure:: /images/chromakey_node.jpg

   Chroma Key node


The *Chroma Key* node determines if a pixel is foreground or background
(and thereby should be transparent) based on its chroma values.
This is useful for compositing images that have been shot in front of a green or blue screen.

There is one input to this node, the *Image* that is to be keyed.

Control this node using:

Green / Blue buttons
   Basic selection of what color the background is supposed to be.
Cb Slope and Cr Slope (chroma channel) sliders
   Determines how quickly the processed pixel values go from background to foreground, much like falloff.
Cb Pos and Cr Pos sliders
   Determines where the processing transition point for foreground and background is in the respective channel.
Threshold
   Determines if additional detail is added to the pixel if it is transparent.
   This is useful for pulling shadows from an image even if they are in the green screen area.
Alpha threshold
   The setting that determines the tolerance of pixels that
   should be considered transparent after they have been processed.
   A low value means that only pixels that are considered totally transparent will be transparent,
   a high value means that pixels that are mostly transparent will be considered transparent.

The outputs of this node are the *Image* with an alpha channel adjusted for the
keyed selection and a black and white *Matte* (i.e the alpha mask).
