
******************
Color Balance Node
******************

The Color Balance node can adjust the color and values of an image.

.. figure:: /images/compositing_nodes_color_color-balance.png

   Bright/Contrast Node.

Inputs
======

Factor
   Controls the amount of influence the node exerts on the output image
Color
   Standard image input.


Properties
==========

Two different correction formulas could be selected.

Lift/Gamma/Gain
   Lift
      Increases the value of dark colors.
   Gamma
      Will adjust midtones.
   Gain
      Adjusts highlights.

Offset/Power/Slope (ASC-CDL)
   Offset
      Summand.
   Power
      Over all exponent.
   Slope
      Multiplier.


Outputs
=======

Color
   Standard output image.

Advanced
========

The Offset/Power/Slope formula
------------------------------

*out* = (*i* × *s* + *o*)\ :sup:`p`

where:

- *out*: The color graded pixel code value.
- *i*: The input pixel code value (0 to 1) (black to white).
- *s*: Slope (any number 0 or greater, nominal value is 1.0).
- *o*: Offset (any number, the nominal value is 0).
- *p*: Power (any number greater than 0, nominal value is 1.0).

