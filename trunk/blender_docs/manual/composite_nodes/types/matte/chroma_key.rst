
***************
Chroma Key Node
***************

.. figure:: /images/chromakey_node.jpg

   Chroma Key node


The *Chroma Key* node determines if a pixel is foreground or background
(and thereby should be transparent) based on its chroma values.
Use this, for example, to composite images that have been shot in front of a green or blue screen.

Inputs:

Image
   that is to be keyed.
Key Color
   the background color usually selected using the color picker and the original image.

Control this node using:

Acceptance
   An angle on the color wheel that represents how tolerant the keying color is. Larger angles allow for larger 
   variation in the keying color to be considered background pixels.
Cutoff
   controls the level that is considered pure background. Higher cutoff levels means more pixels will be 
   100% transparent if they are within the angle tolerance.
Falloff
   Increase to make nearby pixels partially transparent producing a smoother blend along the edges.


  
Outputs are:

Image
   with its alpha channel adjusted for the keyed selection
Matte
   a monochrome representation of the mask
