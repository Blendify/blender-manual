
****************************
Adding/Removing a Constraint
****************************

To add a constraint in the :doc:`Constraints Panel </rigging/constraints/introduction>`:
   Click on the "Add Constraint" drop-down box.

.. figure:: /images/rigging_constraints_intro_all_available.png

To add a constraint in the 3D view:
   Select the object you would like to constrain.
   Press :kbd:`Ctrl-Shift-C` and choose a constraint from the pop-up menu.
   If the chosen constraint needs a target, Blender will add an empty automatically
   as the target and position it at the center of the constrained object.

To add a constraint in the 3D view and simultaneously give it a target:
   Select the target first and then shift-select the object you would like to constrain.
   Press :kbd:`Ctrl-Shift-C` and choose a constraint from the pop-up menu.

To remove a constraint:
   Click on the "X" button in the :doc:`header </rigging/constraints/interface/header>`.

To remove all constraints from all selected object(s):
   Click :menuselection:`Object --> Constraints --> Clear Object Constraints` in the 3D View Header.

   or :menuselection:`Pose --> Constraints --> Clear Pose Constraints` (for bone constraints).

   or press :kbd:`Ctrl-Alt-C`.