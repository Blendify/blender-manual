
************************
Copy Location Constraint
************************

The *Copy Location* constraint forces its owner to have the same location as its target.

.. warning::

   Note that if you use such a constraint on a *connected* bone, it will have
   no effect, as it is the parent's tip which controls the position of your
   owner bone's root.


Options
=======

.. figure:: /images/rigging_constraints_transform_copy-location.png

   Copy Location panel.


Target
   :ref:`ui-data-id` used to select the constraints target, and is not functional (red state) when it has none.

X, Y, Z
   These buttons control which axes are constrained.

   Invert
      The *Invert* buttons invert their respective preceding coordinates.

Offset
   When enabled, this control allows the owner to be translated (using its current transform properties),
   relative to its target's position.

Space
   Standard conversion between spaces.

.. vimeo:: 170198049
