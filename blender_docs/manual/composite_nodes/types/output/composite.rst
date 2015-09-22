
*********
Composite
*********

.. figure:: /images/Tutorials-NTR-ComCompositeOut.jpg

   Composite node


The Composite node is where the actual output from the compositor is connected to the
renderer. Connecting a node to the *Composite* node will output the result of that
node's full tree to the Renderer; leaving this node unconnected will result in a blank image.
This node is updated after each render, but also if you change things in your node-tree
(provided at least one finished input node is connected).

You can connect three channels: the actual RGBA image, the Alpha image, and the Z (depth)
image.
You should only have one Composite node in your map so that only one final image is rendered
when the *Compositing* button is pressed on the Render Options Post-Processing
panel. Otherwise, unpredictable results may occur.


.. note::
   If multiple Composite nodes are added, only the active one
   (last selected, indicated with a slightly darker header) will be used.


Saving your Composite Image
===========================

The RENDER button renders a single frame or image.
Save your image using :kbd:`F3` or the *File→Save Image* menu.
The image will be saved using the image format settings on the Render panel.

To save a sequence of images, for example,
if you input a movie clip or used a Time node with each frame in its own file,
use the *ANIM* button and its settings. If you might want to later overlay them,
be sure to use an image format that supports an Alpha channel (such as PNG).
If you might want to later arrange them front to back or create a depth of field effect,
use a format that supports a Z-depth channel (such as EXR).

To save a composition as a movie clip (all frames in a single file),
use an AVI or Quicktime format, and use the *ANIM* button and its settings.
