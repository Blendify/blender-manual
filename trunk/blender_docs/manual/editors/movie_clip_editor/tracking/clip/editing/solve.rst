
*****
Solve
*****

.. _clip-tracking-plane:

Plane Track Panel
=================

The *Create Plane Track* operator creates a new plane track.
This can be used to replace things like billboards and screens on the footage with another image or video.
It also might be used for masking.

This button will create a plane object
which is deforming in the same way as plane defined by all selected point tracks.
At least four feature points tracked across the footage which belongs to
the plane one wants to replace are needed. More tracks will give better estimation of plane motion.

Feature points used to estimate plane motion could be used from any place on the plane,
meaning it's not necessarily need to be corners. Corners are not always easy to be tracked,
they might be occluded. In this case you can position tracked features that lay on the same plane
far away from the actual plane which should be replaced.

It is also possible to have some tracks appear and disappear during the time,
it's only required that two neighbor frames have at least 4 common tracks.


Solve Panel
===========

Tripod
------

Tripod Motion can be used for footage where the camera does not move and only rotates.
Such footage can't be tracked with a generic solver approach, and
it is impossible to determine the actual feature points in space due to a lack of information.
So this solver will solve only the relative camera rotation and
then reproject the feature points into a sphere, with the same distance between feature and camera for all feature points.

.. note::

   Please note, that this is special type of camera solver and it behaves different from regular solver.
   It means using more tracks doesn't imply more accurate solution.
   Having 5-10 tracks on frame is likely what shall be commonly used for this kind of solver.


Keyframe
--------

Keyframe
   Automatically select keyframes for initial reconstruction.
   This option enables complex algorithms which tries to find a keyframe pair
   with minimal reconstruction error and best scene scale guess.
Keyframe A, B :kbd:`Q`, :kbd:`E`
   Start (A) and End (B) frame of the range used for reconstruction.


Refine
------

The *Refine* option specifies which parameters should be refined during solve.
Such refining is useful when you are not sure about some camera intrinsics,
and solver should try to find the best parameter for those intrinsics.
But you still have to know approximate initial values --
it will fail to find correct values if they were set completely incorrectly initially.


Solve Camera/Object Motion
--------------------------

*Camera Motion* operator solves the motion of camera using all tracks placed
on the footage and two keyframes specified on this panel. There are some requirements:

- There should be at least eight common tracks on the both of the selected keyframes.
- There should be noticeable parallax effects between these two keyframes.


If everything goes smoothly during the solve, the average reprojection error is reported to
the information space and to the clip editor header. Reprojeciton error means the average
distance between reconstructed 3D position of tracks projected back to footage and original
position of tracks. Basically, reprojection error below 0.3 means accurate reprojection,
(0.3 - 3.0) means quite nice solving which still can be used.
Values above 3 means some tracks should be tracked more accurately,
or that values for focal length or distortion coefficients were set incorrectly.


Cleanup Panel
=============

This panel contains a single operator and its settings. This operator cleans up bad tracks:
tracks which are not tracked long enough or which failed to reconstruct accurately.

Frames
   ToDo.
Error
   Error threshold value. 
Action
   Several actions can be performed for bad tracks:

   Selected
      They can simply be selected.
   Delete Track
      The whole track can be deleted.
   Delete Segments
      Bad segments of tracked sequence can be removed.


Geometry Panel
==============

3D Markers to Mesh
   Converts the reconstructed points into a point cloud (single mesh). ToDo.
Link Empty to Track
   ToDo.


Orientation Panel
=================

Scene orientation tools can be used for orienting object to bundles.

Floor
   Select three markers that should lay on the floor plane. ToDo.
Wall
   Define world orientation based on points on the wall.
Set Origin
   ToDo.
Set X, Y Axis
   ToDo.
Set Scale
   Object has got scale to define "depth" in camera space.
Apply
   Apply scale on scene solution.
Distance
   ToDo.


Scene Setup
===========

Set as Background
   Sets the clip currently being edited as the camera background for all visible 3D Views.
   If there is no visible 3D Views or the Clip Editor is open in full screen,
   nothing will happen.
Setup Tracking Scene
   ToDo.
