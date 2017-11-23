
*****
Motor
*****

.. admonition:: Reference
   :class: refbox

   | Panel:    :menuselection:`Physics --> Rigid Body Constraint`
   | Type:     Motor

.. figure:: /images/physics_rigid-body_constraints_types_motor_panel-example.png
   :width: 500px

   Options available to a *Motor* constraint.

The motor constraint causes translation and/or rotation between two entities.
It can drive two objects apart or together.
It can drive simple rotation, or rotation and translation
(although it will not be constrained like a screw since the translation
can be blocked by other physics without preventing rotation).

The rotation axis is the X axis of the object hosting the constraint.
This is in contrast with the Hinge which uses the Z axis.
Since the Motor is vulnerable to confusing perturbations without a matching Hinge constraint,
special care must be taken to align the axes.
Without proper alignment, the motor will appear to have no effect
(because the hinge is preventing the motion of the motor).


Options
=======

Linear motor/Angular motor
   Enable
      Enable linear or angular motor respectively.

      Target Velocity
         Target linear or angular motor velocity respectively.
      Max Impulse
         Maximum linear or angular motor impulse respectively.
