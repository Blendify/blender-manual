.. _bpy.types.FollowTrackConstraint:

***********************
Follow Track Constraint
***********************

.. figure:: /images/rigging_constraints_motion-tracking_follow-track_panel.png

   Follow Track Constraint panel.

By default Follow Track constraint is making object have the same position at frame as track has and
motion of this object happens on a single plane defined by camera and original object position.

Active Clip
   Receive tracking data from the active movie clip in the Movie clip editor.
   If unchecked, an option appears to choose from the other clips.
3D Position
   Use 3D position of tract to parent to.
Undistorted
   Parent to undistorted position of the 2D track.
Frame Method
   How the footage fits in the camera frame.
Camera
   Select the camera to which the motion is parented to (if active empty scene camera is used).
Depth Object
   If this object is set, constrained object would be projected onto surface
   of this depth object which can be used to make faked facial makeup.
Constraint to F-Curve
   Creates F-Curves for the object that copies the movement caused by the constraint.


Example
=======

.. youtube:: KZalGrjGKSA
