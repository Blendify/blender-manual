
*********
Math Node
*********

.. figure:: /images/material-convertor-node-math.jpg

   Math node.


This node performs the selected math operation on an image or buffer.
All common math functions are supported. If only an image is fed to one Value socket, the math
function will apply the other Value consistently to every pixel in producing the output Value.
Select the math function by clicking the up-down selector where the "Add" selection is shown.


Inputs
======

Value
   Input value 1 (upper). The value can be provided by another node or set manually.
Value
   Input value 2 (lower). The value can be provided by another node or set manually.


Outputs
=======

Value
   Output value, converted by the node.


Controls
========

Clamp
   Clamps the result between 0 and 1.

Operation
   Selector the math function for conversion.

   Add
      Add the two inputs
   Subtract
      Subtract input 2 from input 1
   Multiply
      Multiply the two inputs
   Divide
      Divide input 1 by input 2
   Sine
      The sine of input 1 (degrees)
   Cosine
      The cosine of input 1 (degrees)
   Tangent
      The tangent of input 1 (degrees)
   Arcsine
      The arcsine (inverse sine) of input 1 (degrees)
   Arccosine
      The arccosine (inverse cosine) of input 1 (degrees)
   Arctangent
      The arctangent (inverse tangent) of input 1 (degrees)
   Power
      Input 1 to the power of input 2 (input1^input2)
   Logarithm
      Log base input 2 of input 1
   Minimum
      The minimum of input 1 and input 2
   Maximum
      The maximum of input 1 and input 2
   Round
      Rounds input 1 to the nearest integer
   Less Than
      Test if input 1 is less than input 2, returns 1 for true, 0 for false
   Greater Than
      Test if input 1 is greater than input 2, returns 1 for true, 0 for false
   Modulo
      Division of input 1 by input 2 with remainder.
   Absolute
      Always return non-negative value from any operation input 2 between input 1.

