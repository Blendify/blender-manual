
************
ID Mask Node
************

.. figure:: /images/compositing_nodes_idmask.png
   :align: right
   :width: 150px

   ID Mask Node.


This node can be used to access an alpha mask per object or per material.

Inputs
======

ID value
   Input for the *Object Index* or *Material Index* render pass.
   Which is an output of the :doc:`RenderLayers node </compositing/types/input/render_layers>` or
   the :doc:`Image node </compositing/types/input/render_layers>` with a multilayer format.


Properties
==========

Index
   Selection of the preciously specified index.
Anti-Aliased
   This post-process function refines the mask. See :term:`anti-aliasing`.


Outputs
=======

Alpha
   The mask is white where the object is and black where it is not.
   If the object is transparent, the alpha mask represent that with gray values.

.. note::

   In Blender Internal if a transparent object in front of another,
   the mask will not reflect partial visibility of the object behind.


Setup
=====

.. figure:: /images/editors_3dview_navigating-layers-relations.png

   Object Pass Index.

An index can be specify for any object or material in the scene.
The Object Index can be set in Properties Editor :menuselection:`Object --> Relations --> Pass Index` and
:menuselection:`Material --> Options --> Pass Index` for the Material Index.
To be accessible after rendering, the Object Index "IndexOb"  or
Material Index "IndexMa" render pass has to be enabled.


Example
=======

.. figure:: /images/compositing_nodes_converter_id-mask_example.png

   Example.

In this example, the left rear red cube is assigned PassIndex 1, and the right cube PassIndex 2.
Where the two cubes intersect, there is going to be noticeable pixelation because they come together
at a sharp angle and are different colors. Using the mask from object 1,
which is smoothed (antialiased) at the edges, we use a *Mix Node* set on *Multiply*
to multiply the smoothed edges of the image, thus removing those nasty lines, thus, being smoothed out.

