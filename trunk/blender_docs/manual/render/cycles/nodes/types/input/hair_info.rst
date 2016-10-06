
**************
Hair Info Node
**************

.. figure:: /images/cycles_nodes_hair-info.png
   :align: right

   Hair Info Node.

The *Hair Info* node gives access to :doc:`Hair </physics/particles/hair/index>` information.


Inputs
======

This node has no inputs.


Properties
==========

This node has no properties.


Outputs
=======

Is Strand
   Returns 1 when the shader is acting on a strand, otherwise 0.
Intercept
   The point along the strand where the ray hits the strand (1 at the tip and 0 at the root).
Thickness
   The thickness of the strand at the point where the ray hits the strand.
Tangent Normal
   Tangent normal of the strand.
