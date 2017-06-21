.. _bpy.types.CompositorNodePremulKey:

******************
Alpha Convert Node
******************

.. figure:: /images/compositing_nodes_converter_alpha-convert.png
   :align: right

   Alpha Convert Node.

The *Alpha Convert Node* converts the alpha channel interpretation of an image.

Inputs
======

Image
   Standard image input.


Properties
==========

Mapping
   Straight to Premul, Premul to Straight
      Conversion in both directions. Premul. stands for Premultiplied.
      For details on the difference between both way to store alpha values see :term:`Alpha Channel`.


Outputs
=======

Image
   Standard image output.
