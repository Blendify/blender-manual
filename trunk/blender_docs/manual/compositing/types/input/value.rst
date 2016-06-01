
**********
Value Node
**********

.. figure:: /images/compositing_nodes_value.png
   :align: right
   :width: 150px

   Value Node.


The *Value Node* is a simple node to input numerical values to other nodes in the tree.


Options
=======

Single numerical value (floating point).


Output
======

Value
   The value set in the options. 


Example
=======

In the example below the *Value Node* is used to control multiple values at once,
this make the node a useful organizational tool.

.. figure:: /images/composite_node_value_example.png

   Example of the *Value Node*

.. tip::

   From this you can also make different values proportional to each other by adding a
   :doc:`Math Node </compositing/types/converter/math>` in between the different links.
