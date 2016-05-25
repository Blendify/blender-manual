
************************
Camera Solver Constraint
************************

The *Camera Solver* constraint gives the owner of this constraint,
the location and rotation of the "solved camera motion".

The "solved camera motion" is where blender thinks the physical, real world camera was,
when it filmed the video footage, relative to the thing being tracked.

.. tip::

   This constraint only works after you have set up a minimum of eight markers and pressed
   :doc:`Solve Camera Motion </editors/movie_clip_editor/tracking/clip/tools>`.

Movie Clip Editor: :menuselection:`Tool Shelf --> Solve --> Solve Camera Motion`


Options
=======

.. figure:: /images/motion_tracking_constraints-Camera_Solver.jpg
   :width: 315px

   Camera Solver Constraint panel

Active Clip
   Receive tracking data from the movie clip active in the movie clip editor.
   If unchecked, an option appears to choose from the other clips.
Constraint to F-Curve
   Applies the constraint, creating key-frames for the transforms.
Influence
   Control how much this constraint effects the owner.

