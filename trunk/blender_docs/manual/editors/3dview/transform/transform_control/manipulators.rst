
************
Manipulators
************

.. admonition:: Reference
   :class: refbox

   | Mode:     Object and Edit Modes
   | Hotkey:   :kbd:`Ctrl-Spacebar`


In combination with :doc:`axis locking </editors/3dview/transform/transform_control/precision/axis_locking>`,
the normal Transform commands (:kbd:`G` for Grab, :kbd:`R` for Rotation, :kbd:`S` for Scale),
can be used to manipulate objects along any axis.
However, there may be times when these options are not adequate.
For example, when you want to translate a single face on a randomly rotated object in a direction perpendicular to
the face's normal. In instances like this, *Transform Manipulators* may be useful.


.. figure:: /images/editors_3dview_header-transform-manipulator.jpg

   Manipulator options in the Header.


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


.. figure:: /images/editors_3dview_transform_control-manipulators-manipulator_options.jpg
   :width: 650px

   Manipulator Options.


Manipulator Controls
====================

- Holding down :kbd:`Ctrl` constrains the action to set increments.
  Holding down :kbd:`Shift` *after* you :kbd:`LMB` the manipulator handle
  will constrain the action to smaller increments.
- Holding down :kbd:`Shift` *before* you :kbd:`LMB` click on one of the handles will cause the manipulator action
  to be performed relative to the other two axes (you can let go of :kbd:`Shift` once you have clicked).
  For example, if you :kbd:`Shift` then :kbd:`LMB` the Z axis handle of the translate manipulator,
  movement will occur in the X and Y planes.
- When in rotate mode, :kbd:`LMB` on the white circle (largest circle around the rotation manipulator)
  will be equivalent to pressing :kbd:`R`.
- When in rotate mode, :kbd:`LMB` on the grey circle (small inner circle at the center of the rotation manipulator)
  will be equivalent to pressing :kbd:`R` twice.
  This will start *trackball* rotation.

.. seealso::

   - :doc:`Read more about constraining transformations </editors/3dview/transform/transform_control/precision/introduction>`.
   - :doc:`Read more about axis locking </editors/3dview/transform/transform_control/precision/axis_locking>`.
   - :doc:`Read more about trackball rotation </editors/3dview/transform/basics/rotate>`.
   - :ref:`Manipulator Preferences <prefs-interface-manipulator>`.


Choosing the Transform Orientation
==================================

.. admonition:: Reference
   :class: refbox

   | Mode:     Object and Edit Modes
   | Hotkey:   :kbd:`Alt-Spacebar`


.. figure:: /images/editors_3dview_orientations_menu.png
   :align: right

   Transform Orientation options.


You can also change the orientation of the
:doc:`Transform Manipulator </editors/3dview/transform/transform_control/transform_orientations>`
to global, local, gimbal, normal or view from the Transform options menu.
The image below shows a cube with the rotation manipulator active in multiple transform orientations.
Notice how the manipulator changes depending on the orientation selected (compare A with F).

Similarly, notice how when normal orientation (F and G)
is selected the manipulator changes between *Object Mode* and *Edit Mode*.
The normal orientation manipulator will also change depending on what is selected in
*Edit Mode* i.e. the orientation is based on the normal of the selection which will
change depending on how many and which faces, edges or vertices are selected.

.. figure:: /images/editors_3dview_transform_control-manipulators-manipulator_orientation_options.jpg
   :width: 640px

   Transform manipulator orientation options.

- A) Standard cube in default top view with *global* orientation selected
- B) Standard cube with view rotated and *global* orientation selected
- C) Randomly rotated cube with view rotated and *global* orientation selected
- D) Randomly rotated cube with *local* orientation selected
- E) Randomly rotated cube with *gimbal* orientation selected
- F) Randomly rotated cube with *normal* orientation selected
- G) Randomly rotated cube, vertices selected with *normal* orientation selected
- H) Randomly rotated cube with *view* orientation selected
