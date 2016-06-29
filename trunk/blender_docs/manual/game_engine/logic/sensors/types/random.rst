
*************
Random Sensor
*************

.. figure:: /images/BGE_Sensor_Random.jpg
   :width: 300px

   Random sensor.


The *Random* sensor generates random pulses.


See :doc:`Sensor Common Options </game_engine/logic/sensors/common_options>` for common options.

Special Options:

*Seed*
This field to enter the initial seed for the random number algorithm. (Range 0-1000).


.. note::

   0 is not random, but is useful for testing and debugging purposes.

.. note::
   If you run several times with the same Seed, the sequence of intervals you get will be the same in each run,
   although the intervals will be randomly distibuted.
