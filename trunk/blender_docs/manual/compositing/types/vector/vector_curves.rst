.. Editors Note: This page gets copied into render/cycles/nodes/types/vector/curves
.. Editors Note: This page gets copied into render/blender_render/materials/nodes/types/vector/curves

******************
Vector Curves Node
******************

.. figure:: /images/compositing_nodes_vectorcurves.png
   :align: right
   :width: 150px

   Vector Curves Node.

The Vector Curves node maps an input vector components to a curve.

Use this curve node to slow things down or speed them up from the original scene.

Input
=====

In the shader context the node also has an additional Factor property.

Fac
   Controls the amount of influence the node exerts on the output vector.
Vector
   Standard vector input.


Properties
==========

Channel
   X, Y, Z
Curve
   For the curve controls see: :ref:`Curve widget <ui-curve_widget>`.

Output
======

Vector
   Standard vector output.

