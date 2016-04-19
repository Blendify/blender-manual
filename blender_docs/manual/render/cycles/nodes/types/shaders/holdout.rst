
.. _cycles_shader_holdout:

*******
Holdout
*******

The holdout shader creates a "hole" in the image with zero alpha
transparency, which is useful for compositing (see :term:`alpha channel`).

Note that the holdout shader can only create alpha when
:menuselection:`Properties --> Render --> Film --> Transparent` is enabled.
If it's disabled, the holdout shader will be black.

Holdout output
   Holdout shader.


.. figure:: /images/cycles_nodes_shader_holdout.jpg

   The checkered area is a region with zero alpha.
