
**********
Scale Node
**********

.. figure:: /images/Manual-Compositing_Nodes-Scale.jpg

   Scale node


This node scales the size of an image. Scaling can be either absolute or relative.
If Absolute toggle is on, you can define the size of an image by using real pixel values.
In relative mode percents are used.

For instance X: ``0.5`` and Y: ``0.5``
would produce image which width and height would be half of what they used to be.
When expanding an image greatly,
you might want to blur it somewhat to remove the square corners that might result.
Unless of course you want that effect; in which case, ignore what I just said.

Use this node to match image sizes. Most nodes produce an image that is the same size as the
image input into their top image socket. So,
if you want to uniformly combine two images of different size,
you must scale the second to match the resolution of the first.

