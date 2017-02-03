
************
Introduction
************

Objects Panel
=============

.. figure:: /images/editors_movie-clip_objects_panel.jpg
   :align: right
   :width: 130px

   Objects Panel.


This panel contains a :ref:`list view <ui-list-view>` with all objects which can be used for tracking,
camera or object solving.
By default there is only one object in this list which is used for camera solving.
It cannot be deleted and other objects cannot be used for camera solving;
all added objects are used for object tracking and solving only.
These objects can be referenced from Follow Track and Object Solver constraints.
Follow Track uses the camera object by default.

If some tracks were added and tracked to the wrong object, they can be copied to another
object using :menuselection:`Track --> Copy Tracks` and :menuselection:`Track --> Paste Tracks`.

The usage for all kind of objects (used for camera and object tracking) is the same:
track features, set camera data, solve motion. Camera data is sharing between all objects and
refining of camera intrinsics happens when solving camera motion only.


Track Panel
===========

.. figure:: /images/editors_movie-clip_track_panel.png
   :align: right
   :width: 130px

   Track Panel.

Name
   The track name can be changed with this field.
   Track names are used for linking tracking data to other areas, like a Follow Track constraint.
Enable (eye icon)
   This toggle controlled the marker's enabled flag.
   If a marker is disabled, its position is not used either by solver nor by constraints.
Lock (padlock icon)
   The toggle controls whether the track is locked. Locked tracks cannot be edited at all.
   This helps to prevent accidental changes to tracks which are "finished"
   (tracked accurate along the whole footage).


Track Preview Widget
--------------------

The widget in this panel is called "Track Preview" and it displays the content of the
pattern area. This helps to check how accurately the feature is being tracked
(controlling that there is no sliding off original position)
and also helps to move the track back to the correct position.
The track can be moved directly using this widget by mouse dragging.

If an anchor is used (the position in the image which is tracking is different from the
position which is used for parenting),
a preview widget will display the area around the anchor position. This configuration helps in
masking some things when there is no good feature at position where the mask corner should be
placed. Details of this technique will be written later.

There is small area below the preview widget which can be used to enlarge the vertical size of
preview widget (the area is highlighted with two horizontal lines).


Further Options
---------------

Channels
   Tracking happens in gray-scale space, so a high contrast between the feature and
   its background yields more accurate tracking.
   In such cases disabling some color channels can help.

Weight
   When several tracks are used for 3D camera reconstruction or for 2D stabilization, it is possible
   to assign a reduced weight to some tracks to control their influence on the solution result.
   The *Weight* parameter is used for 3D reconstruction.
Stab Weight
   While the *Stab Weight* parameter is used to control 2D stabilization.
   This parameter can (and often need to be) animated.

Color Presets
   The preset for the *Custom Color*.
Custom Color
   This setting overrides the default marker color used in the clip editor and 3D View,
   and it helps to distinguish different type of features (for example,
   features in the background vs. foreground and so on). Color also can be used for "grouping"
   tracks so a whole group of tracks can be selected by color using the Select Grouped operator.

.. tip::

   To select good points for tracking, use points in the middle of the footage timeline
   and track backwards and forwards from there.
   This will provide a greater chance of the marker and point staying in the camera shot.


Plane Track Panel
=================

.. figure:: /images/editors_movie-clip_plane_track_panel.png
   :align: right
   :width: 130px

   Plane Track Panel.

Its properties are shown only when a plane track is selected.
Firstly, the name of the selected plane track is shown. It can also be changed from here.

Auto Keyframe
   Toggles the auto-keyframing for corners of the plane track.
   With this enabled, keyframes will automatically get inserted when any corner is moved.

   .. note:: Corners can be moved using :kbd:`LMB`.

Image
   Used to select an image which will be inside the plane track.

   .. note::

      This image is for viewing purposes in movie clip editor only. To include it in your final render,
      see :doc:`Plane Track Deform node </compositing/types/distort/plane_track_deform>`.

Opacity
   Used to set the opacity of this image. Again,
   this is for display purposes only, and will not affect your final render.


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


Marker Panel
============

This panel contains numerical settings for marker position,
pattern and search area dimensions, and offset of anchor point from pattern center.
All sliders are self-explanatory.


Grease Pencil Panel
===================

Grease pencil
   Controls if grease pencil strokes are allowed to be displayed and made.

It is a standard grease pencil panel where new grease pencil layers and frames can be controlled.
There is one difference in the behavior of the grease pencil from other areas --
when a new layer is created "on-demand" (when making a stroke without adding a layer before this)
the default color for the layer is set to pink. This makes the stroke easy to notice on all kinds of movies.
