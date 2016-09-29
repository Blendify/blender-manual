.. |pivot-icon| image:: /images/editors_3dview_header-pivot-point.jpg

************
Median Point
************

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode and Edit Mode
   | Menu:     Select from the |pivot-icon| icon in the 3D View header.
   | Hotkey:   :kbd:`Ctrl-,`


The Median Point can be considered to be broadly similar to the concept of Center
of Gravity (COG). If we assume that every element (Object, face, vertex etc)
of the selection has the same mass,
the median point would sit at the point of equilibrium for the selection (the COG).


In Object Mode
==============

In Object Mode, Blender only considers the Object centers when determining the median point.
This can lead to some counterintuitive results. In the Fig. :ref:`fig-view3d-median-point-object-mode` below,
you can see that the median point is between the Object centers and can be nowhere near the
Objects' mesh.

.. _fig-view3d-median-point-object-mode:

.. figure:: /images/editors_3dview_transform_control-pivot_point-median_point-median-point-objects.jpg

   Median points in Object Mode.

   The Median point is indicated by the yellow dot.


In Edit Mode
============

In Edit Mode,
the median point is determined via the part of the selection that has the most elements.
For example, in the Fig. :ref:`fig-view3d-median-point-edit-mode`,
when there are two cubes with an equal number of vertices,
the median point lies directly between the two cubes. However,
if we subdivide one cube multiple times so that it has many more vertices,
you can see that the median point has shifted to the region with the most vertices.

.. _fig-view3d-median-point-edit-mode:

.. figure:: /images/editors_3dview_transform_control-pivot_point-median_point-median-point-vertices.jpg

   Median points in Edit Mode.

   The Median point is indicated by the yellow dot.
