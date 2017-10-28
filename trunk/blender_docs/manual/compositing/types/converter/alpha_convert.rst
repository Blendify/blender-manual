.. _bpy.types.CompositorNodePremulKey:

******************
Alpha Convert Node
******************

.. figure:: /images/compositing_types_converter_alpha-convert_node.png
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
      For details on the difference between both ways to store alpha values see :term:`Alpha Channel`.


Outputs
=======

Image
   Standard image output.
