
*********
Time Node
*********

.. figure:: /images/compositing_nodes_time.png
   :align: right
   :width: 150px

   Time Node.

Input
=====

This node has no input sockets.

Properties
==========

Curve
   The Y-value defined by the curve is the factor output. 
   For the curve controls see: :ref:`Curve widget <ui-color_ramp_widget>`.

   .. tip::

      Flipping the curve around reverses the time input, but
      doing so is easily overlooked in the node setup.

Start, End
   Start frame and End frame of the range of time specifying the values
   the output should last. This range becomes the X-axis of the graph.
   The time input could be reversed by specifying a start frame greater than the end frame.

Output
======

Fac
   A speed of time factor (from 0.00 to 1.00) relative to the frame rate 
   defined in the :ref:`Render Dimensions Panel <render_output-dimensions>`. 
   The factor changes according to the defined curve.


.. hint:: Output values

   The :doc:`Map Value </compositing/types/vector/map_value>`
   node can be used to map the output to a more appropriate value.
   With sometimes curves, it is possible that the Time node may output a number larger than one or less than zero.
   To be safe, use the Min/Max clamping function of the Map Value node to limit output.


Examples
========

.. figure:: /images/Compositing-Time.jpg

   Time controls from left to right: no effect, slow down, freeze, accelerate, reverse

