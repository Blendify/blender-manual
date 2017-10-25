.. _bpy.types.RandomActuator:

***************
Random Actuator
***************

The *Random Actuator* sets a random value into a property of the object.

.. figure:: /images/game-engine_logic_actuators_types_random_bool-constant.jpg
   :width: 271px

   Random Actuator.


Properties
==========

See :doc:`Actuator Common Options </game_engine/logic/actuators/common_options>` for common options.

Seed
   Starting seed for random generator.


Distribution
------------

Distributions from which to select the random value. The default entry of *Boolean Constant*
gives either True or False, which is useful for test purposes.

Each distribution has one common property called: *Property*.
This can be either a float, interger, or a boolean depending on the distribution type.

Float Neg. Exp.
   Values drop off exponentially with the specified half-life time.

   Half-Life Time
      Half-life time.
Float normal
   Random numbers from a normal distribution.

   Mean
      Mean of normal distribution.
   SD
      Standard deviation of normal distribution.
Float uniform
   Random values selected uniformly between a minimum (*Min*) and maximum (*Max*) values.
Float constant
   Returns a constant value specified in the *Value* field.
Int Poisson
   Random numbers from a `Poisson distribution <https://en.wikipedia.org/wiki/Poisson_distribution>`.
   The mean of the equation is defined by the *Mean* value.
Int uniform
   Random values selected uniformly between a minimum (*Min*) and maximum (*Max*) values.
Int constant
   Returns a constant value specified by the *Value* field.
Bool Bernoulli
   Returns a random distribution using the `Bernoulli distribution
   <https://en.wikipedia.org/wiki/Bernoulli_distribution>`__ with specified ratio of TRUE pulses.
   This ratio is calcualted by the *Chance* value.
Bool uniform
   A 50/50 chance of obtaining True/False.
Bool constant
   Returns a constant value specified in the value field, must be either ``True`` or ``False``.


Example
=======

TODO.
