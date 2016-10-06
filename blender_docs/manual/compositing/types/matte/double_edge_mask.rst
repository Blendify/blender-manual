
****************
Double Edge Mask
****************

.. figure:: /images/compositing_nodes_doubleedgemask.png
   :align: right
   :width: 150px

   Double Edge Mask Node.


The *Double Edge Mask* node creates a gradient between two masks.


Inputs
======

Inner Mask
   A mask representing the inside shape, which will be fully white.
Outer Mask
   A mask representing the outside shape, which will fade from black at its edges
   to white at the *Inner Mask*.


Properties
==========

Inner Edge
   All
      All shapes in the *Inner Mask* contribute to the gradient, even ones that do
      not touch the *Outer Mask* shape.
   Adjacent Only
      Only shapes in the *Inner Mask* that overlap with the *Outer Mask* contribute
      to the gradient.

   .. list-table::

      * - .. figure:: /images/compositing_nodes_double_edge_all.png

             All.

        - .. figure:: /images/compositing_nodes_double_edge_adjacent.png

             Adjacent Only.



Buffer Edge
   Keep In
      Parts of the *Outer Mask* that touch the edge of the image are treated as if
      they stop at the edge.
   Bleed Out
      Parts of the *Outer Mask* that touch the edge of the image are extended
      beyond the boundary of the image.

   .. list-table::

      * - .. figure:: /images/compositing_nodes_double_edge_in.png

             Keep In.

        - .. figure:: /images/compositing_nodes_double_edge_bleed.png

             Bleed Out.

Outputs
=======

Mask
   Standard mask output.


.. rubric:: Demo Video

.. youtube:: VcjEfoNIHZs
