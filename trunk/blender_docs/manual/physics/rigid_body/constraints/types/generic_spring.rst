.. (todo error) wrong images

**************
Generic Spring
**************

.. admonition:: Reference
   :class: refbox

   | Panel:    :menuselection:`Physics --> Rigid Body Constraint`
   | Type:     Generic Spring

.. figure:: /images/physics_rigid-body_constraints_types_hinge_panel-example.png
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
   X/Y/Z Axis
      Enables/disables limit translation on X, Y or Z axis respectively.

      Lower
         Lower limit of translation for X, Y or Z axis respectively.
      Upper
         Upper limit of translation for X, Y or Z axis respectively.
   X/Y/Z Angle
      Enables/disables limit rotation around the X, Y or Z axis respectively.

      Lower
         Lower limit of rotation for X, Y or Z axis respectively.
      Upper
         Upper limit of rotation for X, Y or Z axis respectively.

Springs
   X/Y/Z Axis
      Enables/disables springs translation on X, Y or Z axis respectively.

      Stiffness
         Spring Stiffness of the translation on X, Y or Z axis respectively. Specifies how "bendy" the spring is.
      Damping
         Spring Damping of the translation on X, Y or Z axis respectively. Amount of damping the spring has.
   X/Y/Z Angle
      Enables/disables springs rotation around the X, Y or Z axis respectively.

      Stiffness
         Spring Stiffness of the rotation around the X, Y or Z axis respectively. Specifies how "bendy" the spring is.
      Damping
         Spring Damping of the rotation around the X, Y or Z axis respectively. Amount of damping the spring has.
