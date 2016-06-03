
**********************
Combine/Separate Nodes
**********************

All of these nodes do essentially the same thing:

- Separate: Split out an image into its composite color channels.
- Combine: Re/combine an image from it is composite color channels.

This nodes could be use this to manipulate on each color channel independently.
Each type is differentiate in the applied :term:`color space`.
Each format supports the Alpha channel.

The Combine nodes could also be used to input single color values.
For RGBA and HSVA it is recommended to use the :doc:`/compositing/types/input/rgb`.
Some common operation could easier executed with the  :doc:`/compositing/types/color/index`.


Separate/Combine RGBA Node
==========================

.. figure:: /images/compositing_nodes_combinergba.png
   :align: right
   :width: 150px

   Combine RGBA Node.

.. figure:: /images/compositing_nodes_separatergba.png
   :align: right
   :width: 150px

   Separate RGBA Node.


Input/ Output
-------------

Image
   Standard image in/output.
R
   Red (0 to 1). Default of 0.
G
   Green (0 to 1). Default of 0.
B
   Blue (0 to 1). Default of 0.
A
   Alpha (0 to 1). Default of 1.


Properties
----------

This node has no properties.


Examples
--------

.. figure:: /images/Compositing-Covert-CombineRGBA.jpg
   :width: 200px

   Separate RGBA Node.


In this first example, we take the Alpha channel and blur it,
and then combine it back with the colors. When placed in a scene,
the edges of it will blend in, instead of having a hard edge.
This is almost like anti-aliasing but in a three-dimensional sense.
Use this noodle when adding CG elements to live action to remove any hard edges.
Animating this effect on a broader scale will make the object appear to "phase" in and out,
as an "out-of-phase" time-traveling sync effect.

.. figure:: /images/Compositing-Covert-CombineRGBA2.jpg
   :width: 200px

In this node set up, we make all the reds become green,
and all the green both Red and Blue, and remove Blue from the image completely.


Separate/Combine HSVA Nodes
===========================

.. figure:: /images/compositing_nodes_combinehsva.png
   :align: right
   :width: 150px

   Combine HSVA Node.

.. figure:: /images/compositing_nodes_separatehsva.png
   :align: right
   :width: 150px

   Separate HSVA Node.


Input/ Output
-------------

Image
   Standard image in/output.
H
   Hue (0 to 1). Default of 0.
S
   Saturation (0 to 1). Default of 0.
V
   Value (0 to 1). Default of 0.
A
   Alpha (0 to 1). Default of 1.


Properties
----------

This node has no properties.


Separate/Combine YUVA Node
==========================

.. figure:: /images/compositing_nodes_combineyuva.png
   :align: right
   :width: 150px

   Combine YUVA Node.

.. figure:: /images/compositing_nodes_separateyuva.png
   :align: right
   :width: 150px

   Separate YUVA Node.


Input/ Output
-------------

Image
   Standard image in/output.
Y
   Red (0 to 1). Default of 0.
U
   Green (0 to 1). Default of 0.
V
   Blue ( 0 to 1). Default of 0.
A
   Alpha (0 to 1). Default of 0.


Properties
----------

This node has no properties.


Separate/Combine YCbCrA Node
============================

.. figure:: /images/compositing_nodes_combineycbcra.png
   :align: right
   :width: 150px

   Combine YCbCrA Node

.. figure:: /images/compositing_nodes_separateycbcra.png
   :align: right
   :width: 150px

   Separate YCbCrA Node.


Input/ Output
-------------

Image
   Standard image in/output.
Mode
   ITU 601, ITU 709, Jpeg
Y
   Luminance (0 to 1) (black to white). Default of 0.
Cb
   Chrominance Blue (0 to 1) (blue to yellow). Default of 0.
Cr
   Chrominance Red (0 to 1) (red to yellow). Default of 0.
A
   Alpha (0 to 1). Default of 1.


Properties
----------

This node has no properties.

.. tip::

   If running these channels through a ColorRamp to adjust value,
   use the Cardinal scale for accurate representation.
   Using the Exponential scale on the luminance channel gives high-contrast effect.

