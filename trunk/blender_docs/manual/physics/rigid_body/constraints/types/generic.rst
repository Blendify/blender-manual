
*******
Generic
*******

The generic constraint has a lot of available parameters.

The X, Y, and Z axis constraints can be used to limit the amount of translation between the objects.
Clamping the min/max to zero has the same effect as the Point constraint.

Clamping the relative rotation to zero keeps the objects in alignment.
Combining an absolute rotation and translation clamp would behave much like the Fixed constraint.

Using a non-zero spread on any parameter allows it to rattle
around in that range throughout the course of the simulation.

Limits:
   X Axis/Y Axis/Z axis
      Enables/disables limit translation on X, Y or Z axis respectively.

      Lower
         Lower limit of translation for X, Y or Z axis respectively.
      Upper
         Upper limit of translation for X, Y or Z axis respectively.
   X Angle/Y Angle/Z Angle
      Enables/disables limit rotation around X, Y or Z axis respectively.

      Lower
         Lower limit of rotation for X, Y or Z axis respectively.
      Upper
         Upper limit of rotation for X, Y or Z axis respectively.
