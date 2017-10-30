
******
Marker
******

Marker Display
==============

Pattern
   Can be used to disable displaying of rectangles which correspond to pattern areas of tracks.
   In some cases it helps
   to make the clip view cleaner to check how good tracking is.
Search :kbd:`Alt-S`
   Can be used to disable displaying of rectangles which correspond to search areas of tracks.
   In some cases it helps to make the clip view cleaner to check how good tracking is.
   Only search areas for selected tracks will be displayed.
Path
   And *Length* control displaying of the paths of tracks. The ways tracks are moving can be visible looking
   at only one frame. It helps to determine if a track jumps from its position or not.
Disabled :kbd:`Alt-D`
   Makes it possible to hide all tracks which are disabled on the current frame.
   This helps to make view more clear, to see if tracking is happening accurately enough.
Info
   Displays information such as track name and status of the track
   (if it is keyframed, disabled, tracked or estimated).
   Names and status for selected tracks are displayed.
3D Markers
   Makes sense after solving the movie clip,
   and it works in the following way: the solved position of each track gets
   projected back to the movie clip and displayed as a small point. The color of the point depends on the distance
   between the projected coordinate and the original coordinate: if they are close enough, the point is green,
   otherwise it will be red. This helps to find tracks which were not solved nicely and need to be tweaked.
Thin
   The way in which markers are displayed compact (black outline and yellow foreground color)
   makes tracks visible on all kind of footage (both dark and light).
   But sometimes it can be annoying and this option will make the marker display
   more compactly -- the outline is replaced by dashed black lines drawn on top of the foreground,
   so that marker areas are only 1px thick.


Marker Panel
============

.. figure:: /images/editors_movie-clip-editor_tracking_clip_properties_marker_parameter.svg
   :width: 350px
   :align: center

   Marker schematic.

This panel contains numerical settings for marker position,
pattern and search area dimensions, and offset of anchor point from pattern center.
All sliders are self-explanatory.
