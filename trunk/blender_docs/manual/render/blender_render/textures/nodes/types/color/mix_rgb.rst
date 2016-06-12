
***
Mix
***

.. figure:: /images/texture-nodes-color-mix.jpg

   mix node.


This node mixes a base color or image (threaded to the top socket)
together with a second color or image (bottom socket)
by working on the individual and corresponding pixels in the two images or surfaces.
The way the output image is produced is selected in the drop-down menu. The size
(output resolution) of the image produced by the mix node is the size of the base image.
The alpha and Z channels (for compositing nodes) are mixed as well.

.. seealso::

   :term:`Color Blend Modes` for details on each blending mode.


.. note:: Color Channels

   There are two ways to express the channels that are combined to result in a color: RGB or HSV.
   RGB stands for the Red,Green,Blue pixel format,
   and HSV stands for Hue,Saturation,Value pixel format.


Clamp
   Clamps the result of the mix operation between 0 and 1.
   Some of the mix types can produce reults above 1 even if the inputs are both between 0 and 1, such as Add.

Factor
   The amount of mixing of the bottom socket is selected by the Factor input field (Fac:).
   A factor of zero does not use the bottom socket, whereas a value of 1.0 makes full use.
   In Mix mode, 0.5 is an even mix between the two, but in Add mode,
   0.5 means that only half of the second socket's influence will be applied.

