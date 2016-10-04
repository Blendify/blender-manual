.. |manip-menu| image:: /images/editors_3dview_transform_control_manipulators_header.png

************
Manipulators
************

.. admonition:: Reference
   :class: refbox

   | Mode:     Object and Edit Modes
   | Menu:     |manip-menu|
   | Hotkey:   :kbd:`Ctrl-Spacebar`


In combination with :doc:`axis locking </editors/3dview/object/transform/transform_control/precision/axis_locking>`,
the normal Transform commands (:kbd:`G` for Grab, :kbd:`R` for Rotation, :kbd:`S` for Scale),
can be used to manipulate objects along any axis. However,
there may be times when these options are not adequate. For example,
when you want to translate a single face on a randomly rotated object in a direction perpendicular to
the face's normal. In instances like this, *Transform Manipulators* may be useful.

Transform manipulators provide a visual representation of the transform options and allow
movement, rotation and scaling along any axis, mode and orientation of the 3D View. The
manipulator can be enabled by clicking on the axis icon from the manipulator options portion
of the header or via the shortcut key :kbd:`Ctrl-Spacebar`.

There is a separate manipulator for each Transform Command.
Each manipulator can be used separately or in combination with the others.
Clicking with :kbd:`Shift-LMB` on multiple manipulator icons (arrow, arc, box)
will combine manipulator options.

Manipulators can be accessed in the header of the *3D View*:

- Axis: Enable/disable the manipulators.
- Arrow: Translation.
- Arc: Rotation.
- Box: Scale.
- Transform Orientation menu: choice of the transformation orientation.

.. figure:: /images/editors_3dview_transform_control-manipulators-manipulator_options.png

   Manipulator Options.


Manipulator Controls
====================

Basic
-----

You can use the widget by dragging :kbd:`LMB` one of the three colored axes.

.. white circle


Extended
--------

- Holding down :kbd:`Ctrl` enables
  :doc:`snapping </editors/3dview/object/transform/transform_control/precision/snap>`.

- Holding down :kbd:`Shift` *after* you :kbd:`LMB`
  the manipulator handle will constrain the action to smaller increments.
- Holding down :kbd:`Shift` *before* you :kbd:`LMB` click on one of the handles will cause the manipulator action
  to be performed relative to the other two axes (you can let go of :kbd:`Shift` once you have clicked).
  For example, if you :kbd:`Shift` then :kbd:`LMB` the Z axis handle of the translate manipulator,
  movement will occur in the X and Y planes.

- When in rotate mode, :kbd:`LMB` on the white circle (largest circle around the rotation manipulator)
  will be equivalent to pressing :kbd:`R`.
- When in rotate mode, :kbd:`LMB` on the gray circle (small inner circle at the center of the rotation manipulator)
  will be equivalent to pressing :kbd:`R` twice, and will start *trackball* rotation.

.. seealso::

   - :doc:`Read more about constraining transformations
     </editors/3dview/object/transform/transform_control/precision/introduction>`.
   - :doc:`Read more about axis locking </editors/3dview/object/transform/transform_control/precision/axis_locking>`.
   - :doc:`Read more about trackball rotation </editors/3dview/object/transform/basics/rotate>`.
   - :ref:`Manipulator Preferences <prefs-interface-manipulator>`.

.. tip:: Changing the Transform Orientation

   The :doc:`Transform Orientation </editors/3dview/object/transform/transform_control/transform_orientations>`
   for how objects are manipulated can be changed to make some operations easier.
