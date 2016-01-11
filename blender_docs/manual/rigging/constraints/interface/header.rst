

*********
Header
*********

Every constraint has a header.
The interface elements of the header are explained below using a Copy Location constraint as an example.

.. figure:: /images/rigging_constraints_interface_header.png

   A **Header** sits at the top of every constraint.

Expansion Arrow (pointing down or right)
   Show or Hide the settings of the constraint.
   Tidy up the :doc:`constraint stack </rigging/constraints/interface/the_stack>` by hiding constraints that don't currently need attention.
   Constraints will continue to affect the scene even when hidden.

"Copy Location" (first occurrence)
   The type of constraint. This is determined at the time the constraint is created.

"Copy Location" (second occurrence)
   Give the constraint a meaningful name in this field, something that describes its intent.
   Meaningful names help you and your team members understand what each constraint is supposed to do.

   The **red** background is a warning that the constraint is not yet functional.
   The background will turn **gray** when the constraint is functioning.
   When this Copy Location constraint has a valid target in the "Target Field" it will turn gray and begin to function.

Eyeball (open or closed)
   Enable or Disable (Mute/Unmute) the constraint. Disabling a constraint will stop its affect on the scene. 

   Disabling a constraint is useful for turning off a constraint without losing all of its settings.
   Disabling means you can enable the constraint at a later time with the settings intact.
   Disabling is similar to setting the :doc:`influence </rigging/constraints/interface/influence>` slider to 0.0.

Up/Down Arrows
   Move a constraint up or down in the :doc:`constraint stack </rigging/constraints/interface/the_stack>`.
   Since the stack is evaluated from top to bottom,
   moving a constraint in the stack can significantly affect the final outcome of the stack.

   If there is only one constraint in the stack, the arrows will not be drawn.
   If the constraint is at the top of the stack, only the down arrow will be drawn.
   If the constraint is at the bottom of the stack, only the up arrow will be drawn.

X
   Delete the constraint from the stack.
   The settings will be lost.
   The constraint will no longer affect the final outcome of the stack.