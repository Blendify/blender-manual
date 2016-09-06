.. Editors Note: This page gets copied into
   :doc:`</render/cycles/nodes/types/converter/combine_separate>`
.. Editors Note: This page gets copied into
   :doc:`</render/blender_render/materials/nodes/types/converter/combine_separate>`
.. Editors Note: This page gets copied into
   :doc:`</render/blender_render/textures/nodes/types/converter/combine_separate>`
.. TODO Cycles vector (XYZ) nodes

**********************
Combine/Separate Nodes
**********************

All of these nodes do essentially the same thing:

- Separate: Split out an image into its composite color channels.
- Combine: Re/combine an image from it is composite color channels.

This nodes could be use this to manipulate on each color channel independently.
Each type is differentiate in the applied :term:`color space`.

In compositing and texture context each node supports the Alpha channel.
In the texture context only RGB color space is available.
In the shading context of the Blender internal adds HSV and
the Cycles shading context offers an additional pair of nodes to combine/separate a vector (XYZ).

The Combine nodes could also be used to input single color values.
For RGBA and HSVA color spaces it is recommended to use the :doc:`/compositing/types/input/rgb`.
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

- R (Red)
- G (Green)
- B (Blue)
- A (Alpha)


Properties
----------

This node has no properties.


Examples
--------

.. figure:: /images/compositing-covert-combinergba.jpg
   :width: 200px


In this first example, we take the Alpha channel and blur it,
and then combine it back with the colors. When placed in a scene,
the edges of it will blend in, instead of having a hard edge.
This is almost like anti-aliasing but in a three-dimensional sense.
Use this node setup, when adding CG elements to live action to remove any hard edges.
Animating this effect on a broader scale will make the object appear to "phase" in and out,
as an "out-of-phase" time-traveling sync effect.

.. figure:: /images/compositing_nodes_converter_combine-separate_rgba-example-2.jpg


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

- H (Hue)
- S (Saturation)
- V (Value)
- A (Alpha)


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

- Y (Luminance)
- U (U chrominance)
- V (V chrominance)
- A (Alpha)


Properties
----------

This node has no properties.


Separate/Combine YCbCrA Node
============================

.. figure:: /images/compositing_nodes_combineycbcra.png
   :align: right
   :width: 150px

   Combine YCbCrA Node.

.. figure:: /images/compositing_nodes_separateycbcra.png
   :align: right
   :width: 150px

   Separate YCbCrA Node.


Input/ Output
-------------

Image
   Standard image in/output.

- Y (Luminance)
- Cb (Chrominance Blue)
- Cr (Chrominance Red)
- A (Alpha)


Properties
----------

Mode
   ITU 601, ITU 709, Jpeg


.. tip::

   If running these channels through a ColorRamp to adjust value,
   use the Cardinal scale for accurate representation.
   Using the Exponential scale on the luminance channel gives high-contrast effect.
