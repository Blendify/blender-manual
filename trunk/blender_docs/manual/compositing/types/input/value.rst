.. _bpy.types.CompositorNodeValue:
.. Editors Note: This page gets copied into :doc:`</render/cycles/nodes/types/input/value>`
.. Editors Note: This page gets copied into :doc:`</render/blender_render/materials/nodes/input/value>`

.. --- copy below this line ---

**********
Value Node
**********

.. figure:: /images/compositing_types_input_value_node.png
   :align: right

   Value Node.

The *Value Node* is a simple node to input numerical values to other nodes in the tree.


Inputs
======

This node has no input sockets.


Properties
==========

Single numerical value (floating point).


Outputs
=======

Value
   The value set in the options.


Example
=======

In the example below the *Value Node* is used to control multiple values at once,
this make the node a useful organizational tool.

.. figure:: /images/compositing_types_input_value_example.jpg

   Example of the *Value Node*.

.. tip::

   From this you can also make different values proportional to each other by adding
   a :doc:`Math Node </compositing/types/converter/math>` in between the different links.
