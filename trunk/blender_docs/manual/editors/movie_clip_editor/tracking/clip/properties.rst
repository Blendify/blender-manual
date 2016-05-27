
*********************
Movie Clip Properties
*********************

Objects Panel
=============

.. figure:: /images/editors_movie-clip_objects_panel.jpg
   :align: right
   :width: 130px

   Objects Panel.


This panel contains a list of all objects which can be used for tracking,
camera or object solving.
By default there's only one object in this list which is used for camera solving.
It can't be deleted and other objects can't be used for camera solving;
all added objects are used for object tracking and solving only.
These objects can be referenced from Follow Track and Object Solver constraints.
Follow Track uses the camera object by default.

New objects can be added using :kbd:`Plus` and the active object can be deleted with the
:kbd:`Minus` button. Text entry at the bottom of this panel is used to rename the active object.

If some tracks were added and tracked to the wrong object, they can be copied to another
object using :menuselection:`Track --> Copy Tracks` and :menuselection:`Track --> Paste Tracks`.

The usage for all kind of objects (used for camera and object tracking) is the same:
track features, set camera data, solve motion. Camera data is sharing between all objects and
refining of camera intrinsics happens when solving camera motion only.


Track Panel
===========

.. figure:: /images/editors_movie-clip_track_panel.jpg
   :align: right
   :width: 130px

   Track Panel.


First of all, track name can be changed in this panel.
Track names are used for linking tracking data to other areas, like a Follow Track constraint.

The next thing which can be controlled here is the marker's enabled flag
(using the button with the eye icon). If a marker is disabled,
its position isn't used either by solver nor by constraints.

The button with the lock icon to the right of the button with the eye controls whether the
track is locked. Locked tracks can't be edited at all.
This helps to prevent accidental changes to tracks which are "finished"
(tracked accurate along the whole footage).

The next widget in this panel is called "Track Preview" and it displays the content of the
pattern area. This helps to check how accurately the feature is being tracked
(controlling that there's no sliding off original position)
and also helps to move the track back to the correct position.
The track can be moved directly using this widget by mouse dragging.

If an anchor is used (the position in the image which is tracking is different from the
position which is used for parenting),
a preview widget will display the area around the anchor position. This configuration helps in
masking some things when there's no good feature at position where the mask corner should be
placed. Details of this technique will be written later.

There's small area below the preview widget which can be used to enlarge the vertical size of
preview widget (the area is highlighted with two horizontal lines).

The next setting is channels control. Tracking happens in gray-scale space,
so a high contrast between the feature and its background yields more accurate tracking.
In such cases disabling some color channels can help.

The last thing is custom color, and the preset for it.
This setting overrides the default marker color used in the clip editor and 3D viewport,
and it helps to distinguish different type of features (for example,
features in the background vs. foreground and so on). Color also can be used for "grouping"
tracks so a whole group of tracks can be selected by color using the Select Grouped operator.


.. tip::

   To select good points for tracking, use points in the middle of the footage timeline
   and track backwards and forwards from there.
   This will provide a greater chance of the marker and point staying in the camera shot.


Plane Track Panel
=================

.. figure:: /images/editors_movie-clip_plane_track_panel.jpg
   :align: right
   :width: 130px

   Plane Track Panel.

Its properties are shown only when a plane track is selected.
Firstly, the name of the selected plane track is shown. It can also be changed from here.

Auto Keyframe
   Toggles the auto-keyframing for corners of the plane track.
   With this enabled, keyframes will automatically get inserted when any corner is moved.

.. note:: 
   
   Corners can be moved using :kbd:`LMB`.

Image
   Used to select an image which will be inside the plane track.

.. note:: 
   
   This image is for viewing purposes in movie clip editor only. To include it in your final render,
   see :doc:`Plane Track Deform node </compositing/types/distort/plane_track_deform>`.

Opacity
   Used to set the opacity of this image. Again,
   this is for display purposes only, and won't affect your final render.


.. todo split in to camera and lens panels

Camera Data Panel
=================

This panel contains all settings of the camera used for filming the movie which is currently
being edited in the clip editor.

First of all, predefined settings can be used here.
New presets can be added or unused presets can be deleted. But such settings as distortion
coefficients and principal point aren't included into presets and should be filled in even if
camera presets are used.


Focal Length
   is self-explanatory; it's the focal length with which the movie was shot.
   It can be set in millimeters or pixels. In most cases focal length is given in millimeters, but sometimes (for
   example in some tutorials on the Internet) it's given in pixels. In such cases it's possible to set it directly in
   the known unit.
Sensor Width
   is the width of the CCD sensor in the camera. This value can be found in camera specifications.
Pixel Aspect Ratio
   is the pixel aspect of the CCD sensor. This value can be found in camera specifications,
   but can also be guessed. For example, you know that the footage should be 1920x1080,
   but the images themselves are 1280x1080. In this case, the pixel aspect is: 1920 / 1280 = 1.5 .
Optical Center
   is the optical center of the lens used in the camera. In most cases it's equal to the image center,
   but it can be different in some special cases. Check camera/lens specifications in such cases.
   To set the optical center to the center of image, there's a :kbd:`Return` button below the sliders.
Undistortion K1, K2 and K3
   are coefficients used to compensate for lens distortion when the movie was shot. Currently these values can be
   tweaked by hand only (there are no calibration tools yet)
   using tools available in Distortion mode. Basically, just
   tweak K1 until solving is most accurate for the known focal length (but also take grid and grease pencil into
   account to prevent "impossible" distortion).


Display Panel
=============

This panel contains all settings which control things displayed in the clip editor.


R, G, B
   and *B/W* buttons at the top of this panel are used to control color channels used
   for frame preview and to
   make the whole frame gray scale. It's needed because the tracking algorithm works with gray-scale images and it's
   not always obvious to see which channels disabled will increase contrast of feature points and reduce noise.
Pattern
   can be used to disable displaying of rectangles which correspond to pattern areas of tracks.
   In some cases it helps
   to make the clip view cleaner to check how good tracking is.
Search
   can be used to disable displaying of rectangles which correspond to search areas of tracks.
   In some cases it helps to make the clip view cleaner to check how good tracking is.
   Only search areas for selected tracks will be displayed.
Pyramid
   makes the highest pyramid level be visible. Pyramids are defined later in the Tracking Settings panel section, but
   basically it helps to determine how much a track is allowed to move from one frame to another.
Track Path
   and *Length* control displaying of the paths of tracks. The ways tracks are moving can be visible looking
   at only one frame. It helps to determine if a track jumps from its position or not.
Disabled Tracks
   makes it possible to hide all tracks which are disabled on the current frame. This helps to make view more clear,
   to see if tracking is happening accurately enough.
Bundles
   makes sense after solving the movie clip,
   and it works in the following way: the solved position of each track gets
   projected back to the movie clip and displayed as a small point. The color of the point depends on the distance
   between the projected coordinate and the original coordinate: if they are close enough, the point is green,
   otherwise it'll be red. This helps to find tracks which weren't solved nicely and need to be tweaked.
Track Names and Status
   displays information such as track name and status of the track (if it's keyframed, disabled, tracked or
   estimated). Names and status for selected tracks are displayed.
Compact Markers
   The way in which markers are displayed (black outline and yellow foreground color)
   makes tracks visible on all kind
   of footage (both dark and light). But sometimes it can be annoying and this option will make the marker display
   more compactly - the outline is replaced by dashed black lines drawn on top of the foreground,
   so that marker areas
   are only 1px thick.
Grease pencil
   controls if grease pencil strokes are allowed to be displayed and made.
Mute
   changes displaying on movie frame itself with black square, It helps to find tracks which are tracked inaccurately
   or which weren't tracked at all.
Grid
   (available in distortion mode only) displays a grid which is originally orthographic, but os affected by the
   distortion model. This grid can be used for manual calibration - distorted lines of grids are equal to straight
   lines in the footage.
Manual Calibration
   (available in distortion mode only) applies the distortion model for grease pencil strokes. This option also helps
   to perform manual calibration. A more detailed description of this process will be added later.
Stable
   (available in reconstruction mode only). This option makes the displayed frame be affected by the 2D stabilization
   settings. It's only a preview option, which doesn't actually change the footage itself.
Lock to Selection
   makes the editor display selected tracks at the same screen position along the whole footage during playback or
   tracking. This option helps to control the tracking process and stop it when the track is starting to slide off or
   when it jumped.
Display Aspect Ratio
   changes the aspect ratio for displaying only. It does not affect the tracking or solving process.


Marker Panel
============

This panel contains numerical settings for marker position,
pattern and search area dimensions, and offset of anchor point from pattern center.
All sliders are self-explanatory.


.. _2D-stabilization:

2D Stabilization Panel
======================

.. figure:: /images/editors_movie-clip_2d_stabilization_panel.png
   :align: right
   :width: 130px

   2D Stabilization Panel.


There's one extra panel which is available in reconstruction mode - 2D Stabilization Panel.

This panel is used to define data used for 2D stabilization of the shot.
Several options are available in this panel.

First of all is the list of tracks to be used to compensate for camera jumps, or location.
It works in the following way: it gets tracks from the list of tracks used for location
stabilization and finds the median point of all these tracks on the first frame.
On each frame, the algorithm makes this point have the same position in screen coordinates by
moving the whole frame. In some cases it's not necessary to fully compensate camera jumps and
*Location Influence* can be used in such cases.

The camera can also have rotated a bit, adding some tilt to the footage.
There's the *Stabilize Rotation* option to compensate for this tilt.
A single extra track needs to be set for this, and it works in the following way.
On first frame of the movie, this track is connected with the median point of the tracks from
list above and angle between horizon and this segment is kept constant through the whole footage.
The amount of rotation applied to the footage can be controlled by *Rotation Influence*.

If the camera jumps a lot, there'll be noticeable black areas near image boundaries.
To get rid of these black holes, there's the *Autoscale* option,
which finds smallest scale factor which, when applied to the footage,
would eliminate all the black holes near the image boundaries.
There's an option to control the maximal scale factor *Maximal Scale*,
and the amount of scale applied to the footage *Scale Influence*.


Grease Pencil Panel
===================

It's a standard grease pencil panel where new grease pencil layers and frames can be controlled.
There's one difference in the behavior of the grease pencil from other areas -
when a new layer is created "on-demand" (when making a stroke without adding a layer before this)
the default color for the layer is set to pink. This makes the stroke easy to notice on all kinds of movies.
