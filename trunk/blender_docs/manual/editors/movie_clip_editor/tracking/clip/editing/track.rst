
*****
Track
*****

Clip Panel
==========

Prefetch :kbd:`P`
   Fills cache with frames. As many frames as fits into cache are load form the drive.
   This allows to fill in the cache as fast as possible when you really need to track something,
   but this keeps CPU and drive bandwidth idle if you've got clip editor opened but not actually interacting with it.
Reload
   ToDo.
Set Scene Frames
   ToDo.


Marker panel
============

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
   Threshold
      Limits minimal threshold for placing markers. This value comes from the feature detection algorithm and
      basically it means: low values means most probably this feature would fail to track very soon, high value
      means it is not much such track. Amount of markers to be added can be controlled with this value.
   Distance
      Defines the minimal distance between placed markers. It is needed to prevent markers from being placed too
      close to each other (such placement can confuse the camera solver).

Delete Track
   is a quite self-explaining operator which deletes all selected tracks.


.. _clip-tracking-settings:

Tracking Settings Panel
=======================

This panel contains all settings for the 2D tracking algorithms.

Tracking Presets
   ToDo.
Channels
   ToDo.
Pattern Size, Search
   ToDo.
Motion Model
   Defines which possible motions tracking feature has. This option should be set depending on which motion
   a particular feature has and it'll make tracking most accurate for such a motion.

   Location only, Location+Rotation, Location+Scale, Location+Rotation+Scale, Affine

   Perspective
      Is usually used to track a planar feature,
      but often *Affine* is a good enough approximation and may have more stable tracks.
Pattern Match
   Pattern Match controls which patterns get tracked; to be more precise,
   the pattern from which frame is getting tracked. Here is an example which should make things clearer.

   The tracker algorithm receives two images inside the search area and the position of a point
   to be tracked in the first image.
   The tracker tries to find the position of that point from the first image in the second image.

   Now, this is how tracking of the sequence happens.
   The second image is always from a frame at which the position of marker is not known
   (next tracking frame). But a different first image
   (instead of the one that immediately precedes the second image in the footage)
   can be sent to the tracker.

   Keyframe
      An image created from a frame on which the track was keyframed.
      This configuration prevents sliding from the original position
      (because the position which best corresponds to the original pattern is returned by the tracker),
      but it can lead to small jumps and can lead to failures when the feature point is deformed due to camera motion
      (perspective transformation, for example).
   Previous Frame
      Keyframes for tracks are creating every frames,
      and tracking between keyframed image and next image is used.
      In this configuration the pattern is tracking between two neighboring frames.
      It allows dealing with cases of large transformations of the feature point
      but can lead to sliding from the original position, so it should be controlled.
Prepass
   Enables a two pass tracking, where the first pass is a brute force tracking of location only, and
   the second pass will use tracking of the full motion model refining the first pass.
Normalize
   Means patterns will be normalized by their average intensity while tracking,
   to make them invariant to illumination changes. An example where this is useful is a scene where
   a marker moves in the shadow of an object.
Copy From Active Track
   Tracker settings only -- ToDo.

.. (alt) Previous frame: An image created from the current frame is sent as first image to the tracker.


Extra Settings
--------------

Use Mask
   ToDo.
Correlation
   Is now a single value for all tracking settings and defines the minimal correlation between
   a matched pattern and a reference to be considered a successful tracking.
   If the tracker is giving up too easily, decrease this value, or if the tracker is slipping too much
   when it should give up sooner, increase this value.
Frames Limit
   Controls how many frames can be tracked when the Track Sequence operator is called.
   So, each Track Sequence operation would track maximum *Frames Limit* frames.
   This also helps to notice slide-off of tracks and correct them.
Margin
   Can be used disable tracks when they become too close to the image boundary.
   This slider sets "too close" in pixels.
Speed
   Marker settings only -- Can be used to control the speed of sequence tracking.
   This option does not affect the quality of tracking; it just helps to control if tracking happens accurately.
   In most cases tracking happens much faster than real time, and it is difficult to notice when a track began
   to slide out of position. In such cases *Speed* can be set to Double or Half to add some delay between
   tracking two frames, so slide-off would be noticed earlier and the tracking process can be canceled to
   adjust positions of tracks.
Weight
   See Track :ref:`Weight <clip-tracking-weight>`.


.. hybrid tracker:
   The algorithm tracks an image larger than the defined pattern first to find the general direction of motion.
   Then it tracks a slightly smaller image to refine the position from the first step and make the final
   position more accurate. This iterates several times.


Track panel
===========

Tracks
------

The first row of buttons is used to perform tracking of selected tracks
(i.e. following the selected feature from frame to frame).
Tracking can happen (in order of buttons):

- Backward one frame :kbd:`Alt-Left`
- Backward along the sequence :kbd:`Shift-Ctrl-T`
- Forward along the whole sequence :kbd:`Ctrl-T`
- Forward one frame :kbd:`Alt-Right`

This operator depends on settings from the Tracking Settings panel, which will be described later.
If during sequence tracking the algorithm fails to track some markers,
they will be disabled and tracking will continue for the rest of the markers.
If the algorithm fails when tracking frame-by-frame, the marker is not disabled,
and the most likely position of the feature on the next frame is used.


Clear
-----

Action
   Clear (After/Remained) (left arrow icon) :kbd:`Alt-T`
      Deletes all tracked and keyframed markers before the current frame for all selected tracks.
   Clear (Before/Up-to) (right arrow icon) :kbd:`Shift-T`
      Deletes all tracked and keyframed markers after the current frame for all selected tracks.
   Clear (Track Path/All) :kbd:`Shift-Alt-T`
      Clears all markers except the current one from all selected tracks.
Clear Active
   ToDo.


Refine
------

This operator will run a tracker from previous keyframe to current frame for all selected markers.
Current markers positions are considering initial position guess which could be updated by a tracker for better match.

Useful in cases when feature disappears from the frame and then appears again. Usage in this case is the following:

* When feature point re-appeared on frame, manually place marker on it.
* Use Refine Markers operation (which is in Track panel) to allow tracker to find a better match.

Depending on direction of tracking use either Forwards or Backwards refining.
It's easy: if tracking happens forwards, use Refine Forwards, otherwise use Refine Backwards.


Merge
-----

Join Tracks :kbd:`Ctrl-J`
   This operator joins all selected tracks into one.
   Selected tracks should not have common tracked or keyframed markers at the same frame.

.. (wip)
   Joining two tracks now works better for tracks which have got intersection by frames:
   coordinates of joined track would be interpolated linearly on segments with intersection.
   This is still not perfect from accurate solving point of view,
   but this allows to prevent camera jump which is much more annoying than sight camera slide.
