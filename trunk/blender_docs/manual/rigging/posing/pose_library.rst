
******************
Pose Library Panel
******************

.. figure:: /images/rigging_posing_pose-library.png
   :align: right

   :menuselection:`Properties --> Armature --> Pose Library`

The *Pose Library* panel is used to save, apply, and manage different armature poses.
*Pose Libraries* are saved to *Actions*. They are not generally used as actions, but can be converted to and from.

Action
   A :ref:`ui-data-block` for Actions or Pose Libraries.
Pose Libraries
   A :ref:`ui-list-view` of poses for the active Pose Library.
   
   Add ``+``
   Add New
      Adds a new pose to the active Pose Library with the current pose of the armature.
   Add New (Current Frame).
      Will add a pose to the Pose Library based on the current frame selected in the Time line.
      In contrast to *Add New* and *Replace Existing* which automatically allocate a pose to an action frame.
   Replace Existing
      Replace an existing pose in the active Pose Library with the current pose of the armature.
Apply Pose
   Apply the active pose to the selected pose bones (magnifying glass icon).
Sanitize Action
   Makes a action suitable for use as a Pose Library (livesaver icon).
   This is used to convert an Action to a Pose Library.
   A pose is added to the Pose Library for each frame with keyframes.


Shortcuts
==========

3D View, Pose Mode. :menuselection:`Pose --> Pose Library`

- Browse Poses. :kbd:`Ctrl-L`.
- Add Pose. :kbd:`Shift-L`.
- Rename Pose. :kbd:`Shift-Ctrl-L`.
- Remove Pose. :kbd:`Alt-L`.
