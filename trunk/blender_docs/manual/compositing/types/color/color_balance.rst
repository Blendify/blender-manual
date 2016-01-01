
*************
Color Balance
*************

The Color Balance node can adjust the color and values of an image using two different
correction formulas.

.. figure:: /images/compositing_nodes_colorbalance.png

   Bright/Contrast Node

The *Lift, Gammma, Gain* formula uses *Lift*, *Gamma*, and
*Gain* calculations to adjust an image. *Lift* increases the value of dark
colors, *Gamma* will adjust midtones, and *Gain* adjusts highlights.

The *Offset, Power, Slope* formula uses *Offset*, *Power*,
and *Slope*: ``out = (i * s + o) ^ p``

where:

``out``
   The color graded pixel code value.
``i``
   The input pixel code value (0=black, 1=white).
``s``
   Slope (any number 0 or greater, nominal value is 1.0).
``o``
   Offset (any number, nominal value is 0).
``p``
   Power (any number greater than 0, nominal value is 1.0).

Factor
   Controls the amount of influence the node exerts on the output image
