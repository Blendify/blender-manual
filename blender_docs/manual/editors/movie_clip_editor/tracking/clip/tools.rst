
****************
Movie Clip Tools
****************

Track
=====

Clip Panel
----------

This panel currently contains the single operator *Set as background* which sets the
clip currently being edited as the camera background for all visible 3D Views.
If there is no visible 3D Views or the Clip Editor is open in full screen,
nothing will happen.

Marker panel
------------

Add Marker and Move
   Places a new marker at the position of the mouse
   (which is under the button in this case, not ideal but it is just how things work)
   and then it can be moved to the needed location. When it is moved to the desired position,
   :kbd:`LMB` can be used to finish placing the new marker.
   Also, :kbd:`Return` and :kbd:`Spacebar` can be used to finish placing the marker.
   But it is faster to use :kbd:`Ctrl-LMB` to place markers directly on the footage.
   This shortcut will place the marker in the place you have clicked.
   One more feature here: until you have released the mouse button,
   you can adjust the marker position by moving the mouse and using
   the track preview widget to control how accurately the marker is placed.

Detect Features
   Detects all possible features on the current frame and places markers at these features.
   This operator does not take into account other frames,
   so it can place markers on features which belong to moving objects,
   and if camera is turning away from this shot,
   no markers would be placed on frames after the camera moved away.

   There are several properties for this operator:

   Placement
      Used to control where to place markers. By default, they will be added through the whole frame, but you can
      also outline some areas with interesting features with grease pencil and place markers only inside the
      outlined area. That is how the "Inside Grease Pencil" placement variant works. You can also outline areas of
      no interest (like trees, humans and so) and place markers outside of these areas. That is how the "Outside
      Grease Pencil" placement variant works.
   Margin
      controls the distance from the image boundary for created markers. If markers are placed too close to the
      image boundary, they will fail to track really quickly and they should be deleted manually. To reduce the
      amount of manual clean-up, this parameter can be used.
   Trackability
      Limits minimal trackability for placing markers. This value comes from the feature detection algorithm and
      basically it means: low values means most probably this feature would fail to track very soon, high value
      means it is not much such track. Amount of markers to be added can be controlled with this value.
   Distance
      Defines the minimal distance between placed markers. It is needed to prevent markers from being placed too
      close to each other (such placement can confuse the camera solver).

Delete Track
   is a quite self-explaining operator which deletes all selected tracks.


Track panel
-----------

The first row of buttons is used to perform tracking of selected tracks
(i.e. following the selected feature from frame to frame).
Tracking can happen (in order of buttons):

- Backward one frame
- Backward along the sequence
- Forward along the whole sequence
- Forward one frame

This operator depends on settings from the Tracking Settings panel, which will be described later.
If during sequence tracking the algorithm fails to track some markers,
they will be disabled and tracking will continue for the rest of the markers.
If the algorithm fails when tracking frame-by-frame, the marker is not disabled,
and the most likely position of the feature on the next frame is used.

Clear After
   deletes all tracked and keyframed markers after the current frame for all selected tracks.
Clear Before
   deletes all tracked and keyframed markers before the current frame for all selected tracks.
Clear
   clears all markers except the current one from all selected tracks.
Join
   operator joins all selected tracks into one.
   Selected tracks should not have common tracked or keyframed markers at the same frame.


Solve
=====

Plane Track Panel
-----------------

*Create Plane Track* operator creates a new plane track.
Four markers are needed to be selected which will form the four corners of the plane.


Solve Panel
-----------

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

The *Refine* option specifies which parameters should be refined during solve.
Such refining is useful when you are not sure about some camera intrinsics,
and solver should try to find the best parameter for those intrinsics.
But you still have to know approximate initial values --
it will fail to find correct values if they were set completely incorrectly initially.


Cleanup Panel
-------------

This panel contains a single operator and its settings. This operator cleans up bad tracks:
tracks which are not tracked long enough or which failed to reconstruct accurately.
Threshold values can be specified from sliders below the button. Also,
several actions can be performed for bad tracks:

- They can simply be selected
- Bad segments of tracked sequence can be removed
- The whole track can be deleted
