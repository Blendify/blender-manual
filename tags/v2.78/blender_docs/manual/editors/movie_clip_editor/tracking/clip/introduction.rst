
************
Introduction
************

The clip view is used is the main part of the of the movie clip editor.
Almost all motion tracking tools are concentrated in the Movie Clip Editor.

It should be mentioned that the camera solver consists of three quite separate steps:

#. 2D tracking of footage.
#. Camera intrinsics (focal length, distortion coefficients) specification/estimation/calibration.
#. Solving camera, scene orientation, and scene reconstruction.

Tools in the clip editor are split depending on which step they are used in, 
so the interface is not cluttered up with scene orientation tools when only 2D tracking can be done.
The currently displayed tool category can be changed using the Mode menu,
which is in the editor header.

.. figure:: /images/editors_movie_clip_mode_menu.jpg
   :width: 300px

   Movie Clip Editor Mode Menu.

But almost all operators can be called from menus, so it is not necessary to change the mode
every time you want to use a tool which is associated with a different editor mode.

In tracking mode only tools which are related to tracking and camera solving are displayed.
Camera solving tools are included here because it is after solving you will most probably want to
re-track existing tracks or place new tracks to make solving more accurate.


.. Todo where does this go? tools or properties?

Tracking Settings Panel
=======================

This panel contains all settings for the 2D tracking algorithms.
Depending on which algorithm is used, different settings are displayed,
but there are a few that are common for all tracker settings:

*Adjust Frames* controls which patterns get tracked; to be more precise,
the pattern from which frame is getting tracked. Here is an example which should make things clearer.

The tracker algorithm receives two images inside the search area and the position of a point
to be tracked in the first image.
The tracker tries to find the position of that point from the first image in the second image.

Now, this is how tracking of the sequence happens.
The second image is always from a frame at which the position of marker is not known
(next tracking frame). But a different first image
(instead of the one that immediately precedes the second image in the footage)
can be sent to the tracker. Most commonly used combinations:

- An image created from a frame on which the track was keyframed.
  This configuration prevents sliding from the original position
  (because the position which best corresponds to the original pattern is returned by the tracker),
  but it can lead to small jumps and can lead to failures when the feature point is deformed due to camera motion
  (perspective transformation, for example). Such a configuration is used if *Adjust Frames* is set to 0.
- An image created from the current frame is sent as first image to the tracker.
  In this configuration the pattern is tracking between two neighboring frames.
  It allows dealing with cases of large transformations of the feature point
  but can lead to sliding from the original position, so it should be controlled.
  Such a configuration is used if *Adjust Frames* is set to 1.

If *Adjust Frames* is greater than 1, the behavior of tracker is:
keyframes for tracks are creating every *Adjust Frames* frames,
and tracking between keyframed image and next image is used.

Speed
   can be used to control the speed of sequence tracking.
   This option does not affect the quality of tracking; it just helps to control if tracking happens accurately.
   In most cases tracking happens much faster than real time, and it is difficult to notice when a track began
   to slide out of position. In such cases *Speed* can be set to Double or Half to add some delay between
   tracking two frames, so slide-off would be noticed earlier and the tracking process can be canceled to
   adjust positions of tracks.
Frames Limit
   controls how many frames can be tracked when the Track Sequence operator is called.
   So, each Track Sequence operation would track maximum *Frames Limit* frames.
   This also helps to notice slide-off of tracks and correct them.
Margin
   can be used disable tracks when they become too close to the image boundary.
   This slider sets "too close" in pixels.


KLT Tracker Options
-------------------

The KLT tracker is the algorithm used by default.
It allows tracking most kinds of feature points and their motion.
It uses pyramid tracking which works in the following way. The algorithm tracks an image
larger than the defined pattern first to find the general direction of motion. Then it tracks
a slightly smaller image to refine the position from the first step and make the final
position more accurate. This iterates several times. The number of steps of such tracking is
equal to the *Pyramid Level* option and we tell that on first step tracking
happens for highest pyramid level. So Pyramid Level=1 is equal to pattern itself,
and each next level doubles tracking image by 2.

The search area should be larger than the highest pyramid level and the "free space" between
the search area and highest pyramid level defines how much the feature can move from one frame
to another and still be tracked.

Default settings should work in most general cases,
but sometimes the pyramid level should be changed. For example, when footage is blurry,
adding extra pyramid levels helps to track them.

This algorithm can fail in situations where a feature point is moving in one direction and the
texture around that feature point is moving in another direction.


SAD tracker options
-------------------

On each step, the SAD tracker reviews the whole search area and finds the pattern on the
second image which is most like the pattern which is getting tracking.
This works pretty quickly, but can fail in several cases. For example, when there is another
feature point which looks like the tracking feature point in the search area. In this case,
SAD will tend to jump off track from one feature to another.

*Correlation* defines the threshold value for correlation between two patterns which is still
considered successful tracking. 0 means there is no correlation at all, 1 means correlation is full.

There is one limitation currently, it works for features of size 16×16 pixels only.
