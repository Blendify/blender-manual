

******
Target
******

The Target field lets you link the constraint to a Target object of your choosing.
This link provides data to the constraint so that it can begin to function.
For example, the Copy Location Constraint needs location data to function.
Fill in the Target field, and the Copy Location constraint will begin to use location data from the Target object.

.. figure:: /images/rigging_constraints_interface_target.png

   The **Target** field must be filled in for the constraint to function.

By default, the Target will use the :term:`Object Center` as the target point.

If the Target field links to a :term:`Mesh` or :term:`Lattice` object, a :term:`Vertex Group` field will appear.
Enter the name of a vertex group and the constraint will target the median point
of this vertex group instead of the object center.

.. figure:: /images/rigging_constraints_interface_target_v_group.png

If the Target field links to an :term:`Armature`, a :term:`Bone` field will appear
along with a :term:`Head`/:term:`Tail` slider.
Enter the name of a bone and the constraint will target the bone instead of the entire armature object center.
Slide the slider and the constraint will target the head, the tail or somewhere inbetween.

.. figure:: /images/rigging_constraints_interface_target_bone.png
