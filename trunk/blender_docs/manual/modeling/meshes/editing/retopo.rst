
.. NOTE: This page could document a workflow which is handled by tools documented elsewhere.
         it could also be completely removed.


**************
Retopologizing
**************

Retopology is a common part of modeling workflows. Often times,
a model is created with emphasis on form and detail, however, its topology,
or edge flow is not ideal, or the mesh is very dense, and not efficient.
Modelers can create a new lower resolution mesh that matches the form of the original mesh.


Mesh Snapping
=============

By enabling snapping, and setting the snap element to Face,
mesh vertices will be projected onto the closest surface in the viewport,
in the view's Z-axis.

This allows you to model freely, without concern for form, and to focus on topology

See :doc:`Snapping </getting_started/basics/transformations/transform_control/snap>`


Shrinkwrap Modifier
===================

The :doc:`Shrinkwrap Modifier </modifiers/deform/shrinkwrap>` is useful in conjunction with face snapping.
If edits to the new mesh have been made with snapping disabled,
the shrinkwrap modifier will allow you to stick the new mesh to the old mesh, as if you were shrinkwrapping it.


