
**************
Map Range Node
**************

.. figure:: /images/compositing_nodes_vector_map-range.png
   :align: right

   Map Range Node.


This node allows to convert (map) an input value range into a destination range.
By default, values outside the specified input range will be proportionally mapped as well.
This node is similar to *Map Value* node but provides a more intuitive way to specify the desired output range.


Inputs
======

Value
   Standard value input.
From Min/Max
   Start/End of the input value range.
To Min/Max
   Start/End of the destination range.


Properties
==========

Clamp
   Clamps values to Min/Max of the destination range.


Outputs
=======


Value
   Standard value output.


Usage
=====

One important use case is to easily map the Z-depth channel from its original range
to a more usable range (i.e.: 0.0 - 1.0) for use as a matte for colorization or filtering operations.
