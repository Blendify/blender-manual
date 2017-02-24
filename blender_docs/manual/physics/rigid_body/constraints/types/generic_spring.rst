.. (todo) wrong images

**************
Generic Spring
**************

.. figure:: /images/physics_rigid-body_constraints_hinge.png
   :width: 500px

   Options available to a *Generic Spring* constraint.

The generic spring constraint adds some spring parameters for the X/Y/Z axes to all the options available on the
Generic constraint. Using the spring alone allows the objects to bounce around as if attached with a spring anchored
at the constraint object. This is usually a little too much freedom, so most applications will benefit from enabling
translation or rotation constraints.

If the damping on the springs is set to 1, then the spring forces are prevented from realigning the anchor points,
leading to strange behavior. If your springs are acting weird, check the damping.


Options
=======

Limits
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

Springs
   X/Y/Z
      Enables/disables springs on X, Y or Z axis respectively.

      Stiffness
         Spring Stiffness on X, Y or Z axis respectively. Specifies how "bendy" the spring is.
      Damping
         Spring Damping on X, Y or Z axis respectively. Amount of damping the spring has.
